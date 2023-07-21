package hello;

import java.util.Scanner;

public class OpEx4 {

	public static void main(String[] args) {
		 
//		int a = 10;
//		int b = 5;
//		
//		System.out.println(a > b);
//		System.out.println(a >= b);
//		System.out.println(a < b);
//		System.out.println(a <= b);
//		System.out.println(a == b);
//		System.out.println(a != b);
//		
//		boolean c = a ==b;
//		System.out.println("c = " + c);
//		boolean d = c ==false;
//		System.out.println("d = " + d);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("myName >");
		String myName = sc.next();
		System.out.println("yourName >");
		String yourName = sc.next();
		System.out.println("number >");
		int n = Integer.parseInt(sc.next());
		System.out.println(myName == yourName);
		System.out.println(myName.equals(yourName));

	}

}
