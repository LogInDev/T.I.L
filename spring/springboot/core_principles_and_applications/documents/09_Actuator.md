# 프로덕션 준비 기능이란
> 전투에서 실패한 지휘관은 용서할 수 있지만 경계에서 실패하는 지휘관은 용서할 수 없다.

서비스를 운영하는 개발자에게는 언제든 장애가 발생할 수 있다. 하지만 모니터링(경계)은 잘 대응하는 것이 중요하다.

운영 환경에서 서비스할 때 필요한 기능들을 `프로덕션 준비 기능`이라 한다. 즉, 프로덕션을 운영에 배포할 때 준비해야 하는 비 기능적 요소들을 뜻한다.
- 지표(metric), 추적(trace), 감사(auditing)
- 모니터링
구체적으로 설명하자면, 애플리케이션이 현재 동작중인지, 로그 정보는 정상 설정 되었는지, 커넥션 풀은 얼마나 사용되고 있는지 등을 확인해야 한다.

**스프링 부트가 제공하는 `actuator`는 이런 프로덕션 준비 기능을 매우 편리하게 사용할 수 있는 다양한 편의 기능들을 제공한다.** 
더 나아가서 마이크로미터, 프로네테우스, 크라파나 같은 최근 유행하는 모니터링 시스템과 매우 쉽게 연동할 수 있는 기능도 제공한다.

> Actuator란?
> - 시스템을 움직이거나 제어하는데 쓰이는 기계 장치.

<br>

---
# 프로젝트 설정
- 프로젝트 스펙
	- Spring Boot 3.4.1 - Gradle
	- mysqlDB 
(YAML 코드만 제공합니다.)

기존 프로젝트에 `actuator` 기능을 추가하려면 dependencies만 추가하면 된다.
```gradle
implementation 'org.springframework.boot:spring-boot-starter-actuator'  // actuator 추가
```

- 위 코드를 `build.gradle`에 추가
- http://localhost:8080/actuator 실행
```json
{
	"_links": {
		 "self": {
			 "href": "[http://localhost:8080/actuator](http://localhost:8080/actuator)",
			 "templated": false
		 },
		 "health": {
			 "href": "[http://localhost:8080/actuator/health](http://localhost:8080/actuator/health)",
			 "templated": false
		 },
		 "health-path": {
			 "href": "[http://localhost:8080/actuator/health/{*path}](http://localhost:8080/actuator/health/%7B*path%7D)",
			 "templated": true
		 }
	 }
 }
```
이렇게 출력되면 actuator가 잘 실행된 것이다.

<br>

# Actuator 기능을 웹에 노출
actuator는 `health` 외에도 더 많은 기능을 제공하는데, 이런 기능을 웹 환경에서 보기 위해서는 노출을 위한 설정이 필요하다.

## 엔드포인트 설정
엔드포인트를 사용하려면 다음 2가지 과정이 모두 필요하다.
1. 엔드포인트 활성화
2. 엔드포인트 노출

**엔드포인트를 활성화한다**라는 것은 해당 기능 자체를 사용할지 말지 `on`, `off`를 설정하는 것이다. 따라서, 활성화를 하지 않으면 노출도 없다.

**엔드포인트를 노출**하는 것은 활성화된 엔드포인트를 HTTP에 노출할 지 JMX에 노출할 지 선택하는 것이다. 엔드포인트를 활성화하고 추가로 HTTP를 통해 웹에 노출할 지, JMX를 통해 노출할 지 두 위치 모두에 노출할 지 노출 위치를 지정해 주어야 한다.

**엔드포인트는 대부분 Default가 활성화이다.**(shutdown 제외) 단지, 노출이 되어 있지 않을 뿐이다.
따라서 어떤 엔드포인트를 노출할 지 선택하면 된다.

**accplication.yml - 추가**
```yml
management: # Actuator 설정  
    endpoints:  
        web:  
            exposure:  
                include: "*"
```
`*` 옵션은 모든 엔드포인트를 웹에 노출하는 것이다. (ps. `shutdown` 엔드포인트는 기본으로 활성화 되지 않기 때문에 노출 되지 않는다.)

**동작 확인**
- 기본 메인 클래스 실행
- http://localhost:8080/actuator 실행

