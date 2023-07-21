package helloMember;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

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
		String age = sc.next();
		System.out.print("Email>>");
		String email = sc.next();
		System.out.print("Tel>>");
		String tel = sc.next();
		
		
		System.out.printf("%s,%s,%s,%s,%s,%s\n",id,pw,name,age,email,tel);
		
//		member.setId(id);
//		member.setPw(pw);
//		member.setName(name);
//		member.setAge(age);
//		MemberMain.members.add(member);
		
		FileWriter fw = null;
		String file = "./data/member1.txt";
		try {
			fw = new FileWriter(file,true);
			String member1 = id+","+pw+","+name+","+age+","+email+","+tel+"\n";
			fw.write(member1);
			
			//String.join() 사용하기
//			String[] datas = {id, pw, name, age};
//			String.join("|", datas);
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		
//		int m =MemberMain.members.length;
//		MemberVO[] tmp = new MemberVO[m+1];
//		for(int i=0;i<m;i++) {
//			tmp[i] = MemberMain.members[i];
//		}
//		tmp[tmp.length-1]=member;
//		MemberMain.members = tmp;
	}
}
