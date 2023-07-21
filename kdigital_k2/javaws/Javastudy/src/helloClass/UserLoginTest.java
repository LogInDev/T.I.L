package helloClass;

public class UserLoginTest {

	public static void main(String[] args) {
		boolean rs = false;//변수는 미리 위에 초기화 해두는게 좋음
		String id = "hong";
		String pw = "0000";
		String name = "홍길동";
		
		LoginService ls = new LoginService();
//		rs = ls.isLogin(id, pw, name);
		
//		UserVo user = new UserVo();
//		user.setId(id);
//		user.setName(name);
//		user.setPw(pw);
		UserVo user = new UserVo(id,pw,name);
		rs = ls.isLogin(user);
		if(rs==true) {
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
		}
		
	}

}
