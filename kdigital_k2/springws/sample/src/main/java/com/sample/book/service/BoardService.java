package com.sample.book.service;

import java.util.List;
import java.util.Map;

import com.sample.book.dto.BoardDTO;
import com.sample.book.dto.BookDTO;

public interface BoardService {
	public int insert(BoardDTO boardDTO);
	public List<BoardDTO> selectList(Map<String, Object> map );
	public BoardDTO selectDetail(BoardDTO boardDTO); 
	public int update(BoardDTO boardDTO);
	public int updateCnt(BoardDTO boardDTO);
	public int delete(BoardDTO boardDTO);
	public int deleteCheck(List<Map<String, String>> dto);
}
