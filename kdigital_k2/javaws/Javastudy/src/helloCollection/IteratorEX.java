package helloCollection;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;

public class IteratorEX {

	public static void main(String[] args) {
		// Iterator 객체 선언
		Iterator it = null;
		
		// List 객체와 Set 객체 생성
		List list = new ArrayList(); //인덱스 O(순서O) ,중복데이터 허용
		Set set = new HashSet();  //인덱스X(순서X), 중복데이터 X
		Vector vector = new Vector(); //ArrayList의 과거 버전
		
		// list와 set에 5개의 값 추가
		for(int i=1;i<=5;i++) {
			list.add(i); //int => Integer
			set.add(i); 
			vector.add(i);
		}
		
		//잘 들어갔는지 확인해보기
//		System.out.println(list);
//		System.out.println(set);
		
		// list에서 Iterator 객체로 생성(Iterator로 사용하기 위해)
		it = list.iterator();
		//출력
		iteratorPrint(it);
		
		//set->Iterator 객체로 생성
		it= set.iterator();
		//출력
		iteratorPrint(it);
		
		//vector->Iterator
		it= vector.iterator();
		//출력
		iteratorPrint(it);
		Enumeration en = vector.elements();
		while (en.hasMoreElements()) {   //.hasMoreElements() = .hasNext() - 역할이 같음.
			Object object = (Object) en.nextElement();
			System.out.println(object);
		}
		
		
	}
		//Iterator객체 출력 메소드 생성
		private static void iteratorPrint(Iterator it) {
			//while - iterator with iterator
			while (it.hasNext()) {  //.hasNext - 다음에 데이터가 있으면(true) 없으면(false)
				Object object = (Object) it.next();
				System.out.print("t"+object+"");
				it.remove();  
			}
			System.out.println();
	}

}
