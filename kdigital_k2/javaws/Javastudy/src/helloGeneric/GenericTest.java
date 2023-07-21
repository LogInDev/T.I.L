package helloGeneric;

import java.util.Arrays;

public class GenericTest {

	public static void main(String[] args) {
		Generic<String> gen = new Generic<String>();
		String[] ss = {"홍길동", "이순신", "강감찬"};
		gen.set(ss);
		gen.print();
		String[] arr = gen.get();
		for(String s:arr) {
			System.out.print(s+" ");
		}
		System.out.println();
		
		Generic<Integer> gen2 = new Generic<Integer>();
		Integer[] n = {1,2,3,4,5};
		gen2.set(n);
	}

}
