package com.sample.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.book.dao.TodayDao;
import com.sample.book.dto.TodayDTO;

@Service
public class TodayServiceImpl implements TodayService {
	
	@Autowired
	TodayDao dao;
	
	public TodayServiceImpl() {
		System.out.println("@Service 자동생성");
	}

	@Override
	public int insert(TodayDTO dto) {
		return dao.insert(dto);
	}

	@Override
	public List<TodayDTO> selectList() {
		return dao.selectList();
	}


	
}
