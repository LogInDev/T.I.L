package helloClass;

public class Car2 {
	//속성, 정적, 명사, (멤버) 변수, new 인스턴스 변수(new해야 만들어지므로)
	//클래스 변수 
	//- 공통적으로 적용될 때 사용.해서 수정 못하게 상수값으로 final과 같이 사용됨.
	String company = "현대";
	String color;
	String type;
	
	
	//기본생성자
	
	public Car2() {
		//기본생성자를 불렀을 때 문자열 3개를 받을 수 있는 생성자를 불러줘
		this("현대","red","스포츠카");
		//위에 16라인과 같은 의미
//		company = "현대";
//		color = "red";
//		type="스포츠카";
	}



	
	//전체 필드를 오버로딩한 생성자
	public Car2(String company, String color, String type) {
		
		this.company = company;
		this.color = color;
		this.type = type;
	}

	//Source - Generate toString()
	@Override//잘 찍혀있는지 빨리 확인하기 위해서
	public String toString() {
		return "Car2 [color=" + color + ", type=" + type + ", company=" + company + "]";
	}

	

	
}
