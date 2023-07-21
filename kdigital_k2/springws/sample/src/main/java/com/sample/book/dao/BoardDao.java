package com.sample.book.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sample.book.dto.BoardDTO;

@Repository
public class BoardDao {
	//우리꺼(?)가 아니여서 xml에 bean으로 등록해서 사용
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public BoardDao() {
		System.out.println("@Repository 스프링 자동생성");
	}
	
	public int insert(BoardDTO dto) {
		return sqlSessionTemplate.insert("boardDTO.insert" , dto);
	}
	
	public List<BoardDTO> selectList(Map<String, Object> map) {
		return sqlSessionTemplate.selectList("boardDTO.select_list", map);
	}
	
	
	public BoardDTO selectDetail(BoardDTO dto) {
		return sqlSessionTemplate.selectOne("boardDTO.select_detail", dto);
	}
	
	public int update(BoardDTO dto) {
		return sqlSessionTemplate.update("boardDTO.update", dto);
	}
	
	public int updateCnt(BoardDTO dto) {
		return sqlSessionTemplate.update("boardDTO.updateCnt", dto);
	}
	
	public int delete(BoardDTO dto) {
		return sqlSessionTemplate.delete("boardDTO.delete", dto);
	}
	public int deleteCheck(List<Map<String, String>> dto) {
		return sqlSessionTemplate.delete("boardDTO.deleteCheck", dto);
	}
}
