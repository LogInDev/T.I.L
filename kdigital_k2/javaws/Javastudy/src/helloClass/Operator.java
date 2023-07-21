package helloClass;

public class Operator {
	//정의 하지 않으면 클래스 이름과 같은 기본 생성자 호출
//	 public Operator() {
//	}
	int speed;
	//메소드 오버로딩
	int multiple(int x, int y) {
		System.out.println("int, int");
		return x*y;
	}
	double multiple(double x, double y) {
		System.out.println("double, double");
		return x*y;
	}
	double multiple(int x, double y) {
		System.out.println("int, double");
		return x*y;
	}
	double multiple(double x, int y) {
		System.out.println("double, int");
		return x*y;
	}
}
