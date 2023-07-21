package hello;

public class InitBlockEx {

	    int x;
	    static int A ;
	    static {
	        test();
	        A++;
	        System.out.println("static block A : " + A);
	    }

	    {
	        instanceMethod();
	        x++;
	        System.out.println("instance block x  : " + x);
	    }

	    static void test() {
	        A++;
	        System.out.println("static method  A : " + A);
	    }

	    public InitBlockEx() {
	        instanceMethod();
	        x++;
	        System.out.println("contsructor A, x : " + A +"," + x);
	    }

	    private void instanceMethod() {
	        x++;
	        System.out.println("instance method x : " + x);
	    }
	


}
