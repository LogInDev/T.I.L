package helloAPI;

import java.util.Vector;

public class VectorEX {

	public static void main(String[] args) {
		Vector list = new Vector();
		list.add(1.2);
		list.add(Math.PI);
		list.addElement(3.4);
		
		for(Object o: list) {
			System.out.println(o);
		}
		
		//num이 몇번째 리스트에 있는데
		double num = 3.4;
		int i = list.indexOf(num);
		System.out.println(i);//2
		if(i !=-1) {
			System.out.println(i);
		}
		
		//리스트에서 제거하기
		list.contains(num);
		boolean b = list.contains(num);
		if(b) {
			list.removeElement(num);
		}
		System.out.println(list);
	}

}
