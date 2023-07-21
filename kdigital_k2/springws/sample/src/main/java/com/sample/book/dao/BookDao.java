package com.sample.book.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sample.book.dto.BookDTO;

@Repository
public class BookDao {
	//우리꺼(?)가 아니여서 xml에 bean으로 등록해서 사용
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public BookDao() {
		System.out.println("@Repository 스프링 자동생성");
	}
	
	public int insert(Map<String, String> map) {
		return sqlSessionTemplate.insert("bookMap.insert" , map);
	}
	
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		return sqlSessionTemplate.selectList("bookMap.select_list", map);
	}
	
	public List<Map<String, Object>> selectList(BookDTO dto) {
		return sqlSessionTemplate.selectList("bookDTO.select_list", dto);
	}
	
	public Map<String, Object> selectDetail(Map<String, Object> map) {
		return sqlSessionTemplate.selectOne("bookMap.select_detail", map);
	}
	
	public int update(Map<String, Object> map) {
		return sqlSessionTemplate.update("bookMap.update", map);
	}
	
	public int delete(Map<String, Object> map) {
		return sqlSessionTemplate.delete("bookMap.delete", map);
	}
}
