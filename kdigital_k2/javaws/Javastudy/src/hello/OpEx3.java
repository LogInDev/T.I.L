package hello;

public class OpEx3 {

	public static void main(String[] args) {
		int a = 10;
		int b=0;
		
		a = a+1;
		a += 1;
		++a;
		a--;
		System.out.println(a);
		
		a = 10;
		b = a++;
		System.out.println(a+"," +b);
		b = ++a;
		System.out.println(a+"," +b);

	}

}
