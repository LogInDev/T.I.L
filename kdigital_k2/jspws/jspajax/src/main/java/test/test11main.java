package test;

public class test11main {
	public static void main(String[] args) {
		test11 a = new test11(); //static, instance 초기화 블록 둘 다 출력
		test11 a1 = new test11(); 
		//instance 초기화 블록만 출력(static 초기화 블록은 출력X)    
	}

}
