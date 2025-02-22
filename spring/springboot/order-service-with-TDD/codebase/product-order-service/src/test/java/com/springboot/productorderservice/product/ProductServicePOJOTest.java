package com.springboot.productorderservice.product;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class ProductServicePOJOTest {

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
