package helloClass;

public class Hello {
	int n= 0;//멤버 변수(인스턴스 변수 - new해야 사용가능해서)
	
	public static void main(String[] args) {
		//JVM이 Hello.main 호출함(static이여서 전역메소드이므로 어디서든 부를수 있음
		int n=10;//main메소드 안에 지역변수
		{
			int a= 100;
			// 지역변수 내에서는 상위블록에 있는건 하위 블록에 사용 가능
			//int n=100; //은 에러
		}
	
		
		System.out.println(n);

	}

}
