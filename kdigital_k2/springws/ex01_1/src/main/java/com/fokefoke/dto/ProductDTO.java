package com.fokefoke.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {
	int productId;
	String productName;
	String productType;
	String productDetail;
	String productPrice;
	String productCalorie;
	String productImage;
	String productEname;
	String productLabel;
	private StockDTO quantity;
}
