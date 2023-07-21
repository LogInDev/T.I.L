package helloMember;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class DeleteAction implements Action{

	@Override
	public void execute(Scanner sc) {
		FileReader fr = null;
		BufferedReader bfr = null;
		String file = "./data/member1.txt";
		List<String> rData = new ArrayList<String>();
		try {
			fr = new FileReader(file);
			bfr = new BufferedReader(fr);
			String str =null;
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
		
		//List<String> rData -> MemberVO
		MemberVO member = null;
		List<MemberVO> members = new ArrayList<MemberVO>();
		for(String data:rData) {
			String[]dArr = data.split(",");
			String id = dArr[0];
			String pw = dArr[1];
			String name = dArr[2];
			int age = Integer.parseInt(dArr[3]);
			String email = dArr[4];
			String tel = dArr[5];
			member = new MemberVO(id, pw, name,age,email,tel);
			members.add(member);
		}
		
		//Delete
		System.out.println("DeleteAction");
		System.out.println("삭제할 ID : ");
		String id = sc.next();
		int deleteIndex =-1;
		for(int i =0;i<members.size();i++) {
			if(members.get(i).getId().equals(id)) {
				deleteIndex =i;
				break;
			}
		}

		if(deleteIndex!=-1) {
			members.remove(deleteIndex);
			System.out.println(id+"가 삭제되었습니다.");
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
			
		}else System.out.println("삭제할 ID가 없습니다.");
		
		




//				MemberVO[] members = MemberMain.members;
//				MemberVO member = null;
//				int deleteIndex = -1;
//				for(int i=0;i<members.length;i++) {
//					if(members[i].getId().equals(id)) {
//						deleteIndex = i;
//						break;
//					}
//				}
//				if(deleteIndex != -1) {
//					MemberVO[] mArr = new MemberVO[members.length-1];
//		
//					for(int i=0;i<members.length;i++) {
//						if(i==deleteIndex) {
//							continue;
//		
//						}else if(i>deleteIndex) {
//							mArr[i-1] = members[i];
//						}else {
//							mArr[i] = members[i];
//						}
//					}
//					System.out.println(Arrays.toString(mArr));
//					MemberMain.members=mArr;
//		
//				}else System.out.println("삭제 할 ID가 없습니다.");
	}
}
