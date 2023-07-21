package helloException;

public class ExceptionEx02 {

	public static void main(String[] args) {
		int number = 100;
		int result =0;
		
		for(int i=0;i<10;i++) {
			try {
				result = number / (int)(Math.random()*10);
				System.out.println(result);
			}catch (Exception e) { //자바스크립트에 "콜백", "콜백지옥"
				e.printStackTrace();//에러로 인한 멈춤은 없음.
			}
		}

	}

}
