package helloMemberdao_T;

import java.util.List;
import java.util.Scanner;

public class ListAction implements Action{

	@Override
	public void execute(Scanner sc) {
		MemberDAO dao = new MemberDAO();
		List<MemberVO> members = dao.getMemberList();
		
		System.out.printf("현재 회원 수 : " + members.size() + "\n");
        for(MemberVO m: members) {
            System.out.print("ID: " + m.getId() +" / ");
            System.out.print("PW: " + m.getPw() +" / ");
            System.out.print("Name: " + m.getName() +" / ");
            System.out.print("Age: " + m.getAge() );
            System.out.println();
        }
	}
}