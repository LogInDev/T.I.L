package helloMember;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class UpdateAction implements Action{

	@Override
	public void execute(Scanner sc) {
		FileReader fr = null;
		BufferedReader bfr = null;
		List<String> rData = new ArrayList<String>();
		String file = "./data/member1.txt";
		try {
			fr=new FileReader(file);
			bfr = new BufferedReader(fr);
			String str = null;
			while ((str=bfr.readLine())!=null) {
				rData.add(str);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				fr.close();
				bfr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		//List rData -> List members
		List<MemberVO> members = new ArrayList<MemberVO>();
		MemberVO member = null;
		for(String data: rData) {
			String [] dArr = data.split(",");
			String id = dArr[0];
			String pw = dArr[1];
			String name = dArr[2];
			int age = Integer.parseInt(dArr[3]);
			String email = dArr[4];
			String tel = dArr[5];
			member = new MemberVO(id, pw, name,age,email,tel);
			members.add(member);
		}
		
		
		
		// Update
		// 수정할 ID 찾기
		System.out.println("UpdateAction");
		System.out.println("수정할 ID :");
		String id = sc.next();
		for(MemberVO m: members) {
			if(m.getId().equals(id)) {
				member =m;
				break;
			}
		}

		//수정할 데이터 입력
		if(member!=null) {
			System.out.println("기존 PW: "+member.getPw());
			System.out.print("수정 PW: ");
			String pw = sc.next();
			System.out.println("기존 Name : "+member.getName());
			System.out.print("수정 Name : ");
			String name = sc.next();
			System.out.println("기존 Age : "+ member.getAge());
			System.out.print("수정 Age : ");
			int age = sc.nextInt();
			System.out.println("기존 Email : "+member.getEmail());
			System.out.print("수정 Email : ");
			String email = sc.next();
			System.out.println("기존 Tel : "+member.getTel());
			System.out.print("수정 Tel : ");
			String tel= sc.next();
			
		// 수정할 데이터 적용
			member.setPw(pw);
			member.setName(name);
			member.setAge(age);
			member.setEmail(email);
			member.setTel(tel);
//적용X - new연산자로 새로운 주소 생성해서 member의 기존 주소값에 새로운 주소값이 대입됨
		//	member= new MemberVO(id, pw, name, age);
			
		}else System.out.println("수정할 ID가 없습니다.");
		
		//members List -> File
		FileWriter fw = null;
		try {
			fw = new FileWriter(file);
			for(MemberVO m: members) {
				String data = m.toString()+"\n";
				fw.write(data);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}