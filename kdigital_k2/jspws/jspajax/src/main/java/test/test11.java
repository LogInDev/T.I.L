package test;

public class test11 {
	 int x;
	    static int A ;

			// static 초기화 블록(클래스 인스턴스 생성시 한 번 실행됨
			//- 객체 없이 사용 가능한 static 변수와 메소드만 사용가능
	    static {
	        test();
	        A++;
	        System.out.println("static block A : " + A);
	    }
			
			// instance 초기화 블록
	    {
	        instanceMethod();
	        x++;
	        System.out.println("instance block x  : " + x);
	    }

	    static void test() {
	        A++;
	        System.out.println("static method  A : " + A);
	    }

	    public test11() {
	        instanceMethod();
	        x++;
	        System.out.println("contsructor A, x : " + A +"," + x);
	    }

	    private void instanceMethod() {
	        x++;
	        System.out.println("instance method x : " + x);
	    }
}
