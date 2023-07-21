package helloClass;

public class Local {
	//멤버변수
	String name;
	Car car; //Car클래스를 만들어 놔서 사용 가능.
	
	//멤버 메서드
	void process() {
		name = "홍길동";
	}
	void printAge1() {
		//지역변수
		int age = 20;
		System.out.println(age);
	}
	void printAge2() {
		//지역변수(다른 블록이면 똑같은 변수명 사용가능)
		int age = 30;
		System.out.println(age);
	}
	//가변인자 메소드 - 사용은 배열 처럼
	void printInfo(String ...infos) {
		System.out.println(infos[0]);
//		if(infos.length ==0) {
//			System.out.println("인자가 없네요.");
//		}else {
//			for(String s:infos) {
//				System.out.println(s);
//			}
//		}
	}
	void printInfo2(String []infos) {
		if(infos.length ==0) {
			System.out.println("인자가 없네요.");
		}else {
			for(String s:infos) {
				System.out.println(s);
			}
		}
	}
}
