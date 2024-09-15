구현 기능
- 회원 등록
- 회원 목록 조회

순서
- 회원 엔티티 코드 다시 보기
- 회원 리포지토리 개발
- 회원 서비스 개발
- 회원 기능 테스트

# 회원 리포지토리 개발
```java
package jpabook.jpashop.repository;  
  
import jakarta.persistence.EntityManager;  
import jakarta.persistence.PersistenceContext;  
import jpabook.jpashop.domain.Member;  
import lombok.RequiredArgsConstructor;  
import org.springframework.stereotype.Repository;  
  
import java.util.List;  
  
@Repository  
@RequiredArgsConstructor  
public class MemberRepository {  
  
//    @PersistenceContext  
    private final EntityManager em;  
  
    public void save(Member member) {  
        em.persist(member);  
    }  
  
    public Member findOne(Long id) {  
        return em.find(Member.class, id);  
    }  
  
    public List<Member> findAll() {  
        return em.createQuery("select m from Member m", Member.class)  
                .getResultList();  
    }  
  
    public List<Member> findByName(String name) {  
        return em.createQuery("select m from Member m where m.name = :name", Member.class)  
                .setParameter("name", name)  
                .getResultList();  
    }  
}
```
- `@Repository` : 스프링 빈으로 등록(`@Component` 스캔의 대상 중 하나). JPA 예외를 스프링 기반 예외로 예외 변환
- `@PersistenceContext` : 엔티티 메니저(`EntityManager`) 주입 
- `@PersistenceUnit` : 엔티티 메니저 팩토리(`EntityManagerFactory`) 주입

>💡 스프링 데이터 JPA를 사용하면  표준 어노테이션인`@PersistenceContext`가 아니여도 `@Autowired`를 통해 주입 가능


# 회원 서비스 개발
```java
package jpabook.jpashop.service;  
  
import jpabook.jpashop.domain.Member;  
import jpabook.jpashop.repository.MemberRepository;  
import lombok.RequiredArgsConstructor;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Service;  
import org.springframework.transaction.annotation.Transactional;  
  
import java.util.List;  
  
@Service  
@Transactional(readOnly = true)  
@RequiredArgsConstructor  
public class MemberService {  
  
    private final MemberRepository memberRepository;  
  
    /**  
     * 회원 가입  
     */  
    @Transactional  
    public Long join(Member member) {  
        validateDuplicateMember(member);  
        memberRepository.save(member);  
        return member.getId();  
    }  
  
    /**  
     * 중복 회원인지 여부에 따라 체크  
     * 중복 회원이면 예외 터트림.  
     *     * @param member  
     */  
    private void validateDuplicateMember(Member member) {  
        List<Member> findMembers = memberRepository.findByName(member.getName());  
        if (!findMembers.isEmpty()) {  
            throw new IllegalStateException("이미 존재하는 회원입니다.");  
        }  
    }  
  
    //회원 전체 조회  
    public List<Member> findMembers(){  
        return memberRepository.findAll();  
    }  
  
    public Member findOne(Long memberId) {  
        return memberRepository.findOne(memberId);  
    }  
  
}
```
- `@Service` : `@Component`스캔의 대상
- `@Transactional` : 트랜잭션, 영속성 컨텍스트.(java에서 제공하는 것보다는 springframwork에서 제공하는 걸 추천 - 더 기능이 많음)
	- `readOnly=true` : 데이터의 변경이 없는 읽기 전용 메서드에 사용. 영속성 컨텍스트를 플러시 하지 않으므로 약간의 성능 향상(읽기 전용에는 다 적용) - default
	- 데이터베이스 드라이버가 지원하면 DB에서 성능 향상
- `@Autowired`
	- 생성자 Injection 많이 사용. 생성자가 하나면 생략 가능

>💡 실무에서는 검증 로직이 있어도 멀티 쓰레드 상황을 고려해서 회원 테이블의 회원명 컬럼에 유니크 제약 조건을 추가하는 것이 안전하다.


>💡 **스프링 필드 주입 대신에 생성자 주입을 사용하자**
>**필드 주입**
>```java
>public class MemberService {
>	@Autowired
>	MemberRepository memberRepository;
>	...
>}
> ```
> **생성자 주입**
> ```java
> public class MemberService {
> 	private final MemberRepository memberRepository;
> 	public MemberService(MemberRepository memberRepository){
> 		this.memberRepository = memberRepository;
> 	}
> }
>```
>- 생성자 주입 방식을 권장
>- 변경 불가능한 안전한 객체 생성 가능
>- 생성자가 하나면, `@Autowired`를 생략할 수 있다.
>- `final` 키워드를 추가하면 컴파일 시점에 `memberRepository`를 설정하지 않는 오류를 체크할 수 있다.(보통 기본 생성자를 추가할 때 발견)
>**lombok**
>```java
>@RequiredArgsConstructor
>public class MemberService{
>	private final MemberRepository memberRepository;
>}
>@Repository
>@RequiredArgsConstructor
>public class MemberRepository{
>	private final EntityManager em;
>}
>```
>

