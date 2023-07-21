package com.sample.book.service;

import java.util.List;
import java.util.Map;

import com.sample.book.dto.BookDTO;

public interface BookService {
	//Map
	public int insert(Map<String, String> map);
	public List<Map<String, Object>> selectList(Map<String, Object> map);
	public Map<String, Object> selectDetail(Map<String, Object> map); 
	public int update(Map<String, Object> map);
	public int delete(Map<String, Object> map);
	//BookDTO
//	public int insert(BookDTO dto);
	public List<Map<String, Object>> selectList(BookDTO dto);
//	public Map<String, Object> selectDetail(BookDTO dto); 
//	public int update(BookDTO dto);
//	public int delete(BookDTO dto);
}
