package hello;

import java.util.Scanner;

public class OpEx4_1 {

	public static void main(String[] args) {
		String myName = new String("foo");
		String yourName = new String("foo");
		System.out.println(myName == yourName);
		System.out.println(myName.equals(yourName));
		
		System.out.println(myName.hashCode() + "/" + yourName.hashCode());
		System.out.println(System.identityHashCode(myName));
		System.out.println(System.identityHashCode(yourName));
		
		Scanner sc = new Scanner(System.in);
		myName = sc.next();
		yourName = sc.next();
		System.out.println(myName == yourName);
		System.out.println(myName.equals(yourName));
		System.out.println(myName.hashCode() + "/" + yourName.hashCode());
		System.out.println(System.identityHashCode(myName));
		System.out.println(System.identityHashCode(yourName));
	}

}
