package helloException;

public class ExceptionTest6 {
	//DB를 접속하는 커넥터 메소들
	public void exceptionMethod() throws Exception{
		throw new Exception();
		
	}
	public static void main(String[] args) {
		ExceptionTest6 et6 = new ExceptionTest6();
		try {
			et6.exceptionMethod();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("호출한 메소드에서 예외처리함");
		}
	}
}
