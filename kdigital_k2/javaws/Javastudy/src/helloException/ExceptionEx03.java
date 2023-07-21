package helloException;

public class ExceptionEx03 {

	public static void main(String[] args) {
		System.out.println(1);
		System.out.println(2);

		try {
			System.out.println(3);
			System.out.println(0/0);
			//에러발생 - catch블록으로 가서 다음 실행문은 실행X
			System.out.println(4);
		} catch (ArithmeticException e) {
			e.printStackTrace();//개발 단계에서 많이 사용
			System.out.println(e.getMessage());
		} catch (IndexOutOfBoundsException e) {
			System.out.println(5-1);
		} catch (Exception e) {
			System.out.println(5-2);
		}finally {
			System.out.println("finally");
		}
		System.out.println(6);
	}

}
