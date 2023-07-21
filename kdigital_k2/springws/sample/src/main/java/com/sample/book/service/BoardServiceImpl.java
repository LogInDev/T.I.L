package com.sample.book.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.book.dao.BoardDao;
import com.sample.book.dao.BookDao;
import com.sample.book.dto.BoardDTO;
import com.sample.book.dto.BookDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDao dao;
	
	public BoardServiceImpl() {
		System.out.println("@Service 자동생성");
	}

	@Override
	public int insert(BoardDTO boardDTO) {
		return dao.insert(boardDTO);
	}

	@Override
	public List<BoardDTO> selectList(Map<String, Object> map ) {
		return dao.selectList(map);
	}
	
	@Override
	public BoardDTO selectDetail(BoardDTO boardDTO) {
		return dao.selectDetail(boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) {
		return dao.update(boardDTO);
	}

	@Override
	public int delete(BoardDTO boardDTO) {
		return dao.delete(boardDTO);
	}

	@Override
	public int updateCnt(BoardDTO boardDTO) {
		return dao.updateCnt(boardDTO);
	}

	@Override
	public int deleteCheck(List<Map<String, String>> dto) {
		return dao.deleteCheck(dto);
	}

	
}
