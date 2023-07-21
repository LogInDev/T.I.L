package com.sample.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sample.book.dto.TodayDTO;

@Repository
public class TodayDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public TodayDao() {
		System.out.println("@Repository 스프링 자동생성");
	}
	
	public int insert(TodayDTO dto) {
		return sqlSessionTemplate.insert("todayDTO.insert" , dto);
	}
	
	public List<TodayDTO> selectList() {
		return sqlSessionTemplate.selectList("todayDTO.selectList");
	}
	
}
