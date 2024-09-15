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

        // then
        assertThat(itemService.findOne(book.getId()).getStockQuantity()).isEqualTo(11);
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