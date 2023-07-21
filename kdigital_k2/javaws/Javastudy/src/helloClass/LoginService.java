package helloClass;

public class LoginService {
	String id = "hong";
	String pw = "0000";
	
	
	boolean isLogin(String id, String pw, String name) {
		boolean rs = false;// 실패
	
		if(id.equals(this.id)) {
			if(pw.equals(this.pw)) {
				System.out.println("Welcom!! " +name);
				rs = true;
			} else {
				System.out.println("pw가 틀립니다.");
			}
		} else {
			System.out.println("id가 없어요");
		}
		
		return rs;
	}
	//isLogin()의계속 매개값이 늘어남 - 되도록 참조변수로가져오자
		
	
	boolean isLogin(UserVo user) {
		boolean rs = false;// 실패
		// 일반 변수로 바꿔서 보면 더 보기 편함.
		String id = user.getId();
		String pw = user.getPw();
		String name = user.getName();
		if(id.equals(this.id)) {
			if(pw.equals(this.pw)) {
				System.out.println("Welcom!! " +name);
				rs = true;
			} else {
				System.out.println("pw가 틀립니다.");
			}
		} else {
			System.out.println("id가 없어요");
		}
		
		return rs;
	}
}
