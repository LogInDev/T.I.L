package hello;

public class IntVarTest {

	public static void main(String[] args) {
		//변수 선언
		int i0;
		long l0;
		
		//변수 초기화
		i0 = 0;
		l0 = 0L; //0l 소문자 가능
		
		//변수 선언과 초기화
		int i1 = 1;
		long l1 = 1L; //1l 소문자 가능
		
		// 출력 : 주의 => 변수명과 문자열은 다름
		System.out.println("i0");
		System.out.println("l0");
		System.out.println("i1");
		System.out.println("l1");
		System.out.println("====");
		System.out.println(i0);
		System.out.println(l0);
		System.out.println(i1);
		System.out.println(l1);

	}

}
