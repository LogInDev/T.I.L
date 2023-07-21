package helloCollection;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class ListIteratorEx {

	public static void main(String[] args) {

		List list = new ArrayList();
		for(int i=1;i<6;i++) {
			list.add(i);
		}
		//ListIterator객체 생성
		ListIterator lit = list.listIterator();
		//다음요소 반복 출력
		while (lit.hasNext()) {
			System.out.println("next : "+lit.next());
		} //커서가 BOF -> EOF로 이동
		
		//이전 요소 반복 출력
		while(lit.hasPrevious()) {
		System.out.println("pre : "+lit.previous());
		}//커서가 EOF->BOF로 이동
	}

}
