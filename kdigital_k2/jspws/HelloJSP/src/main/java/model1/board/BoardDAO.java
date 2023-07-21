package model1.board;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect{
	public BoardDAO() {
	}
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	public int selectCount() {
		int totalcount = 0;
		String sql = "select count(num) as cnt from board";
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				totalcount =  rs.getInt("cnt");
			}
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	public int selectCount(Map<String, Object> map) {
		int totalcount = 0;
		String sql = "SELECT COUNT(*) FROM board";
		if (map.get("searchWord") != null) {
			sql += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				totalcount =  rs.getInt(1);
			}
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}


	public List<BoardDTO> selectList() {
		List<BoardDTO> bbs = new ArrayList<BoardDTO>();
		String sql = "select num, title, content, id, postdate,"
				+ "visitcount from board";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				bbs.add(dto);
			}
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bbs;
	}

	public List<BoardDTO> selectList(Map<String, Object> map) {
		List<BoardDTO> bbs = new ArrayList<BoardDTO>();
		String sql = "select * from board ";
		if(map.get("searchWord") != null){
			sql += "where " + map.get("searchField") +" like ";
			sql += "'%" + map.get("searchWord") +"%'";
		}
		sql +=" order by num desc";
		System.out.print(sql);
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				bbs.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bbs;
	}


	public int selectPCount() {
		int totalcount = 0;
		String sql = "select count(num) as cnt from board";
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				totalcount =  rs.getInt("cnt");
			}
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	public int selectSCount() {
		int totalcount = 0;
		String sql = "select count(num) as cnt from board";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				totalcount =  rs.getInt("cnt");
			}
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}
	
	public int insertWrite(BoardDTO dto) {
		int totalcount = 0;
		String sql = "insert into board (num, title, content, id,visitcount) ";
			sql +=" values (seq_board_num.nextval, ?, ?, ?, 0)";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			totalcount = psmt.executeUpdate();
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	public BoardDTO selectView(int num) {
		BoardDTO dto = new BoardDTO();
		String sql = "select * from board b, member m "
				+ "where b.id = m.id and b.num= ?";
		System.out.println(sql);
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, num);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				dto.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public void updateVisitCount(int num) {
		String sql = "update Board set visitcount = visitcount + 1 ";
			sql += " where num = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, num);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int updateEdit(BoardDTO dto) {
		int totalcount = 0;
		String sql = "UPDATE  BOARD SET TITLE =?, CONTENT =? WHERE num=?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			totalcount = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	public int deletePost(int num) {
		int totalcount = 0;
		String sql = "Delete from BOARD WHERE num=?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, num);
			totalcount = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	public List<BoardDTO> selectListPage(Map<String, Object> map) {
		List<BoardDTO> bbs = new ArrayList<BoardDTO>();
		String sql = "SELECT * FROM ";
			   sql += "(SELECT tb.*, rownum rNum FROM ";
			   sql += "	(SELECT * FROM BOARD b  ORDER BY num desc) tb ) ";
			   sql += " WHERE rNum BETWEEN ? AND ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, (int) map.get("start"));
			psmt.setInt(2, (int) map.get("end"));
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				bbs.add(dto);
			}
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bbs;
	}

	
	
}
