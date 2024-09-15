구현 기능
- 상품 주문
- 주문 내역 조회
- 주문 취소

순서
- 주문 엔티티, 주문상품 엔티티 개발
- 주문 리포지토리 개발
- 주문 서비스 개발
- 주문 검색 기능 개발
- 주문 기능 테스트


# 주문, 주문상품 엔티티 개발

### 주문 엔티티 개발
```java
package jpabook.jpashop.domain;  
  
import com.fasterxml.jackson.annotation.JsonIgnore;  
import lombok.AccessLevel;  
import lombok.Getter;  
import lombok.NoArgsConstructor;  
import lombok.Setter;  
import org.hibernate.annotations.BatchSize;  
  
import jakarta.persistence.*;  
import java.time.LocalDateTime;  
import java.util.ArrayList;  
import java.util.List;  
  
import static jakarta.persistence.FetchType.*;  
  
@Entity  
@Table(name = "orders")  
@Getter @Setter  
@NoArgsConstructor(access = AccessLevel.PROTECTED)  
public class Order {  
  
    @Id @GeneratedValue  
    @Column(name = "order_id")  
    private Long id;  
  
    @ManyToOne(fetch = LAZY)  
    @JoinColumn(name = "member_id")  
    private Member member;  
  
    @JsonIgnore  
    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)  
    private List<OrderItem> orderItems = new ArrayList<>();  
  
    @JsonIgnore  
    @OneToOne(fetch = LAZY, cascade = CascadeType.ALL)  
    @JoinColumn(name = "delivery_id")  
    private Delivery delivery;  
  
    private LocalDateTime orderDate; //주문시간  
  
    @Enumerated(EnumType.STRING)  
    private OrderStatus status; //주문상태 [ORDER, CANCEL]  
    //==연관관계 메서드==//  
    public void setMember(Member member) {  
        this.member = member;  
        member.getOrders().add(this);  
    }  
  
    public void addOrderItem(OrderItem orderItem) {  
        orderItems.add(orderItem);  
        orderItem.setOrder(this);  
    }  
  
    public void setDelivery(Delivery delivery) {  
        this.delivery = delivery;  
        delivery.setOrder(this);  
    }  
  
  
    //==생성 메서드==//  
    public static Order createOrder(Member member, Delivery delivery, OrderItem... orderItems) {  
        Order order = new Order();  
        order.setMember(member);  
        order.setDelivery(delivery);  
        for (OrderItem orderItem : orderItems) {  
            order.addOrderItem(orderItem);  
        }  
        order.setStatus(OrderStatus.ORDER);  
        order.setOrderDate(LocalDateTime.now());  
        return order;  
    }  
  
    //==비즈니스 로직==//  
    /**  
     * 주문 취소  
     */  
    public void cancel(){  
        if (delivery.getStatus() == DeliveryStatus.COMP) {  
            throw new IllegalStateException("이미 배송완료된 상품은 취소가 불가능합니다.");  
        }  
  
        this.setStatus(OrderStatus.CANCEL);  
        for (OrderItem orderItem : orderItems) {  
            orderItem.cancel();  
        }  
    }  
  
    //==조회 로직==//  
    /**  
     * 전체 주문 가격 조회  
     */  
    public int getTotalPrice(){  
        return orderItems.stream()  
                .mapToInt(OrderItem::getTotalPrice)  
                .sum();  
    }  
  
}
```
**기능 설명**
- `createOrder()` : 생성 메서드. 주문 엔티티를 생성할 때 사용한다. 주문 회원, 배송정보, 주문상품의 정보를 받아서 실제 주문 엔티티를 생성한다. 생성에 관련된 비즈니스 로직을 한 곳에 모아놔서 유지보수에 용이하게 함.
- `cancel()` : 주문 취소 메서드. 주문 취소시 사용한다. 주문 상태를 취소로 변경하고 주문상품에 주문 취소를 알린다. 만약 이미 배송을 완료한 상품이면 주문을 취소하지 못하도록 예외를 발생시킨다.
- `getTotalPrice()` : 전체 주문 가격 조회 메서드. 주문 시 사용한 전체 주문 가격을 조회한다. 전체 주문 가격을 알려면 각각의 주문상품 가격을 알아야 한다. 로직을 보면 연관된 주문 상품들의 가격을 조회해서 더한 값을 반환한다.(실무에서는 주로 주문에 전체 주문 가격 필드를 두고 역정규화 한다.)

