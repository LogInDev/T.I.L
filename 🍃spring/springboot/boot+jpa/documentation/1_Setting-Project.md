---
sticker: emoji//261d-fe0f
---
# 프로젝트 생성
- [스프링 부트 스타터(https://start.spring.io/)](https://start.spring.io/)
- springframework.boot 3.3.2(java17)
- groupId : jpabook
- arifactId : japshop
- web, lombok, jpa, thymeleaf, h2

## 롬북 적용
1. `Preferences` -> `plugin` -> `lombok` 검색 실행(재시작)
2. `Preferences` -> `Annotation Processors` -> `Enable annotation processing` 체크(재시작)
3. 임의의 클래스를 만들고 `@Getter`, `@Setter` 설정 후 확인

## 스프링부터 3.2이상 부터는 JDK 17과 Gradle 옵션 선택
- 스프링 부트 3.2 부터 JDK 17 이상과, 빌드시 IntelliJ IDEA가 아니라 Gradle을 선택해야 한다.
- `Mac` : `File` -> `Project Structure`
- `Windows` : `File` -> `Project Structure`
		![](🍃spring/springboot/boot+jpa/documentation/img/part_1/1-1.png)
- `Preferences` -> `Build, Execution, Deployment` -> `Build Tools` -> `Gradle`
		![](🍃spring/springboot/boot+jpa/documentation/img/part_1/1-2.png)
		Gradle JVM을 새로 설치한 자바 17 또는 그 이상으로 지정합니다.

## JUnit4 추가
- build.gradle에 있는 다음 부부에 꼭 직접 추가하세요.
- 아래 코드를 입력하지 않으면 자동적으로 JUnit5로 동작합니다.
```gradle
//JUnit4 추가
testImplementation("org.junit.vintage:junit-vintage-engine") {
	exclude group: "org.hamcrest", module: "hamcrest-core"
}
```

# 라이브러리 살펴보기
## gradle 의존관계 보기
```powershell
./gradlew dependencies
./gradlew dependencies -configuration compileClasspath
```

## 스프링 부트 라이브러리 살펴보기
- `spring-boot-starter-web`
	- `spring-boot-starter-tomcat` : 톰캣(웹서버)
	- `spring-webmvc` : 스프링 웹 MVC
- `spring-boot-starter-thymeleaf` : 타입리프 템플릿 엔진(View)
- `spring-boot-starter-data-jpa`
	- `spring-boot-starter-aop`
	- `spring-boot-starter-jdbc`
		- HikariCP 커넥션 풀(부트 2.0 기본)
	- `hibernate` + JPA : 하이버네이트 + JPA
	- `spring-data-jpa` : 스프링 데이터 JPA
- `spring-boot-starter`(공통) : 스프링 부트 + 스프링 코어 + 로깅
	- `spring-boot`
		- `spring-core`
	- `spring-boot-starter-logging`
		- `logback`, `slf4j`

## 테스트 라이브러리
- `spring-boot-starter-test`
	- `junit` : 테스트 프레임워크
	- `mockito` : 목 라이브러리
	- `assertj` : 테스트 코드를 좀 더 편하게 작성하게 도와주는 라이브러리
	- `spring-test` : 스프링 통합 테스트 지원
- 핵심 라이브러리
	- 스프링 MVC
	- 스프링 ORM
	- JPA, 하이버네이트
	- 스프링 데이터 JPA
- 기타 라이브러리
	- H2 데이터베이스 클라이언트
	- 커넥션 풀 : 부트 기본은 HikariCP
	- WEB(thymeleaf)
	- 로깅 SLF4J & LogBack
	- 테스트

# View 환경 설정
스프링 부트 thymeleaf viewName 매핑 - `@Contoller`에 메소드의 리턴값에 아래 세팅이 자동으로 적용됨
- `resource:templates/` + {ViewName} + `.html`

`jpabook.jpashop.HelloController.java`
```java
@Controller
public class HelloController {

	@GetMapping("hello")  
	public String hello(Model model) {  
	    model.addAttribute("data", "hello!!!");  
	    return "hello"; // 화면 이름 - 자동으로 .html이 붙음.  
	}
}
```

`resources/templates/hello.html`(thymeleaf 템플릿엔진 동작 확인용)
```html
<!DOCTYPE html>  
<html xmlns:th="http://www.thymeleaf.org">  
<head>  
  <title>Hello</title>  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
</head>  
<body>  
<p th:text="'이랏샤이마센. ' + ${data}" >안녕하세요. 손님</p>  
</body>  
</html>
```

`resources/static/index.html`
```html
<!DOCTYPE html>  
<html xmlns:th="http://www.thymeleaf.org">  
<head>  
    <title>Hello</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
</head>  
<body>  
Hello  
<a href="/hello">hello</a>  
</body>  
</html>
```

>💡 `spring-boot-devtools`라이브러리를 추가하면, html 파일을 컴파일만 해주면 서버 재시작 없이 View 파일 변경이 가능하다.
>(로그에 `restartedMain`이라는 문구가 뜨면 `spring-boot-devtools`로 잘 시작된 것)


# H2 데이터 베이스 설치
>개발이나 테스트 용도로 가볍고 편리한 DB, 웹 화면 제공

[https://www.h2database.com](https://www.h2database.com)
- 다운로드 및 설치
	- 스프링 부트 2.x를 사용하면 1.4.200 버전을 다운로드 받으면 된다.
	- 스프링 부트 3.x를 사용하면 2.1.214 버전 이상을 사용해야 한다.
- 데이터베이스 파일 생성 방법
	- `jdbc:h2:~/jpashop`(최소 한번) : 파일 생성시 권한도 있어야해서 세션을 물고 로그인을 해야함. 처음에 db파일 생성할 때만 파일모드로 접근
	- `~/jpashop.mv.db` 파일 생성 확인
	- 파일 생성이후 부터는 `jdbc:h2:tcp://localhost/~/jpashop`으로 접속.

>💡 H2 데이터베이스의 MVCC 옵션은 H2 1.4.198 버전부터 제거되었습니다. 최신 버전에서는 MVCC 옵션을 사용하면 오류가 발생하니 제거해주세요.


# JPA와 DB 설정, 동작확인

`resources/application.yml`
```yml
spring:  
  datasource:  
    url: jdbc:h2:tcp://localhost/~/jpashop  
    username: sa  
    password:  
    driver-class-name: org.h2.Driver  
  
  jpa:  
    hibernate:  
      ddl-auto: create  
    properties:  
      hibernate:  
#        show_sql: true  
        format_sql: true  
  
logging:  
  level:  
    org.hibernate.SQL: debug  
#    org.hibernate.orm.jdbc.bind: trace
```
- `spring.jpa.hibernate.ddl-auto: create`
	- 애플리케이션 실행 시점에 테이블을 drop하고 다시 생성한다.

> 💡 모든 로그 출력은 가급적 logger를 통해 남겨야 한다.
> - `show_sql: true` 옵션은 `System.out`에 하이버네이트 실행 SQL을 남긴다.
> - `org.hibernate.SQL: debug` 옵션은 logger를 통해 하이버네이트 실행 SQL을 남긴다.

>⛔️ `application.yml`같은 yml 파일은 띄어쓰기(스페이스) 2칸으로 계층을 만듭니다. 따라서 띄어쓰기 2칸을 필수로 적어줘야 합니다.


## 실제 동작하는지 확인하기

**회원 엔티티** - `Member.java`
```java
package jpabook.jpashop;  
  
import jakarta.persistence.Entity;  
import jakarta.persistence.GeneratedValue;  
import jakarta.persistence.Id;  
import lombok.Getter;  
import lombok.Setter;  
  
@Entity  
@Getter @Setter  
public class Member {  
    @Id  
    @GeneratedValue    
    private Long id;  
    private String username;  
}
```

**회원 리포지토리** - `MemberRepository.java`
```java
package jpabook.jpashop;  
  
import jakarta.persistence.EntityManager;  
import jakarta.persistence.PersistenceContext;  
import org.springframework.stereotype.Repository;  
  
@Repository  
public class MemberRepository {  
  
    @PersistenceContext  
    private EntityManager em;  
  
    public Long save(Member member) {  
        em.persist(member);  
        return member.getId();  
    }  
  
    public Member find(Long id) {  
        return em.find(Member.class, id);  
    }  
}
```
- `@Repository` 
	- Entity를 찾아주는 것. DAO랑 비슷함.
	- `@Component` Scan의 대상이 되는 annotation 중 하나
- `@PersistenceContext  private EntityManager em;`
	- `springboot-starter-jpa`에서 factory등 다 생성해줌(다른 설정 필요 없음.)
	- `EntityManager`를 통한 모든 데이터변경은 항상 `Transaction` 안에서 이루어져야 함.
- `public Long save(Member member){}` - 저장된 Member를 반환하지 않고 Id를 반환하는 이유
	- `comment와 쿼리를 분리해라!` - Side Effect를 일으키는 커멘드셩이기 때문에 리턴값을 거의 안 만들지만 Id 정도 있으면 조회는 가능하니 Id 정도만 리턴.


## 테스트

`MemberRepositoryTest.java`
```java
package jpabook.jpashop;  
  
import org.assertj.core.api.Assertions;  
import org.junit.jupiter.api.Test;  
import org.junit.jupiter.api.extension.ExtendWith;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.test.annotation.Rollback;  
import org.springframework.test.context.junit.jupiter.SpringExtension;  
import org.springframework.transaction.annotation.Transactional;  
  
@ExtendWith(SpringExtension.class)  
@SpringBootTest  
class MemberRepositoryTest {  
  
    @Autowired MemberRepository memberRepository;  
  
    @Test  
    @Transactional    
    @Rollback(false)  
    public void testMember() throws Exception{  
        //given  
        Member member = new Member();  
        member.setUsername("memberA");  
  
        //when  
        Long savedId = memberRepository.save(member);  
        Member findMember = memberRepository.find(savedId);  
  
        //then  
        Assertions.assertThat(findMember.getId()).isEqualTo(member.getId());  
        Assertions.assertThat(findMember.getUsername()).isEqualTo(member.getUsername());  
        Assertions.assertThat(findMember).isEqualTo(member);  
        System.out.println("findMember == member = " + (findMember == member));  
    }  
}
```
- `@Transactional` 
	- `jakarta`에서 제공하는 것과 `springframework`에서 제공하는 두가지가 있는데 `sringframework`의 `@Transactional`을 사용하는 것을 권장함(더 기능이 많음)
- `@Rollback(false)`
	- `@Transactional`이 Test클래스에 있으면 테스트를 다 하고 Rollback을 함. 따라서 test했던 내용은 db에 저장되지 않음. 
	- `false`로 따로 설정해 주면 test했던 내용이 db에 저장됨.

>💡 스프링 부트를 통해 복작한 설정이 다 자동화 되었다. `persistence.xml`도 없고, `LocalContainerEntityManagerFacoryBean`도 없다. 스프링 부트를 통한 추가 설정은 스프링 부트 메뉴얼을 참고하자.


## 쿼리 파라미터 로그 남기기
SQL 실행 파라미터를 로그로 남긴다. - 파라미터 타입은 나오지만 정확한 파라미터 내용은 출력되지 않음.
- 스프링 부트 2.x, hibernate5
	- `org.hibernate.type: trace`
- 스프링 부터 3.x, hibernate6
	- `org.hibernate.orm.jdbc.bind: trace`

외부라이브러리 사용
- [https://github.com/gavlyukovskiy/spring-boot-data-source-decorator](https://github.com/gavlyukovskiy/spring-boot-data-source-decorator)
- `implementation 'com.github.gavlyukovskiy:p6spy-spring-boot-starter:1.9.0`  
- 스프링 부트 3.0 이상 사용시 1.9.0이상 버전을 사용해야함.

>💡 gradle 작성 시 스프링 부트 2.1.7이상 버전은 해당 버전에 맞는 라이브러리 버전을 다 세팅해 주지만 spring에서 지원하지 않는 라이브러리는 직접 버전을 적용해줘야 한다. 

>💡 쿼리 파라미터를 로그로 남기는 외부 라이브러리는 시스템 자원을 사용하므로, 개발 단계에서는 편하게 사용해도 되지만, 운영시스템에 적용하려면 꼭 성능테스트를 하고 사용하는 것이 좋다.



