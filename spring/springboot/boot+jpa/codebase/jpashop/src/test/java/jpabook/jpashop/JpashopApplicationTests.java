package jpabook.jpashop;

import jakarta.persistence.EntityManager;
import jpabook.jpashop.domain.item.Book;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class JpashopApplicationTests {

	@Autowired
	EntityManager em;

	@Test
	public void updateTest() throws Exception {
		Book book = em.find(Book.class, 1L);

		//TX
		book.setName("asdfasdf");

		//변경감지 == dirty checking
	}

}
