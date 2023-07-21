package hello;

public class OpEx5 {

	public static void main(String[] args) {

		int a = 10;
		int b = 5;
		
		System.out.println(a > b && a ==10);
		System.out.println(a > b && a ==b);
		
		System.out.println(a > b || a ==10);
		System.out.println(a > b || a ==b);
		
		System.out.println(a > b ^ a ==10);
		System.out.println(a > b ^ a ==b);
		
		System.out.println(!(a > b));
		System.out.println(!(a < b));
		System.out.println(!(a < b));
	
	}

}
