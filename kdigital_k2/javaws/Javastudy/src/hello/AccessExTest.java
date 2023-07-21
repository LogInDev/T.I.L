package hello;

import helloClass.AccessEx;
import helloClass.Singleton;

public class AccessExTest {

	public static void main(String[] args) {
		AccessEx ae = new AccessEx();
		int d = ae.d;//public
		
		Singleton s1 = Singleton.getInstance();
		Singleton s2 = Singleton.getInstance();
		System.out.println(s1==s2);
		
	}

}
