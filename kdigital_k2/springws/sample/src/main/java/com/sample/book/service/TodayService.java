package com.sample.book.service;

import java.util.List;

import com.sample.book.dto.TodayDTO;

public interface TodayService {
	public int insert(TodayDTO dto);
	public List<TodayDTO> selectList();
}
