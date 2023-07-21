package membership;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO extends JDBConnect {
	public MemberDAO() {
		super();
	}
    // 명시한 데이터베이스로의 연결이 완료된 MemberDAO 객체를 생성합니다.
    public MemberDAO(String drv, String url, String id, String pw) {
        super(drv, url, id, pw);
    }

    // 명시한 아이디/패스워드와 일치하는 회원 정보를 반환합니다.
    public MemberDTO getMemberDTO(String uid) {
        MemberDTO dto = new MemberDTO();  // 회원 정보 DTO 객체 생성
        String query = "SELECT * FROM member WHERE id=?";  // 쿼리문 템플릿

        try {
            // 쿼리 실행
            psmt = con.prepareStatement(query); // 동적 쿼리문 준비
            psmt.setString(1, uid);    // 쿼리문의 첫 번째 인파라미터에 값 설정
            rs = psmt.executeQuery();  // 쿼리문 실행

            // 결과 처리
            if (rs.next()) {
            	String id = rs.getString("id");
            	String pass = rs.getString("pass");
            	String name = rs.getString("name");
            	String regidate = rs.getString("regidate");
            	String tel = rs.getString("tel");
            	String email = rs.getString("email");            	
            	dto.setId(id);
            	dto.setPass(pass);
            	dto.setName(name);
            	dto.setRegidate(regidate);
            	dto.setTel(tel);
            	dto.setEmail(email);
            	
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        return dto;  // DTO 객체 반환
    }


	public List<MemberDTO> selectList() { // 게시물 목록(검색 포함)
		List<MemberDTO> bbs = new ArrayList<MemberDTO>();	
		String sql = "SELECT * FROM MEMBER ";
		
		sql += " ORDER BY regidate desc ";
		
		System.out.println(sql);
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {				
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setRegidate(rs.getString("regidate"));
				bbs.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bbs;		
	}
	
	


}