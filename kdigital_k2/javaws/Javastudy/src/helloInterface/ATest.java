package helloInterface;

public class ATest {

	public static void main(String[] args) {
		A a = new AAA();
		AA aa = new AAA();
		AAA aaa = new AAA();

		
		A b = new ABB();
		AB ab = new ABB();
		ABB abb = new ABB();
		
//		AB ab2 = new AAA();
		System.out.println(a instanceof A);
		System.out.println(aa instanceof A);
		System.out.println(aaa instanceof A);

		System.out.println(aaa instanceof AB);
		System.out.println(aaa instanceof Object);
	}

}
