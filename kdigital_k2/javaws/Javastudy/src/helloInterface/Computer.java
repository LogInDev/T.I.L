package helloInterface;

import java.util.List;
import java.util.ArrayList;

public class Computer {

	public static void main(String[] args) {
		GraphicCard gc1 = new Amd();
		System.out.println("메모리 : " + gc1.MEMORY);
		
		//Amd로 생성
		gc1 = new Amd();
		gc1.prcess();

		GraphicCard gc2 = new Nvidia();
		//Nvidia로 생성
		gc2 = new Nvidia();
		gc2.prcess();
		
		List<GraphicCard> list = new ArrayList<GraphicCard>();
		list.add(gc1);
		list.add(gc2);
		
		GraphicCard g1 = list.get(0);
		
	}

}
