package com.fokefoke.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Data
public class NutritionalDTO {
	int nutritionalId;
	int productId;
	String productName;
	int weight;
	int calorie;
	float protein;
	float saturatedFat;
	float sugarContent;
	float sodium;
}
