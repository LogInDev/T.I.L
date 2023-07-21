package membership;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import common.JDBConnect;
import model1.board.BoardDTO;

public class MemberDAO extends JDBConnect{
	public MemberDAO() {
	}
	public MemberDAO(ServletContext application) {
		super(application);
	}
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "select * from member where id=? and pass=?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
//				dto.setId(rs.getString("id"));
//				dto.setPass(rs.getString("pass"));
//				dto.setName(rs.getString("name"));
//				dto.setRegidate(rs.getString("4"));
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				String regidate = rs.getString("regidate");
				dto = new MemberDTO(id, pass, name, regidate);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int selectCount(Map<String, Object> map) {
		int totalcount = 0;
		String sql = "SELECT COUNT(*) FROM member";
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

	public List<MemberDTO> selectList(Map<String, Object> map) {
		List<MemberDTO> bbs = new ArrayList<MemberDTO>();
		String sql = "select * from member ";
		if(map.get("searchWord") != null){
			sql += "where " + map.get("searchField") +" like ";
			sql += "'%" + map.get("searchWord") +"%'";
		}
		sql +=" order by regidate desc";
		System.out.print(sql);
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				bbs.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bbs;
	}

	public MemberDTO selectView(String id) {
		MemberDTO dto = new MemberDTO();
		String sql = "select * from member m "
				+ "where id= ?";
		System.out.println(sql);
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPass(rs.getString("pass"));
				dto.setEmail(rs.getString("email"));
				dto.setTel(rs.getString("tel"));
				dto.setRegidate(rs.getString("regidate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int updateEdit(MemberDTO dto) {
		int totalcount = 0;
		String sql = "UPDATE member SET pass =?, tel=?, name=?, email=? ";
			   sql += " WHERE id=?";
			   System.out.println(sql);
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getPass());
			psmt.setString(2, dto.getTel());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getId());
			totalcount = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}
	
	public int insertWrite(MemberDTO dto) {
		int totalcount = 0;
		String sql = "insert into member (id, pass, name, tel, email) ";
			sql +=" values (?, ?, ?, ?, ?)";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getEmail());
			totalcount = psmt.executeUpdate();
			//			totalcount =  rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}

	public int deletePost(String id) {
		int totalcount = 0;
		String sql = "Delete from member WHERE id=?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			totalcount = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalcount;
	}
	
	public int selectTitle(String id) {
		int totalcount = 0;
		String sql = "SELECT COUNT(*) as cnt FROM BOARD b "
				+ " WHERE id= ?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
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

	public List<MemberDTO> selectListPage(Map<String, Object> map) {
		List<MemberDTO> bbs = new ArrayList<MemberDTO>();
		String sql = "SELECT * FROM ";
				sql += "(SELECT tb.*, rownum rNum FROM ";
			sql += "	(SELECT * FROM member  ) tb ) ";
			sql += " WHERE rNum BETWEEN ? AND ?";

		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, (int) map.get("start"));
			psmt.setInt(2, (int) map.get("end"));
			rs = psmt.executeQuery();
			System.out.print(sql);
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				bbs.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bbs;
	}
	
}
