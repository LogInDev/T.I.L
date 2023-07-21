package helloLambda;

public class LambdaEX {

	public static void main(String[] args) {
		//익명함수
		LambdaInterface li = () -> {
			String str = "Hello World!!";
			System.out.println(str);
		}; //실행작업이 여러가지 일 땐 중괄호{}+세미콜론;
		li.print();
	
	}
}

interface LambdaInterface{
	void print();
//	void print2();
}