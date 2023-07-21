package helloInheritance;

public class SmartPhone extends Phone{
	//자식 클래스의 기본생성자 해서 생략가능
//	public SmartPhone() {
//		super();//부모의 기본생성자 호출 - 생략가능
//	}
//	public SmartPhone() {
//		super("스마트폰");//부모 클래스에 오버로딩한 생성자가 있어서 생략불가!
//	}
	
	public void installApp() {
		System.out.println("앱 설치");
	}
}