# 회원 기능 테스트
테스트 요구사항
- 회원가입을 성공해야 한다.
- 회원가입 할 때 같은 이름이 있으면 예외가 발생해야 한다.

```java
package jpabook.jpashop.service;  
  
import jakarta.persistence.EntityManager;  
import jpabook.jpashop.domain.Member;  
import jpabook.jpashop.repository.MemberRepository;  
import org.assertj.core.api.Assertions;  
import org.junit.jupiter.api.Test;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.transaction.annotation.Transactional;  
  
import static org.assertj.core.api.Assertions.assertThat;  
  
@SpringBootTest  
@Transactional  
class MemberServiceTest {  
  
    @Autowired  
    MemberService memberService;  
    @Autowired  
    MemberRepository memberRepository;  
    @Autowired  
    EntityManager em;  
  
    @Test  
    public void 회원가입() throws Exception {  
        //given  
        Member member = new Member();  
        member.setName("kim");  
  
        //when  
        Long savedId = memberService.join(member);  
  
        //then  
        em.flush();  
        assertThat(member).isEqualTo(memberRepository.findOne(savedId));  
    }  
  
    @Test  
    public void 중복_회원_예외() throws Exception {  
        //given  
        Member member1 = new Member();  
        member1.setName("kim");  
  
        Member member2 = new Member();  
        member2.setName("kim");  
  
        //when  
        memberService.join(member1);  
  
        //then  
        Assertions.assertThatThrownBy(() -> memberService.join(member2))  
                .isInstanceOf(IllegalStateException.class)  
                .hasMessage("이미 존재하는 회원입니다."); // 예외가 발생해야 한다!!  
    }  
  
}
```
- `@ExtendWith(SpringExtension.class)` : JUnit5부터 사용. `@SpringBootTest`에 다포함되어 있어 따로 선언할 필요없음.
- `@SpringBootTest` : 스프링 부트 띄우고 테스트(이게 없으면 `@Autowired` 다 실패)
- `@Transactional` : 반복 가능한 테스트 지원, 각각의 테스트를 실행할 때마다 트랜잭션을 시작하고 테스트가 끝나면 트랜잭션을 강제로 롤백(해당 어노테이션이 테스트 케이스에서 사용될 경우에만 롤백) -  `@Rollback(false)` 설정을 통해 실제 db에 저장하거나 쿼리만 보고싶으면 assert하기 전에 `em.flush()`를 실행하여 실행 쿼리를 볼 수 있다.

# 테스트 케이스를 위한 설정
테스트는 케이스 격리된 환경에서 실행하고, 끝나면 데이터를 초기화하는 것이 좋다. 그런 면에서 메모리 DB를 사용하는 것이 가장 이상적이다.
추가로 테스트 케이스를 위한 스프링 환경과, 일반적으로 애플리케이션을 실행하는 환경은 보통 다르므로 설정 파일을 다르게 사용하자.

## 테스트 케이스 설정 파일 적용
`test/resource/application.yml`
```yml
spring:  
#  datasource:  
#    url: jdbc:h2:tcp://localhost/~/jpashop  
#    username: sa  
#    password:  
#    driver-class-name: org.h2.Driver  
#  
#  jpa:  
#    hibernate:  
#      ddl-auto: create  
#    properties:  
#      hibernate:  
##        show_sql: true  
#        format_sql: true  
  
logging:  
  level:  
    org.hibernate.SQL: debug  
#    org.hibernate.orm.jdbc.bind: trace
```
위에처럼 전체를 주석처리하거나 [https://www.h2database.com/html/main.html](https://www.h2database.com/html/main.html)해당 링크에 들어가 `Cheat Sheet`에서 In-Memory용 url(`jdbc:h2:mem:test`)을 적용하면 WAS가 종료되면 모든 데이터가 제거된다.

스프링 부트는 datasource 설정이 없으면, 기본적으로 메모리 DB를 사용하고, driver-class도 현재 등록된 라이브러리를 보고 찾아준다. 추가로 `ddl-auto`도 `create-drop`모드로 동작한다. 따라서 데이터소스나, JPA 관련된 별도의 추가 설정을 하지 않아도 된다.

>💡 `ddl-auto` 설정
> `create` : 현재 db에 있는 것을 다 drop하고 create함.
> `create-drop` : `create`과 똑같이 동작하고 마지막 애플리케이션 종료 시점에 drop 함.
















