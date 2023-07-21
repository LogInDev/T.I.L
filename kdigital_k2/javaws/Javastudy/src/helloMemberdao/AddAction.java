package helloMemberdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

import dbtest.JDBCUtil;

public class AddAction implements Action{
	

	@Override
	public void execute(Scanner sc) {
		// Add member
		System.out.println("AddAction");
		
		System.out.println("==회원 정보 입력==");
		System.out.print("ID>>");
		String id = sc.next();
		System.out.print("PW>>");
		String pw = sc.next();
		System.out.print("Name>>");
		String name = sc.next();
		System.out.print("Age>>");
		int age = sc.nextInt();
		System.out.print("Email>>");
		String email = sc.next();
		System.out.print("Date>>");
		String date = sc.next();
		
		
		
		Connection conn = null;
		PreparedStatement stmt = null;  //옛날 쿼리창
		int rs = 0;
		
		try {
			
			conn = JDBCUtil.getMySqlConnection();
			MemberDAO dao = new MemberDAO();
			MemberVO member = new MemberVO(id, pw, name, age, email, date);
			rs = dao.insertMember(member);
			System.out.println("rs : "+rs);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
					JDBCUtil.close(stmt, conn);
				
		}
		
		
		
		System.out.printf("%s,%s,%s,%s, %s, %s\n",id,pw,name,age, email, date);

	}
}