## 주문상품 엔티티 개발
```java
package jpabook.jpashop.domain;  
  
import com.fasterxml.jackson.annotation.JsonIgnore;  
import jpabook.jpashop.domain.item.Item;  
import lombok.AccessLevel;  
import lombok.Getter;  
import lombok.NoArgsConstructor;  
import lombok.Setter;  
  
import jakarta.persistence.*;  
  
import static jakarta.persistence.FetchType.*;  
  
@Entity  
@Getter @Setter  
@NoArgsConstructor(access = AccessLevel.PROTECTED)  
public class OrderItem {  
  
    @Id @GeneratedValue  
    @Column(name = "order_item_id")  
    private Long id;  
  
    @ManyToOne(fetch = LAZY)  
    @JoinColumn(name = "item_id")  
    private Item item;  
  
    @JsonIgnore  
    @ManyToOne(fetch = LAZY)  
    @JoinColumn(name = "order_id")  
    private Order order;  
  
    private int orderPrice; //주문 가격  
    private int count; //주문 수량  
  
  
    //==생성 메서드==//  
    public static OrderItem createOrderItem(Item item, int orderPrice, int count) {  
        OrderItem orderItem = new OrderItem(); // 할인이나 쿠폰 사용 경우를 대비해서 따로 만드는게 나음  
        orderItem.setItem(item);  
        orderItem.setOrderPrice(orderPrice);  
        orderItem.setCount(count);  
  
        item.removeStock(count);  
        return orderItem;  
    }  
  
    //==비즈니스 로직==//  
   public void cancel(){ // 재고수량을 원복해준다.  
        getItem().addStock(count);  
    }  
  
    //==조회 로직==//  
  
    /**  
     * 주문상품 전체 가격 조회  
     */  
    public int getTotalPrice() {  
        return getOrderPrice() * getCount();  
    }  
  
}
```
**기능 설명**
- `createOrderItem()` : 생성 메서드. 주문 상품, 가격 수량 정보를 사용해서 주문상품 엔티티를 생성한다. 그리도 `item.removeStock(count)`를 호출해서 주문한 수량만큼 상품의 재고를 줄인다.
- `cancel()` : 주문취소 메서드. `getItem().addStock(count)`를 호출해서 취소한 주문 수량만큼 상품의 재고를 증가시킨다.
- `getTotalPrice()` : 주문 가격 조회 메서드. 주문 가격에 수량을 곱한 값을 반환한다.

# 주문 리포지토리 개발
```java
package jpabook.jpashop.repository;  
  
import jakarta.persistence.EntityManager;  
import jakarta.persistence.TypedQuery;  
import jakarta.persistence.criteria.*;  
import jpabook.jpashop.domain.Order;  
import lombok.RequiredArgsConstructor;  
import org.springframework.stereotype.Repository;  
import org.springframework.util.StringUtils;  
  
import java.util.ArrayList;  
import java.util.List;  
  
@Repository  
@RequiredArgsConstructor  
public class OrderRepository {  
  
    private final EntityManager em;  
  
    public void save(Order order) {  
        em.persist(order);  
    }  
  
    public Order findOne(Long id){  
        return em.find(Order.class, id);  
    }  
  
  
    public List<Order> findAllByString(OrderSearch orderSearch) {  
  
        String jpql = "select o from Order o join o.member m";  
        boolean isFirstCondition = true;  
  
        //주문 상태 검색  
        if (orderSearch.getOrderStatus() != null) {  
            if (isFirstCondition) {  
                jpql += " where";  
                isFirstCondition = false;  
            } else {  
                jpql += " and";  
            }  
            jpql += " o.status = :status";  
        }  
  
        //회원 이름 검색  
        if (StringUtils.hasText(orderSearch.getMemberName())) {  
            if (isFirstCondition) {  
                jpql += " where";  
                isFirstCondition = false;  
            } else {  
                jpql += " and";  
            }  
            jpql += " m.name like :name";  
        }  
  
        TypedQuery<Order> query = em.createQuery(jpql, Order.class)  
                .setMaxResults(1000);  
  
        if (orderSearch.getOrderStatus() != null) {  
            query = query.setParameter("status", orderSearch.getOrderStatus());  
        }  
        if (StringUtils.hasText(orderSearch.getMemberName())) {  
            query = query.setParameter("name", orderSearch.getMemberName());  
        }  
  
        return query.getResultList();  
    }  
  
  
    /**  
     * JPA Criteria - jpql를 자바 표준으로 작성하게 하는 jpql에서 제공하는 표준  
     */  
    public List<Order> findAllByCriteria(OrderSearch orderSearch) {  
        CriteriaBuilder cb = em.getCriteriaBuilder();  
        CriteriaQuery<Order> cq = cb.createQuery(Order.class);  
        Root<Order> o = cq.from(Order.class);  
        Join<Object, Object> m = o.join("member", JoinType.INNER);  
  
        List<Predicate> criteria = new ArrayList<>();  
  
        //주문 상태 검색  
        if (orderSearch.getOrderStatus() != null) {  
            Predicate status = cb.equal(o.get("status"), orderSearch.getOrderStatus());  
            criteria.add(status);  
        }  
        //회원 이름 검색  
        if (StringUtils.hasText(orderSearch.getMemberName())) {  
            Predicate name =  
                    cb.like(m.<String>get("name"), "%" + orderSearch.getMemberName() + "%");  
            criteria.add(name);  
        }  
  
        cq.where(cb.and(criteria.toArray(new Predicate[criteria.size()])));  
        TypedQuery<Order> query = em.createQuery(cq).setMaxResults(1000);  
        return query.getResultList();  
    }  
  
  
}
```

