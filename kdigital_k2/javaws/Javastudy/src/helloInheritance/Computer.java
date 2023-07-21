package helloInheritance;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Computer {

	public static void main(String[] args) {
		GraphicCard gc = new GraphicCard();
		gc.process();
		gc = new Amd();
		gc.process();
		gc = new Nvidia();
		gc.process();
		
		
		List list = new ArrayList();
		Map map = new HashMap();
		

	}

}
