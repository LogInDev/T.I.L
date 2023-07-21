package membership;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import common.JDBConnect;
import model1.board.BoardDTO;

public class CaDAO extends JDBConnect {
	public CaDAO() {
	}
	
	
	public CaDAO(ServletContext application) {
		super(application);
	}


	public int insertWrite(CaDTO dto) {
		int totalcount = 0;
		String sql = "insert into caboard (num,id, content) ";
			sql +=" values (seq_caboard_num.nextval, ?, ?)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getContent());
			totalcount = psmt.executeUpdate();
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}
	
	public List<CaDTO> selectListPage(Map<String, Object> map) {
		List<CaDTO> bbs = new ArrayList<CaDTO>();
		String sql = "SELECT * FROM ";
				sql += "(SELECT tb.*, rownum rNum FROM ";
			sql += "	(SELECT * FROM caboard  order by postdate desc) tb ) ";
			sql += " WHERE rNum BETWEEN ? AND ?";

		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, (int) map.get("start"));
			psmt.setInt(2, (int) map.get("end"));
			rs = psmt.executeQuery();
			System.out.print(sql);
			while(rs.next()) {
				CaDTO dto = new CaDTO();
				dto.setNum(rs.getString("num"));
				dto.setId(rs.getString("id"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setGoodcount(rs.getString("goodcount"));
				bbs.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bbs;
	}

	public int selectCount(Map<String, Object> map) {
		int totalcount = 0;
		String sql = "SELECT COUNT(*) FROM caboard";
	
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

	public int updateGoodCount(String num) {
		int rs=0;
		String sql = "update caboard set goodcount = goodcount + 1 ";
			sql += " where num = ?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, num);
			rs = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public CaDTO selectView(String id) {
		CaDTO dto = new CaDTO();
		String sql = "select * from caboard "
				+ "where id= ?";
		System.out.println(sql);
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setGoodcount(rs.getString("goodcount"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int updateEdit(CaDTO dto) {
		int totalcount = 0;
		String sql = "UPDATE caBOARD SET CONTENT =? WHERE id=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getContent());
			psmt.setString(2, dto.getId());
			totalcount = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}
	
	public int deletePost(int num) {
		int totalcount = 0;
		String sql = "Delete from caBOARD WHERE num=?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, num);
			totalcount = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	
}