## 주문 검색 엔티티 개발
```java
package jpabook.jpashop.repository;  
  
import jpabook.jpashop.domain.OrderStatus;  
import lombok.Getter;  
import lombok.Setter;  
  
@Getter  
@Setter  
public class OrderSearch {  
  
    private String memberName;  
    private OrderStatus orderStatus; // 주문 상태 [ORDER, CANCEL]}
```


# 주문 서비스 개발
```java
package jpabook.jpashop.service;  
  
import jpabook.jpashop.domain.Delivery;  
import jpabook.jpashop.domain.Member;  
import jpabook.jpashop.domain.Order;  
import jpabook.jpashop.domain.OrderItem;  
import jpabook.jpashop.domain.item.Item;  
import jpabook.jpashop.repository.ItemRepository;  
import jpabook.jpashop.repository.MemberRepository;  
import jpabook.jpashop.repository.OrderRepository;  
import lombok.RequiredArgsConstructor;  
import org.springframework.stereotype.Service;  
import org.springframework.transaction.annotation.Transactional;  
  
import java.util.List;  
  
@Service  
@Transactional(readOnly = true)  
@RequiredArgsConstructor  
public class OrderService {  
  
    private final OrderRepository orderRepository;  
    private final MemberRepository memberRepository;  
    private final ItemRepository itemRepository;  
  
    /**  
     * 주문  
     */  
    @Transactional  
    public Long order(Long memberId, Long itemId, int count) {  
  
        //엔티티 조회  
        Member member = memberRepository.findOne(memberId);  
        Item item = itemRepository.findOne(itemId);  
  
        //배송정보 생성  
        Delivery delivery = new Delivery();  
        delivery.setAddress(member.getAddress());  
  
        //주문 상품 생성  
        OrderItem orderItem = OrderItem.createOrderItem(item, item.getPrice(), count);  
  
        //주문 생성  
        Order order = Order.createOrder(member, delivery, orderItem);  
  
        //주문 저장  
        orderRepository.save(order);  
        return order.getId();  
    }  
  
  
    /**  
     * 주문 취소  
     */  
    @Transactional  
    public void cancelOrder(Long orderId) {  
        //주문 엔티티 조회  
        Order order = orderRepository.findOne(orderId);  
        //주문 취소  
        order.cancel();  
    }  
  
    //검색  
//    public List<Order> findOrders(OrderSearch orderSearch) {  
//        return orderRepository.Or  
//    }  
}
```
-- 예제를 단순화하려고 한 번에 하나의 상품만 주문할 수 있다.

**기능 설명**
- `order()` : 주문 메서드. 주문하는 회원 식별자, 상품 식별자, 주문 수량 정보를 받아서 실제 주문 엔티티를 생성한 후 저장한다.
- `cancelOrder()` : 주문 취소 메서드. 주문 식별자를 받아서 주문 엔티티를 조회한 후 주문 엔티티에 주문 취소를 요청한다.
- `findOrders()` : 주문 검색 메서드. `OrderSearch`라는 검색 조건을 가진 객체로 주문 엔티티를 검색한다.

