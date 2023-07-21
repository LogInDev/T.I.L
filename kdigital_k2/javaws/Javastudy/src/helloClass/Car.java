package helloClass;

public class Car {
	//속성, 정적, 명사, (멤버) 변수, new 인스턴스 변수(new해야 만들어지므로)
	String color;
	String type;
	
	//클래스 변수 
	//- 공통적으로 적용될 때 사용.해서 수정 못하게 상수값으로 final과 같이 사용됨.
	static String company = "현대";
	
	//기본생성자
	
	public Car() {
		
	}
	
	public Car(String color, String company) {
		super();
		this.color = color;
		this.company = company;
	}
	
	public Car(String color, String type, String company) {
		super();
		this.color = color;
		this.type = type;
		this.company = company;
	}

	//기능, 동적, (멤버) 메소드, new 인스턴스 메소드
	void go() {
		System.out.println(company + " "+color + " "+type+" go");
	}
	
	void back() {
		System.out.println("back");
	}
	
	static void allGo(Car[] cars) { 
		//3번주소에있는 배열과 3번배열에 들어있는 car1, car2를 대입
		for(Car car:cars) {
			car.go();//car1로 부를 수 있는 메소드, 필드 다 부를 수 있다.
		}
	}
}
