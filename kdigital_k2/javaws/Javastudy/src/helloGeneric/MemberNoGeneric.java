package helloGeneric;

import java.util.ArrayList;
import java.util.List;

public class MemberNoGeneric {

	public static void main(String[] args) {
		// 제네릭을 사용하지 않은 경우
//		List list = new ArrayList();
//		
//		Member mem1 = new Member();
//		mem1.setName("홍길동");
//		mem1.setId("hong");
//		mem1.setPassword("hong1234");
//		mem1.setAge(40);
//		
//		list.add(mem1);
//		
//		Member mem2 = new Member();
//		mem2.setName("이순신");
//		mem2.setId("lee");
//		mem2.setPassword("lee1234");
//		mem2.setAge(50);
//		
//		list.add(mem2);
//		
//		Member mem3 = new Member();
//		mem3.setName("김유신");
//		mem3.setId("kim");
//		mem3.setPassword("kim1234");
//		mem3.setAge(60);
//		
//		list.add(mem3);
//		
//		//list 개수
//		System.out.println(list.size());
//		System.out.println();
//		
//		//Member로 강제 변환 후 출력
//		for(int i=0; i<list.size();i++) {
//			System.out.println(i+" : "+ ((Member)list.get(i)).getName()
//					+" "+ ((Member)list.get(i)).getId()
//					+ " "+((Member)list.get(i)).getPassword()
//					+" "+ ((Member)list.get(i)).getAge());
//		}
		
		//Member 제네릭을 사용한 경우
		List<Member> list = new ArrayList<Member>();
		
		Member mem1 = new Member();
		mem1.setName("홍길동");
		mem1.setId("hong");
		mem1.setPassword("hong1234");
		mem1.setAge(40);
		
		list.add(mem1);
		
		Member mem2 = new Member();
		mem2.setName("이순신");
		mem2.setId("lee");
		mem2.setPassword("lee1234");
		mem2.setAge(50);
		
		list.add(mem2);
		
		Member mem3 = new Member();
		mem3.setName("김유신");
		mem3.setId("kim");
		mem3.setPassword("kim1234");
		mem3.setAge(60);
		
		list.add(mem3);
		//list 개수
		System.out.println(list.size());
		System.out.println();
		
		//Member로 강제 변환 후 출력
		for(int i=0; i<list.size();i++) {
			System.out.println(i+" : "+ list.get(i).getName()
					+" "+ list.get(i).getId()
					+ " "+list.get(i).getPassword()
					+" "+ list.get(i).getAge());
		}
		
	}

}
