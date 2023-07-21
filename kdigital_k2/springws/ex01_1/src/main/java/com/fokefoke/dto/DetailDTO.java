package com.fokefoke.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Data
public class DetailDTO {
	String memberId;
	String productName;
	String base;
	String atopping;
	String btopping;
	String ctopping;
	String dtopping;
	String asource;
	String bsource;
	String aextratopping;
	String bextratopping;
	String extramain;
	String setbeverage;
	String setside;
	int price;
	int total=1;
}