처음 실행 했을 때 보다 더 많은 링크를 볼 수 있다. 
해당 링크들은 actuator가 제공하는 기능들의 **엔드포인트**이다. 

각각의 엔드포인트는 `/actuator/{엔드포인트명}` 형식으로 접근할 수 있다.
- `http://localhost:8080/actuator/health` : 애플리케이션 헬스 정보를 보여준다.
- `http://localhost:8080/actuator/beans` : 스프링 컨테이너에 등록된 빈을 보여준다.

<br>

# 특정 엔드포인트 접근 제어 - Spring Boot 버전 2.0부터 변경
`shutdown` 엔드포인트는 기본적으로 활성화되는 기능에 포함되지 않기 때문에 따로 활성화를 한 뒤 노출되어야 사용할 수 있다.

**application.yml - shutdown 엔드포인트 활성화**
```yml
management: # Actuator 설정  
    endpoint:  
      shutdown:  
          access: unrestricted  
    endpoints:  
        web:  
            exposure:  
                include: "*"
```

Postman을 사용하여 `POST`로 http://localhost:8080/actuator/shutdown을 호출하면 다음 메시지와 함께 실제 서버가 종료되는 것을 확인할 수 있다.
(`shutdown`의 경우 `GET`으로 http://localhost:8080/actuator/shutdown 을 호출하면 405에러가 발생한다. - 보안상 주의를 요하는 기능이므로 기본으로 비활성화 되어 있음.)
```json
{
	"message": "Shutting down, bye..."
}
```

>**Actuator 엔드포인트 접근 제어 방식 변경**
> 이전 버전에서는 엔드포인트 활성화 여부를 `management.endpoint.{엔드포인트명}.enabled` 속성으로 제어했지만, Spring Boot 버전 2.0부터는 엔드포인트의 접근 수준을 설정하기 위해 `management.endpoint.{엔드포인트명}.access` 속성을 사용한다.
> - `none`(default) : 엔드포인트에 대한 모든 접근을 차단한다.
> - `unrestricted` : 엔드포인트에 대한 제한 없는 접근을 허용한다.
> - `read-only` : 엔드포인트에 대한 읽기 전용 접근만 허용한다.
> 	- `@ReadOperation`으로 정의된 엔드포인트 메서드만 사용할 수 있다.
> 	- HTTP 엔드포인트의 경우, `GET`, `HEAD` 요청만 처리된다.
> 	- 쓰기 작업(`POST`, `PUT`, `DELETE`)은 혀옹되지 않는다.


## 엔드포인트 노출
[스프링 공식 메뉴얼](https://docs.spring.io/spring-boot/reference/actuator/endpoints.html#actuator.endpoints)이 제공하는 예제를 통해서 엔드포인트 노출 설정을 알아보자.

**JMX에 `health`, `info`를 노출한다.**
```yml
management:
  endpoints:
    jmx:
      exposure:
        include: "health,info"
```

**WEB에 모든 엔드포인트를 노출하지만 `env`, `beans`는 제외한다.**
```yml
management:
  endpoints:
    web:
      exposure:
        include: "*"
        exclude: "env,beans"
```


<br>

---
# 다양한 엔드포인트
각각의 엔드포인트를 통해서 개발자는 애플리케이션 내부의 수 많은 기능을 관리하고 모니터링 할 수 있다. 다음은 스프링 부트가 기본으로 제공하는 다양한 엔트포인트 중 자주 사용하는 기능 위주로 정리된 것이다.

**엔드포인트 목록**
- `beans` : 스프링 컨테이너에 등록된 스프링 빈을 보여준다.
- `conditions` : `condition`을 통해서 빈을 등록할 때 평가 조건과 일치하거나 일치하지 않는 이유를 표시한다.
- `configprops` : `@ConfigurationsProperties`를 보여준다.
- `env` : `Environment` 정보를 보여준다.
- `health` : 애플리케이션 헬스 정보를 보여준다.
- `httpexchanges` : HTTP 호출 응답 정보를 보여준다. `HttpExchangeRepository`를 구현한 빈을 별도로 등록해야 한다.
- `info` : 애플리케이션 정보를 보여준다.
- `loggers` : 애플리케이션 로거 설정을 보여주고 변경도 할 수 있다.
- `metrics` : `@RequestMapping` 정보를 보여준다.
- `threaddump` : 스레드 덤프를 실행해서 보여준다.
- `shutdown` : 애플리케이션을 종료한다. 이 기능은 기본으로 비활성화 되어 있다. 

> **전체 엔드포인트는 공식 메뉴얼 참고**
> - https://docs.spring.io/spring-boot/docs/current/reference/html/actuator.html#actuator.endpoints

<br>

---
# `health`
> 헬스 정보를 사용하면 애플리케이션에 문제가 발생했을 때 문제를 빠르게 인지할 수 있다.
> (http://localhost:8080/actuator/health)

### 기본 동작
```json
{"status": "UP"}
```

헬스 정보는 단순히 애플리케이션이 요청에 응답을 할 수 있는지 판단하는 것을 넘어서 애플리케이션이 사용하는 데이터베이스가 응답하는지, 디스크 사용량에는 문제가 없는지 같은 다양한 정보들을 포함해서 만들어진다.

### 헬스 상세 정보 확인
#### show-details 
헬스 정보를 더 자세히 보려면 추가적인 옵션 설정이 필요하다.
```yml
management: # Actuator 설정  
    endpoint:  
      health:  
          show-details: always
```

다시 http://localhost:8080/actuator/health 로 가보면 보다 상세한 정보를 확인할 수 있다.
**show-details 옵션**
```json
{
	"status": "UP",
	"components": {
		"db": {
			"status": "UP",
			"details": {
				"database": "MySQL",
				"validationQuery": "isValid()"
			}
		},
		"diskSpace": {
			"status": "UP",
			"details": {
				"total": 994662584320,
				"free": 897198911488,
				"threshold": 10485760,
				"path": "[/Users/g.u/LogInDev/side-project/SkiRank/.](http://localhost:8080/Users/g.u/LogInDev/side-project/SkiRank/)",
				"exists": true
			}
		},
		"ping": {
			"status": "UP"
		},
		"ssl": {
			"status": "UP",
			"details": {
				"validChains": [],
				"invalidChains": []
			}
		}
	}
}
```

너무 자세한 출력을 원하는게 아니라면 `show-details` 대신에 `show-components` 옵션을 사용하면 된다.

#### show-components
```yml
management: # Actuator 설정  
    endpoint:  
      health:  
          show-components: always
```

**show-components 옵션**
```json
{
	"status": "UP",
	"components": {
		"db": {
			"status": "UP"
		},
		"diskSpace": {
			"status": "UP"
		},
		"ping": {
			"status": "UP"
		},
		"ssl": {
			"status": "UP"
		}
	}
}
```
각 헬스 컴포넌트의 상태 정보만 간략하게 노출한다.


### 헬스 이상 상태
헬스 컴포넌트 중에 하나라도 문제가 있으면 전체 상태는 `DOWN`이 된다.
```json
{
	"status": "DOWN",
	"components": {
		"db": {
			"status": "DOWN"
		},
		"diskSpace": {
			"status": "UP"
		},
		"ping": {
			"status": "UP"
		},
		"ssl": {
			"status": "UP"
		}
	}
}
```
여기서는 `db`에 문제가 발생했다. 하나라도 문제가 있으면 `DOWN`으로 보기 때문에  이 경우 전체 상태의 `status`도 `DOWN`이 된다.

> ※ 참고 - 추가적인 헬스 기본 지원 기능 공식 메뉴얼
> - https://docs.spring.io/spring-boot/docs/current/reference/html/actuator.html#actuator.endpoints.health.auto-configured-health-indicators

>※ 참고 - 헬스 기능 직접 구현
>- https://docs.spring.io/spring-boot/docs/current/reference/html/actuator.html#actuator.endpoints.health.writing-custom-health-indicators


<br>

---
# 애플리케이션 정보
> `info` 엔드포인트는 애플리케이션의 기본 정보를 노출한다.

기본으로 제공하는 기능들은 다음과 같다.
- `java` : 자바 런타임 정보
- `os` : OS 정보
- `env` : `Environment`에서 `info.`로 시작하는 정보
- `build` : 빌드 정보, `META-INF/build-info.properties` 파일이 필요하다
- `git` : `git` 정보, `git.properties` 파일이 필요하다.

`env`, `java`, `os`는 기본으로 비활성화 되어 있다.

**실행**
http://localhost:8080/actuator/info
처음 실행하면 정보들이 보이지 않을 것이다. `java`, `os` 기능을 활성화 해보자.

#### java, os

**application.yml - 내용 추가**
```yml
management: # Actuator 설정  
    info:  
      java:  
          enabled: true  
      os:  
          enabled: true
```
- `management.info.<id>.enabled`의 값을 `true`로 지정하면 활성화 된다.

**주의!! Spring Boot 버전 2.0 미만은 `management` 바로 다음에 `info`가 나와야 정상 동작한다. - `management.endpoint` 하위 아님**
(Spring Boot 버전 2.0 이상부터는 위치 상관없이 정상 동작됨.)

**실행 결과**
http://localhost:8080/actuator/info
```json
{
	"java": {
		"version": "17.0.13",
		"vendor": {
			"name": "Amazon.com Inc.",
			"version": "Corretto-17.0.13.11.1"
		},
		"runtime": {
			"name": "OpenJDK Runtime Environment",
			"version": "17.0.13+11-LTS"
		},
		"jvm": {
			"name": "OpenJDK 64-Bit Server VM",
			"vendor": "Amazon.com Inc.",
			"version": "17.0.13+11-LTS"
		}
	},
	"os": {
		"name": "Mac OS X",
		"version": "15.2",
		"arch": "aarch64"
	}
}
```


#### env
> `Environment`에서 `info.`로 시작하는 정보를 출력한다.

**application.yml - 내용 추가**
```yml
management: # Actuator 설정  
    info:  
        java:  
            enabled: true  
        os:  
            enabled: true  
        env:  
            enabled: true  
  
info:  
    app:  
        name: snowHub  
        company: zestify
```
`management.info.env.enabled`를 추가하고, `info..`관련 내용을 추가했다.

**실행 결과**
http://localhost:8080/actuator/info
```json
{
	"app": {
		"name": "snowHub",
		"company": "zestify"
	},
(생략)...
```


#### build
> 애플리케이션의 기본 정보와 버전 그리고 빌드된 시간을 확인할 수 있다.

빌드 정보를 노출하려면 빌드 시점에 `META-INF/build-info.properties` 파일을 만들어야 한다.
`gradle`을 사용해서 다음 내용을 추가하면 된다.

**build.gradle - 빌드 정보 추가**
```gradle 
springBoot {  
    buildInfo()  
}
```
작성 후 빌드하면 `build` 폴더 안에 `resources/main/META-INF/build-info.properties`파일을 확인할 수 있다.

**실행 결과**
http://localhost:8080/actuator/info
```json
{
	"build": {
		"artifact": "SkiRank",
		"name": "SkiRank",
		"time": "2025-01-27T02:11:43.180Z",
		"version": "0.0.1-SNAPSHOT",
		"group": "com.zestify"
		},
(생략)...
```


#### git
> `git` 정보를 통해 빌드된 브랜치, commit id등의 내용을 알 수 있다.

`git` 정보를 노출하려면 `git.properties` 파일이 필요하다.

**build.gradle - git 정보 추가**
```gradle
plugins {  
	...
    id 'com.gorylenko.gradle-git-properties' version '2.4.1'   //git info  
}
```

물론 프로젝트가 `git`으로 관리되고 있어야 한다. 그렇지 않으면 빌드 시 오류가 발생한다.

빌드해보면 `build` 폴더 안에 `resources/main/git.properties` 파일을 확인할 수 있다.

**실행 결과**
http://localhost:8080/actuator/info
```json
{
	"git": {
		"branch": "main",
		"commit": {
			"id": "42971f2",
			"time": "2025-01-21T06:17:49Z"
		}
	},
(생략)...
```

`git`에 대한 더 자세한 정보를 보고 싶다면 다음 옵션을 적용하면 된다.
**application.yml 추가**
```yml
management: # Actuator 설정   
    info:  
        git:  
            mode: full
```


>※ 참고 `info` 사용자 정의 기능 추가를 위한 스프링 공식 메뉴얼
>- https://docs.spring.io/spring-boot/docs/current/reference/html/actuator.html#actuator.endpoints.info.writing-custom-info-contributors


<br>

---
# loggers

> `loggers` 엔드포인트를 사용하면 로깅과 관련된 정보를 확인하고, 또 실시간으로 변경할 수도 있다.

**LogController 생성**
```java
package hello.contoller;  
  
import org.springframework.web.bind.annotation.RestController;
import lombok.extern.slf4j.Slf4j;  
import org.springframework.web.bind.annotation.GetMapping;  
  
@Slf4j  
@RestController 
public class LogController {  
      
    @GetMapping("/log")  
    public String log() {  
        log.trace("trace");  
        log.debug("debug");  
        log.info("info");  
        log.warn("warn");  
        log.error("error");  
        return "ok";  
    }  
}
```
여러 레벨을 확인할 수 있는 단순한 컨트롤러이다.

**application.yml 설정**
```yml
logging:  
    level:  
        hello.controller: debug
```

**실행**
http://localhost:8080/log

**결과 로그**
```
2025-01-27T11:51:30.315+09:00 DEBUG 10713 --- [nio-8080-exec-2] hello.contoller.LogController      : debug
2025-01-27T11:51:30.315+09:00  INFO 10713 --- [nio-8080-exec-2] hello.contoller.LogController      : info
2025-01-27T11:51:30.315+09:00  WARN 10713 --- [nio-8080-exec-2] hello.contoller.LogController      : warn
2025-01-27T11:51:30.315+09:00 ERROR 10713 --- [nio-8080-exec-2] hello.contoller.LogController      : error
```
`debug`로 설정했음에도 `debug`부터 출력되지 않는다면 더 상위 설정을 `info`했을 경우가 있다. 상위 설정을 수정해야한다. 나같은 경우에는 `root`에 `debug` 옵션을 주니 `debug`부터 나왔다.

`loggers` 엔드포인트를 호출해보자

**실행**
http://localhost:8080/actuator/loggers

**실행 결과**
```json
{
	"levels": [
		"OFF",
		"ERROR",
		"WARN",
		"INFO",
		"DEBUG",
		"TRACE"
	],
(생략)...
```
- 로그를 별도로 설정하지 않으면 스프링 부트는 기본으로 `INFO`를 사용한다. 실행 결과를 보면 `ROOT`의 `configuredLevel`이 `INFO`인 것을 확인할 수 있다. 따라서 그 하위도 모두 `INFO` 레벨이 적용된다.

**더 자세히 조회하기**
다음과 같은 패턴을 사용해서 특정 로거 이름을 기준으로 조회할 수 있다.
`http://localhost:8080/actuator/loggers/{로거이름}`

**실행**
http://localhost:8080/actuator/loggers/hello.contoller

**결과**
```json
{
	"configuredLevel": "DEBUG",
	"effectiveLevel": "DEBUG"
}
```


## 실시간 로그 레벨 변경
개발 서버는 보통 `DEBUG` 로그를 사용하지만, 운영 서버는 요청이 많아서 `DEBUG`로 운영 시 성능이나 디스크에 영향을 주게 된다. 따라서 운영 서버는 중요하다고 판단되는 `INFO` 로그 레벨을 사용한다.

그런데 서비스 운영 중에 문제가 있어서 급하게 `DEBUG`나 `TRACE`  로그를 남겨서 확인해야 할 경우 어떻게 해야할까? 일반적으로는 로깅 설정을 변경하고, 서버를 다시 시작해야한다.

**`loggers` 엔드 포인트를 사용하면 애플리케이션을 다시 시작하지 않고, 실시간으로 로그 레벨을 변경할 수 있다.**

Postman을 켜고 아래 url을 POST로 요청해보자.(꼭! POST로 요청할 것.)
`POST` http://localhost:8080/actuator/loggers/hello.controller
POST로 전달하는 JSON - `content/type` : `application/json`
```json
{
	"configuredLevel" : "TRACE"
}
```
요청에 성공하면 `204` 응답이 온다.

GET으로 요청해서 확인해보면 `configuredLevel`이 `TRACE`로 변경된 것을 확인할 수 있다.
`GET` http://localhost:8080/actuator/loggers/hello.controller

**호출 결과**
```json
{
	"configuredLevel" : "TRACE",
	"effectiveLevel" : "TRACE"
}
```


<br>

---
# HTTP 요청 응답 기록
> HTTP 요청과 응답의 과거 기록을 확인하고 싶다면 `httpexchanges` 엔드포인트를 사용하면 된다.

`HttpExchangeRepository` 인터페이스의 구현체를 빈으로 등록하면 `httpexchanges` 엔드포인트를 사용할 수 있다.
**(주의! 해당 빈을 등록하지 않으면 `httpexchanges` 엔드포인트가 활성화 되지 않는다.)**

스프링 부트는 기본적으로 `InMemoryHttpExchangeRepository` 구현체를 제공한다.

**InMemoryHttpExchangeRepository 추가**
```java
@SpringBootApplication  
public class SkiRankApplication {  
  
    public static void main(String[] args) {  
       SpringApplication.run(SkiRankApplication.class, args);  
    }  
  
    @Bean  
    public InMemoryHttpExchangeRepository httpExchangeRepository(){  
       return new InMemoryHttpExchangeRepository();  
    }  
  
}
```
이 구현체는 최대 100개의 HTTP 요청을 제공한다. 최대 요청이 넘어가면 과거 요청을 삭제한다. `setCapacity()`로 최대 요청수를 변경할 수 있다.

**실행**
http://localhost:8080/actuator/httpexchanges

실행해보면 지금까지 실행한 HTTP 요청과 응답 정보를 확인할 수 있다.

참고로 이 기능은 매우 단순하고 기능에 제한이 많기 때문에 개발 단계에서만 사용하고, 실제 운영 서비스에서는 모니터링 툴이나 핀포인트, Zipkin 같은 다른 기술을 사용하는 것이 좋다.(영한쌤은 핀포인트 추천)


<br>

---
# Actuator와 보안
## 보안 필수
Actuator가 제공하는 기능들은 우리 애플리케이션의 내부 정보를 너무 많이 노출한다. 그래서 외부 인터넷 망이 공개된 곳에 액츄에이터의 엔드포인트를 공개하는 것은 보안상 좋은 방안이 아니다.

액츄에이터의 엔드포인트들은 외부 인터넷에서 접근이 불가능하게 막고, 내부에서만 접근 가능한 내부망을 사용하는 것이 안전하다.

### Actuator를 다른 포트에서 실행
예를 들어서 외부 인터넷 망을 통해서 8080 포트에만 접근할 수 있고, 다른 포트는 내부망에서만 접근할 수 있다면 Actuator에 다른 포트를 설정하면 된다.
Actuator의 기능을 애플리케이션 서버와는 다른 포트에서 실행하려면 다음과 같이 설정하면 된다.

**Actuator 포트 설정**
```yml
management:
	server:  
	    port: 9292
```

**실행**
http://localhost:9292/actuator

### Actuator URL 경로에 인증 설정
포트를 분리하는 것이 어렵고 어쩔 수 없이 외부 인터넷 망을 통해서 접근해야 한다면 `/actuator` 경로에 서블릿 필터, 또는 스프링 시큐리티를 통해서 인증된 사용자만 접근 가능하도록 추가 개발이 필요하다.

#### 엔드포인트 경로 변경
**application.yml**
```yml
management:
	endpoints:
		web:
			base-path: "/manage"
```
- `/actuator/{엔드포인트}` 대신에 `/manage/{엔드포인트}`로 변경된다.

<br><br><br><br><br>

**References**
- [스프링 부트 - 핵심 원리와 활용(김영한)](https://www.inflearn.com/course/%EC%8A%A4%ED%94%84%EB%A7%81%EB%B6%80%ED%8A%B8-%ED%95%B5%EC%8B%AC%EC%9B%90%EB%A6%AC-%ED%99%9C%EC%9A%A9/dashboard)
- [스프링 공식 메뉴얼](https://docs.spring.io/spring-boot/how-to/actuator.html#page-title)
- [ChatGPT](https://chatgpt.com/)