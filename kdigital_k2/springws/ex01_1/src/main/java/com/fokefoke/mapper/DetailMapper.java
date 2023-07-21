package com.fokefoke.mapper;

import java.util.List;

import com.fokefoke.dto.DetailDTO;
import com.fokefoke.dto.NutritionalDTO;
import com.fokefoke.dto.ProductDTO;

public interface DetailMapper {
	public int insert_ingredient(DetailDTO dto);
	public List<ProductDTO> getSide();
	public List<ProductDTO>  getBeverage();
	public ProductDTO getProduct(ProductDTO dto);
	public DetailDTO getAuto(ProductDTO dto);
	public int insertDetail(DetailDTO dto);
	public NutritionalDTO getNutritional(ProductDTO dto);
	
}
