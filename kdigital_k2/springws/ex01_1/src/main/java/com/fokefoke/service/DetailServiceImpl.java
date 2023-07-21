package com.fokefoke.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fokefoke.dto.DetailDTO;
import com.fokefoke.dto.NutritionalDTO;
import com.fokefoke.dto.ProductDTO;
import com.fokefoke.mapper.DetailMapper;

@Service
public class DetailServiceImpl implements DetailService {

	@Autowired
	private DetailMapper detailMapper;

	@Override
	public int insert_ingredient(DetailDTO dto) {
		return detailMapper.insert_ingredient(dto);
	}

	@Override
	public List<ProductDTO> getSide() {
		return detailMapper.getSide();
	}

	@Override
	public List<ProductDTO> getBeverage() {
		return detailMapper.getBeverage();
	}

	@Override
	public ProductDTO getProduct(ProductDTO dto) {
		return detailMapper.getProduct(dto) ;
	}

	@Override
	public DetailDTO getAuto(ProductDTO dto) {
		return detailMapper.getAuto(dto);
	}

	@Override
	public int insertDetail(DetailDTO dto) {
		return detailMapper.insertDetail(dto);
	}

	@Override
	public NutritionalDTO getNutritional(ProductDTO dto) {
		return detailMapper.getNutritional(dto);
	}



	
	
}
