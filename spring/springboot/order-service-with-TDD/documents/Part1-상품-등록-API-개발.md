# 프로젝트 생성
- Name : product-order-service
- Language : Java
- Type : Gradle - Groovy
- Group : com.example
- Artifact : product-order-service
- Java : 17
- Packaging : Jar
- Added dependencies
	- Lombok
	- Spring Web
	- Spring Data JPA
	- H2 Database


# POJO 상품 등록 기능 구현하기
- `Adapter pattern`으로 진행
	- `ProductPort` 인터페이스를 `ProductAdapter`로 구현
- `private` 선언 : 외부에서 직접 접근할 수 없도록 접근 제어 
- `final` 선언 : 해당 필드는 생성자에서 반드시 초기화하고 이후에는 값을 변경할 수 없게 하여 객체가 생성된 후에 일관성을 유지할 수 있도록 보장함. 
	- `ProductService` 객체가 생성될 때  `productPort`가 반드시 초기화되어야 하며, 이후에는 변경될 수 없음을 보장한다. 이렇게 함으로써 `ProductService`의 상태가 일관되게 유지된다.
- `@BeforeEach` : 각 `@Test` 메소드 실행 이전에 실행할 코드
	- `setUp()` : `ProductRepository`, `ProductAdapter`, `ProductService` 를 초기화하여 테스트 환경 설정.
- `Product` : 상품 엔티티. 상품 id, 이름, 가격, 할인방식 필요
	- `assignId(Long id)` : 각 상품을 구별할 고유식별 ID
	- `Long getId()` : 상품 ID정보를 return
- `AddProductRequest` : 상품 등록 api request 시 받을 정보
- `ProductService` : 비즈니스 로직. 
	- `addProduct(AddProductRequest request)` : 요청 시 받은 정보로 상품 객체 생성 후 저장
- `ProductPort` : 상품 저장을 위한 포트 인터페이스
- `ProductAdapter` : `ProductPort`를 구현하여 실제 저장소와 연결하는 어댑터 클래스 - 추후 JPA를 사용하게 되면 여기서 수정
- `ProductRepository` : 상품을 저장하는 저장소 클래스
- `DiscountPolicy` : 할인 정책을 정의하는 ENUM 클래스


`ProductServiceTest.java`
```java
package com.springboot.productorderservice.product;  
  
import org.junit.jupiter.api.BeforeEach;  
import org.junit.jupiter.api.Test;  
import org.springframework.util.Assert;  
  
import java.util.HashMap;  
import java.util.Map;  
  
class ProductServiceTest {  
  
    private ProductService productService;  
    private ProductPort productPort;  
    private ProductRepository productRepository;  
  
  
    @BeforeEach  
    void setUp() {  
        productRepository = new ProductRepository();  
        productPort = new ProductAdapter(productRepository);  
        productService = new ProductService(productPort);  
    }  
  
    @Test  
    void 상품등록(){  
        final String name = "상품명";  
        final int price = 1000;  
        DiscountPolicy discountPolicy = DiscountPolicy.NONE;  
        final AddProductRequest request = new AddProductRequest(name, price, discountPolicy);  
  
        productService.addProduct(request);  
    }  
  
    private class ProductService {  
        private final ProductPort productPort;  
  
        private ProductService(ProductPort productPort) {  
            this.productPort = productPort;  
        }  
  
  
        public void addProduct(AddProductRequest request) {  
            final Product product = new Product(request.name(), request.price(), request.discountPolicy());  
  
            productPort.save(product);  
        }  
    }  
    private record AddProductRequest(String name, int price, DiscountPolicy discountPolicy) {  
        private AddProductRequest {  
            Assert.hasText(name, "상품명은 필수입니다.");  
            Assert.isTrue(price > 0, "상품 가격은 0보다 커야 합니다.");  
            Assert.notNull(discountPolicy, "할인 정책은 필수입니다.");  
        }  
  
        }  
    private enum DiscountPolicy {  
        NONE  
  
    }  
  
    private class Product {  
        private Long id;  
        private final String name;  
        private final int price;  
        private final DiscountPolicy discountPolicy;  
  
        public Product(String name, int price, DiscountPolicy discountPolicy) {  
            Assert.hasText(name, "상품명은 필수입니다.");  
            Assert.isTrue(price > 0, "상품 가격은 0보다 커야 합니다.");  
            Assert.notNull(discountPolicy, "할인 정책은 필수입니다.");  
            this.name = name;  
            this.price = price;  
            this.discountPolicy = discountPolicy;  
        }  
  
        public void assignId(Long id) {  
            this.id = id;  
        }  
  
        public Long getId() {  
            return id;  
        }  
    }  
  
    private interface ProductPort {  
        void save(Product product);  
    }  
  
    private class ProductAdapter implements ProductPort {  
        private final ProductRepository productRepository;  
  
        private ProductAdapter(ProductRepository productRepository) {  
            this.productRepository = productRepository;  
        }  
  
        @Override  
        public void save(Product product) {  
            productRepository.save(product);  
        }  
    }  
  
    private class ProductRepository {  
        private Map<Long, Product> persistence = new HashMap<>();  
        private Long sequence = 0L;  
  
        public void save(Product product) {  
            product.assignId(++sequence);  
            persistence.put(product.getId(), product);  
        }  
  
    }  
}
```


