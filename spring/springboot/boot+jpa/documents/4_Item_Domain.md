구현 기능
- 상품 등록
- 상품 목록 조회
- 상품 수정

순서
- 상품 엔티티 개발(비즈니스 로직 추가)
- 상품 리포지토리 개발
- 상품 서비스 개바
- 상품 기능 테스트

# 상품 엔티티 개발(비즈니스 로직 추가)
```java
package jpabook.jpashop.domain.item;  
  
import jpabook.jpashop.domain.Category;  
import jpabook.jpashop.exception.NotEnoughStockException;  
import lombok.Getter;  
import lombok.Setter;  
import org.hibernate.annotations.BatchSize;  
  
import jakarta.persistence.*;  
import java.util.ArrayList;  
import java.util.List;  
  
@Entity  
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)  
@DiscriminatorColumn(name = "dtype")  
@Getter @Setter  
public abstract class Item {  
  
    @Id  
    @GeneratedValue    @Column(name = "item_id")  
    private Long id;  
  
    private String name;  
    private int price;  
    private int stockQuantity;  
  
    @ManyToMany(mappedBy = "items")  
    private List<Category> categories = new ArrayList<>();  
  
    //==비즈니스 로직==//  
    /**  
     * stock 증가  
     */  
    public void addStock(int quantity) {  
        this.stockQuantity += quantity;  
    }  
  
    /**  
     * stock 감소  
     */  
    public void removeStock(int quantity) {  
        int restStock = this.stockQuantity - quantity;  
        if (restStock < 0) {  
            throw new NotEnoughStockException("need more stock");  
        }  
        this.stockQuantity = restStock;  
    }  
}
```

**비즈니스 로직 분석**
- `addStock()` : 파라미터로 넘어온 수만큼 재고 증가. 이 메서드는 재고가 증가하거나 상품 주문을 취소해서 재고를 다시 늘려야 할 때 사용한다.
- `removeStock()` : 파라미터로 넘오온 수만큼 재고를 줄인다. 만약 재고가 부족하면 예외가 발생한다. 주로 상품을 주문할 때 사용한다.
- 필드 데이터 변경시 `@Setter` 사용을 지양하고 위에처럼 엔티티에 핵심 비즈니스 로직을 적용해서 값을 변경하면 된다. (데이터를 가지고 있는 객체에 비지니스 로직이 있는게 더 응집력이 있다.) 

## 예외 추가
```java
package jpabook.jpashop.exception;  
  
public class NotEnoughStockException extends RuntimeException {  
  
    public NotEnoughStockException() {  
        super();  
    }  
  
    public NotEnoughStockException(String message) {  
        super(message);  
    }  
  
    public NotEnoughStockException(String message, Throwable cause) {  
        super(message, cause);  
    }  
  
    public NotEnoughStockException(Throwable cause) {  
        super(cause);  
    }  
  
}
```


# 상품 리포지토리 개발
```java
package jpabook.jpashop.repository;  
  
import jpabook.jpashop.domain.item.Item;  
import lombok.RequiredArgsConstructor;  
import org.springframework.stereotype.Repository;  
  
import jakarta.persistence.EntityManager;  
import java.util.List;  
  
@Repository  
@RequiredArgsConstructor  
public class ItemRepository {  
  
    private final EntityManager em;  
  
    public void save(Item item) {  
        if (item.getId() == null) {  
            em.persist(item);  
        } else {  
            em.merge(item);  
        }  
    }  
  
    public Item findOne(Long id) {  
        return em.find(Item.class, id);  
    }  
  
    public List<Item> findAll() {  
        return em.createQuery("select i from Item i", Item.class)  
                .getResultList();  
    }  
}
```
**기능설명**
- `save()`
	- id가 없으면 신규로 보고 `persist()`실행
	- id가 있으면 이미 데이터베이스에 저장된 엔티티를 수정한다고 보고, `merge()`를 실행

# 상품 서비스 개발
```java
package jpabook.jpashop.service;  
  
import jpabook.jpashop.domain.item.Item;  
import jpabook.jpashop.repository.ItemRepository;  
import lombok.RequiredArgsConstructor;  
import org.springframework.stereotype.Service;  
import org.springframework.transaction.annotation.Transactional;  
  
import java.util.List;  
  
@Service  
@Transactional(readOnly = true)  
@RequiredArgsConstructor  
public class ItemService {  
  
    private final ItemRepository itemRepository;  
  
    @Transactional  
    public void saveItem(Item item) {  
        itemRepository.save(item);  
    }  
  
    public List<Item> findItems() {  
        return itemRepository.findAll();  
    }  
  
    public Item findOne(Long itemId) {  
        return itemRepository.findOne(itemId);  
    }  
  
}
```


# 상품 기능 테스트
```java
package jpabook.jpashop.service;  
  
import jpabook.jpashop.domain.item.Book;  
import jpabook.jpashop.exception.NotEnoughStockException;  
import jpabook.jpashop.repository.ItemRepository;  
import org.junit.jupiter.api.DisplayName;  
import org.junit.jupiter.api.Test;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.transaction.annotation.Transactional;  
  
import static org.assertj.core.api.Assertions.assertThat;  
import static org.junit.jupiter.api.Assertions.*;  
@SpringBootTest  
@Transactional  
class ItemServiceTest {  
  
    @Autowired  
    ItemRepository itemRepository;  
  
    @Autowired  
    ItemService itemService;  
  
    @Test  
    @DisplayName("상품 수량 증가")  
    public void addStockQuantity() {  
        // given  
        Book book = new Book();  
        book.setName("book1");  
        book.setStockQuantity(1);  
  
        // when  
        book.addStock(10);  
        itemService.saveItem(book); // Assuming you need to save the book to get an ID  
  
        // then        assertThat(itemService.findOne(book.getId()).getStockQuantity()).isEqualTo(11);  
    }  
  
  
    @Test  
    @DisplayName("상품 재고 0미만일 경우 예외 처리")  
    public void throwMinusStockQuantity() {  
        // given  
        Book book = new Book();  
        book.setStockQuantity(1);  
        book.setName("book1");  
  
        // when & then  
        NotEnoughStockException thrown = assertThrows(NotEnoughStockException.class, () -> {  
            book.removeStock(2);  
        });  
  
        // 예외 메시지 확인 (선택 사항)  
        assertEquals("need more stock", thrown.getMessage());  
    }  
  
}
```







