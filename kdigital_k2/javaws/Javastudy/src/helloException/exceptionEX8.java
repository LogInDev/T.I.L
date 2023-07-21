package helloException;

import java.util.Scanner;

public class exceptionEX8 {
	static String user_id = "hong";
	static String user_pw = "1234";
 
	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("ID>>");
			String id = sc.next();
			System.out.println("PW>>");
			String pw = sc.next();
			if(!user_id.equals(id)) {
				throw new LoginException("ID가 틀림"); 
				//조건에 맞아 예외발생시 catch블록으로 감
			}else if(!user_pw.equals(pw)) {
				throw new LoginException("PW가 틀림");
				//조건에 맞아 예외발생시 catch블록으로 감
			}else {
				System.out.println("OK");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
	}

}
