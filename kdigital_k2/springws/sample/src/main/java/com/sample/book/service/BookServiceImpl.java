package com.sample.book.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.book.dao.BookDao;
import com.sample.book.dto.BookDTO;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookDao bookDao;
	
	public BookServiceImpl() {
		System.out.println("@Service 자동생성");
	}

	@Override
	public int insert(Map<String, String> map) {
		return bookDao.insert(map);
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		return bookDao.selectList(map);
	}
	
	@Override
	public Map<String, Object> selectDetail(Map<String, Object> map) {
		return bookDao.selectDetail(map);
	}

	@Override
	public int update(Map<String, Object> map) {
		return bookDao.update(map);
	}

	@Override
	public int delete(Map<String, Object> map) {
		return bookDao.delete(map);
	}

	//BookDTO
	@Override
	public List<Map<String, Object>> selectList(BookDTO dto) {
		return bookDao.selectList(dto);
	}

	
}
