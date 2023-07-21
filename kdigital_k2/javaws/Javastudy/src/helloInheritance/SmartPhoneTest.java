package helloInheritance;

public class SmartPhoneTest {

	public static void main(String[] args) {
		Phone p = new Phone();
		p.name = "전화기";

		SmartPhone sp = new SmartPhone();
		sp.call();
		sp.receive();
		sp.installApp();
		sp.name = "스마트폰";
	}

}
