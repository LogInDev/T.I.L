package membership;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Test {

	public static void main(String[] args) {
		MemberDAO dao = new MemberDAO();
		dao.getMemberDTO("hong", "2222");
		Connection con = dao.con;
		ResultSet rs = null;
		String sql = "select * from member";
		try {
			PreparedStatement psmt = con.prepareStatement(null);
			rs = psmt.executeQuery();
			List<MemberDTO> members = new ArrayList<MemberDTO>();
			while(rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				String regDate = rs.getString("regidate");
				System.out.printf("%s, %s, %s, %s", id, pass, name, regDate);
				MemberDTO dto = new MemberDTO(id, pass, name, regDate); 
				members.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