## Refactoring
- 기존 코드의 문제점
	- 상태 관리 : `setUp()` 메서드에서 테스트마다 매번 객체를 새로 생성하는 것은 비효율적인 방법이다.
	- 테스트 가독성 : 다른 테스트가 필요할 경우 이와 같은 요청 객체 생성코드가 중복된다. 이를 별도의 메서드로 분리하면 가독성이 좋아지고 유지보수가 용이해진다.
- `DiscountPolicy`, `Product`, `ProductPort`,  `ProductAdapter`, `AddProductRequest`,  `ProductService`, `ProductRepository`  차례로 main 폴더로 이동
- 요청 객체 생성 코드를 별도의 메서드로 분리
```java
package com.springboot.productorderservice.product;  
  
import org.junit.jupiter.api.BeforeEach;  
import org.junit.jupiter.api.Test;  
  
class ProductServicePOJOTest {  
  
    private ProductService productService;  
    private ProductPort productPort;  
    private ProductRepository productRepository;  
  
  
    @BeforeEach  
    void setUp() {  
        productRepository = new ProductRepository();  
        productPort = new ProductAdapter(productRepository);  
        productService = new ProductService(productPort);  
    }  
  
    @Test  
    void 상품등록(){  
        final AddProductRequest request = 상품등록요청_생성();  
  
        productService.addProduct(request);  
    }  
  
    private static AddProductRequest 상품등록요청_생성() {  
        final String name = "상품명";  
        final int price = 1000;  
        DiscountPolicy discountPolicy = DiscountPolicy.NONE;  
        return new AddProductRequest(name, price, discountPolicy);  
    }  
  
}
```


# @SpringBootTest로 전환
- `ComponentScan` 대상으로 설정
	- `ProductService`, `ProductAdapter`에 `@Component` 추가
	- `ProductRepository`에 `@Repository`
- `ProductServiceTest`를 `@SpringBootTest`등록
	- `@SpringBootTest` : Spring Boot의 통합 테스트를 위한 설정. 이 어노테이션을 사용하면 Spring의 애플리케이션 컨텍스트가 로드되고, 애플리케이션의 모든 빈(Bean)을 사용할 수 있게 된다. 이를 통해 실제 애플리케이션과 유사한 환경에서 테스트를 수행할 수 있다.
- `ProductService` 필드 주입으로 `@Autowired` 명시

`ProductServiceTest.java`
```java
package com.springboot.productorderservice.product;  
  
import org.junit.jupiter.api.BeforeEach;  
import org.junit.jupiter.api.Test;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.boot.test.context.SpringBootTest;  
  
@SpringBootTest  
class ProductServiceSpringBootTest {  
  
    @Autowired  
    private ProductService productService;  
  
    @Test  
    void 상품등록(){  
        final AddProductRequest request = 상품등록요청_생성();  
  
        productService.addProduct(request);  
    }  
  
    private static AddProductRequest 상품등록요청_생성() {  
        final String name = "상품명";  
        final int price = 1000;  
        DiscountPolicy discountPolicy = DiscountPolicy.NONE;  
        return new AddProductRequest(name, price, discountPolicy);  
    }  
  
}
```



# API  테스트로 전환하기
- 테스트 코드 라이브러리에 `Rest-Assured`의존성 추가
```gradle
testImplementation 'io.rest-assured:rest-assured:5.4.0'
```

**`Rest-Assured`란**
- API 테스트를 쉽게 할 수 있도록 도와주는 라이브러리
- 주요 기능
	- HTTP 요청 전송 : 다양한 HTTP 메서드를 사용하여 요청을 보낸다.
	- 응답 검증 : API 응답의 상태 코드, 헤더, 본문 등을 쉽게 검증할 수 있다.
	- JSON 및 XML 지원 : JSON과 XML 형식의 응답을 쉽게 처리할 수 있다.
- `ExtractableResponse`
	- `Rest-Assured` 라이브러리에서 제공하는 클래스이다. 
	- REST API 테스트를 수행할 때, API의 응답을 추출하고, 그 응답에 대한 추가적인 작업을 수행할 수 있도록 도와준다.
	- 여기서 응답은 API 호출의 결과로 돌아온 응답을 담고 있다. 이 응답은 다양한 정보를 포함하고 있으며, JSON 데이터, 상태 코드 등을 확인할 수 있다.
	- `statusCode()` : 응답의 HTTP 상태 코드를 반환한다.
	- `body()` : 응답 본문을 가져온다.
	- `header(String name)` : 특정 헤더의 값을 가져온다.

