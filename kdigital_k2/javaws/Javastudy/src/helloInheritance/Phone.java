package helloInheritance;
//부모 클래스
public class Phone {
	String name;
	String color;
	String company;
	
	public Phone() {
		
	}
	
	public Phone(String name) {
		this.name = name;
	}
	
	void call() {
		System.out.println("전화를 건다");
	}
	void receive() {
		System.out.println("전화를 받다");
	}
}
