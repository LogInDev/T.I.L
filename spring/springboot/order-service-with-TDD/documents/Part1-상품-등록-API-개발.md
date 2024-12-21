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



















































































































































































































































































































































































































































































































































































































