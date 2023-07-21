package helloClass;

import hello.maincmd;

public class OperatorTest {
	static int age;
	void infors() {
		age++;
	}
	public static void main(String[] args) {
		Operator op = new Operator();
		int i = op.multiple(10, 10);
		System.out.println(i);
		double i1 = op.multiple(10.0, 10);
		System.out.println(i1);
		double i2 = op.multiple(10, 12.1);
		System.out.println(i2);
		double i3 = op.multiple(15.3, 12.1);
		System.out.println(i3);
		
		age = 10;
		maincmd cmd = new maincmd();
		op.speed = 10;
	

	}
	

}
