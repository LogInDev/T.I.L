package hello;

public class OpEx1 {

	public static void main(String[] args) {
		int number1 = 10;
		System.out.println("number1 = 10 ->  + number1");
		
		int number2 = number1;
		System.out.printf("(number1, number2) -> (%s,%s)\n", number1, number2);
		
		number1 = number1 + 10;
		number1 += 10;
		System.out.println("number1 +=10 -> " + number1);
		
		number1 = number1 - 10;
		number1 -= 10;
		System.out.println("number1 -=10 -> " + number1);
		
		number1 = number1 *2;
		number1 *= 2;
		System.out.println("number1 *2 -> " + number1);
		
		number1 = number1 /2;
		number1 /=2;
		System.out.println("number1 /=2 -> " + number1);
		
		number1 = number1 %3;
		number1 %=3;
		System.out.println("number1 %=3 -> " + number1);
		
		

	}

}
