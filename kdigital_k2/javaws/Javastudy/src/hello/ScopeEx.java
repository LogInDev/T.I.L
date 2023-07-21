package hello;

public class ScopeEx {
//	int no;
	public static void main(String[] args) {
//		String name;
//		if(true) {
//			name = "홍길동";
//			String email = "hong@test.com";
//		}
//		email = "hong@test.com";
		
		String cupA = "red";
		String cupB = "blue";
		String temp = cupA;
		cupA = cupB;
		cupB = temp;
		System.out.println(cupA);
		System.out.println(cupB);
	}

}
