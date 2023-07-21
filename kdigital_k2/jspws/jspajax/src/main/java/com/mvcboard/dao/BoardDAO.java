package com.mvcboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mvcboard.mybatis.SqlSessionManager;
import com.mvcboard.vo.BoardVO;

public class BoardDAO {
	
	// db - SqlSession
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	//select이외의 query문 사용 시 commit이 필요한데 autocommit하려면 true값을 파라미터로 넣어줘야함. 
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = null;
		list = sqlSession.selectList("board.getBoardList");
		return list;
	}
	
	public BoardVO getBoard(int seq){
		BoardVO vo = null;
		vo = sqlSession.selectOne("board.getBoard", seq);
		return vo;
	}
	
	public int updateBoardCount(int seq) {
		int rs = sqlSession.update("board.updateBoardCount", seq);
		return rs;
	}
	
	public int updateBoard(BoardVO vo) {
		int rs = sqlSession.update("board.updateBoard", vo);
		return rs;
	}
}