>💡 **도메인 모델 패턴 ・ 트랜잭션 스크립트 패턴**
>주문 서비스의 주문과 주문 취소 메서드를 보면 비즈니스 로직 대부분이 엔티티에 있다. 서비스 계층은 단순히 엔티티에 필요한 요청을 위임하는 역할을 한다. 이처럼 엔티티가 비즈니스 로직을 가지고 객체 지향의 특성을 적극 활용하는 것을 `도메인 모델 패턴`이라 한다.
>반대로, 엔티티에는 Getter, Setter만 있고, 비즈니스 로직이 거의 없고 서비스 계층에서 대부분의 비즈니스 로직을 처리하는 것을 `트랜잭션 스크립트 패턴`이라 한다. 
>주로 JPA같은 ORM에서 `도메인 모델 패턴`이 많이 나오고, 직접 쿼리를 다루는 Mybatis 등에서 `트랜잭션 스크립트 패턴`이 많이 나온다. 뭐가 더 좋다라기 보다 프로젝트에 따라 맞는 걸 사용하면 된다. 두 패턴을 혼용해서 사용하는 경우도 있다.

# 주문 기능 테스트
**테스트 요구사항**
- 상품 주문이 성공해야 한다.
- 상품을 주문할 때 재고 수량을 초고하면 안된다.
- 주문 취소가 성공해야 한다.

## 상품 주문 테스트
```java
package jpabook.jpashop.service;  
  
import jakarta.persistence.EntityManager;  
import jpabook.jpashop.domain.Address;  
import jpabook.jpashop.domain.Member;  
import jpabook.jpashop.domain.Order;  
import jpabook.jpashop.domain.OrderStatus;  
import jpabook.jpashop.domain.item.Book;  
import jpabook.jpashop.domain.item.Item;  
import jpabook.jpashop.exception.NotEnoughStockException;  
import jpabook.jpashop.repository.OrderRepository;  
import org.junit.jupiter.api.Assertions;  
import org.junit.jupiter.api.DisplayName;  
import org.junit.jupiter.api.Test;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.boot.test.context.SpringBootTest;  
import org.springframework.transaction.annotation.Transactional;  
  
import static org.assertj.core.api.Assertions.assertThat;  
import static org.junit.jupiter.api.Assertions.assertThrows;  
  
@SpringBootTest  
@Transactional  
class OrderServiceTest {  
  
    @Autowired  
    EntityManager em;  
    @Autowired  
    OrderService orderService;  
    @Autowired  
    OrderRepository orderRepository;  
  
    @Test  
    @DisplayName("상품 주문")  
    public void orderItem() {  
        //given  
        Member member = createMember();  
  
        Book book = createBook("시골 JPA", 10000, 10);  
  
        int orderCount = 2;  
  
        //when  
        Long orderId = orderService.order(member.getId(), book.getId(), orderCount);  
  
        //then  
        Order getOrder = orderRepository.findOne(orderId);  
  
        assertThat(getOrder.getStatus()).isEqualTo(OrderStatus.ORDER);  
        assertThat(getOrder.getOrderItems().size()).isEqualTo(1);  
        assertThat(getOrder.getTotalPrice()).isEqualTo(10000 * orderCount);  
        assertThat(book.getStockQuantity()).isEqualTo(8);  
    }  
  
    @Test  
    @DisplayName("상품주문 재고수량 초과")  
    public void throwStockQuantity(){  
        //given  
        Member member = createMember();  
        Item item = createBook("시골 JPA", 10000, 10);  
  
        int orderCount = 11;  
  
        //when  
        assertThrows(NotEnoughStockException.class, ()->{  
            orderService.order(member.getId(), item.getId(), orderCount);  
        });  
  
        //then  
  
    }  
  
    @Test  
    @DisplayName("주문취소")  
    public void cancelOrder() {  
        //given  
        Member member = createMember();  
        Book item = createBook("시골 JPA", 10000, 10);  
  
        int orderCount = 2;  
  
        Long orderId = orderService.order(member.getId(), item.getId(), orderCount);  
        //when  
        orderService.cancelOrder(orderId);  
  
        //then  
        Order getOrder = orderRepository.findOne(orderId);  
  
        assertThat(getOrder.getStatus()).isEqualTo(OrderStatus.CANCEL);  
        assertThat(item.getStockQuantity()).isEqualTo(10);  
    }  
  
    @Test  
    public void 상품() {  
    }  
  
  
    private Book createBook(String name, int price, int stockQuantity) {  
        Book book = new Book();  
        book.setName(name);  
        book.setPrice(price);  
        book.setStockQuantity(stockQuantity);  
        em.persist(book);  
        return book;  
    }  
  
    private Member createMember() {  
        Member member = new Member();  
        member.setName("회원1");  
        member.setAddress(new Address("서울", "강가", "123-123"));  
        em.persist(member);  
        return member;  
    }  
  
  
}
```


# 주문 검색 기능 개발
JPA에서 **동적 쿼리**를 어떻게 해결해야하는가?
-> queryDSL을 사용할 것.






