`ApiTest.java`
```java
package com.springboot.productorderservice;  
  
import io.restassured.RestAssured;  
import org.junit.jupiter.api.BeforeEach;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.boot.test.web.server.LocalServerPort;  
  
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)  
public class ApiTest {  
  
    @LocalServerPort  
    private int port;  
  
    @BeforeEach  
    void setUp() {  
        RestAssured.port = port;  
    }  
}
```

`ProductApiTest`
```java
package com.springboot.productorderservice.product;  
  
import com.springboot.productorderservice.ApiTest;  
import io.restassured.RestAssured;  
import io.restassured.response.ExtractableResponse;  
import io.restassured.response.Response;  
import org.junit.jupiter.api.Test;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.http.HttpStatus;  
import org.springframework.http.MediaType;  
  
import static org.assertj.core.api.Assertions.assertThat;  
  
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)  
class ProductApiTest extends ApiTest {  
  
  
    @Test  
    void 상품등록(){  
        final AddProductRequest request = 상품등록요청_생성();  
  
        // API 요청  
        final ExtractableResponse<Response> response = RestAssured.given().log().all()  
                .contentType(MediaType.APPLICATION_JSON_VALUE)  
                .body(request)  
                .when()  
                .post("/products")  
                .then()  
                .log().all().extract();  
  
        assertThat(response.statusCode()).isEqualTo(HttpStatus.CREATED.value());  
  
    }  
  
    private static AddProductRequest 상품등록요청_생성() {  
        final String name = "상품명";  
        final int price = 1000;  
        DiscountPolicy discountPolicy = DiscountPolicy.NONE;  
        return new AddProductRequest(name, price, discountPolicy);  
    }  
  
}
```
`ProductService.java`
```java
package com.springboot.productorderservice.product;  
  
import org.springframework.http.HttpStatus;  
import org.springframework.http.ResponseEntity;  
import org.springframework.stereotype.Component;  
import org.springframework.web.bind.annotation.PostMapping;  
import org.springframework.web.bind.annotation.RequestBody;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RestController;  
  
@RestController  
@RequestMapping("/products")  
class ProductService {  
    private final ProductPort productPort;  
  
    ProductService(ProductPort productPort) {  
        this.productPort = productPort;  
    }  
  
    @PostMapping  
    public ResponseEntity<Void> addProduct(@RequestBody final AddProductRequest request) {  
        final Product product = new Product(request.name(), request.price(), request.discountPolicy());  
  
        productPort.save(product);  
        return ResponseEntity.status(HttpStatus.CREATED).build();  
    }  
}
```

## `ProductApiTest` refactoring
```java
package com.springboot.productorderservice.product;  
  
import com.springboot.productorderservice.ApiTest;  
import io.restassured.RestAssured;  
import io.restassured.response.ExtractableResponse;  
import io.restassured.response.Response;  
import org.junit.jupiter.api.Test;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.http.HttpStatus;  
import org.springframework.http.MediaType;  
  
import static org.assertj.core.api.Assertions.assertThat;  
  
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)  
class ProductApiTest extends ApiTest {  
  
  
    @Test  
    void 상품등록(){  
        final var request = 상품등록요청_생성();  
  
        // API 요청  
        final var response = 상품등록요청(request);  
  
        assertThat(response.statusCode()).isEqualTo(HttpStatus.CREATED.value());  
  
    }  
  
    private static ExtractableResponse<Response> 상품등록요청(AddProductRequest request) {  
        return RestAssured.given().log().all()  
                .contentType(MediaType.APPLICATION_JSON_VALUE)  
                .body(request)  
                .when()  
                .post("/products")  
                .then()  
                .log().all().extract();  
    }  
  
    private static AddProductRequest 상품등록요청_생성() {  
        final String name = "상품명";  
        final int price = 1000;  
        DiscountPolicy discountPolicy = DiscountPolicy.NONE;  
        return new AddProductRequest(name, price, discountPolicy);  
    }  
  
}
```

- `var` 사용
	- Java10부터 도입된 키워드로 지역 변수를 선언할 때 타입을 명시하지 않고 자동으로 타입을 추론하게 해준다. 즉, 컴파일러가 변수의 타입을 자동으로 결정한다.
	- 사용예시
		```java
		var number = 10; // int로 추론됨
		var name = "상품명" // String으로 추론됨
		```
	- `var` 사용 시에는 변수가 어떤 타입인지 명확히 이해하고 있어야 한다. 그렇지 않으면 코드의 의미를 파악하기 어려울 수 있다.
- `상품등록요청` 메소드를 생성하여 코드의 가독성을 높였다.




































































































































































































































































































































































































































































































































































































