package helloClass;

public class AccessExTest {

	public static void main(String[] args) {
		AccessEx ae = new AccessEx();
		int b = ae.b; // protected
		int c = ae.c; // default
		int d = ae.d; // public
		

	}

}
