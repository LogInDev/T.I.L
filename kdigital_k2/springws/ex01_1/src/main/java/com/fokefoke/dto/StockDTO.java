package com.fokefoke.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StockDTO {
	int quantityId;
	int storeId;
	int productId;
	int quantity;
}
