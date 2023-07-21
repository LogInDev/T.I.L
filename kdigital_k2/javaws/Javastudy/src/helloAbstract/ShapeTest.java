package helloAbstract;

import java.util.ArrayList;

public class ShapeTest {

	public static void main(String[] args) {
		System.out.println("hhhhhhhhhhhhhh");
		Circle2 c2 = new Circle2(10);
		System.out.println(c2.area());
		System.out.println(c2.length());
		
		Shape s = new Circle2(10);
		System.out.println(s.area());
		System.out.println(s.length());
		
		Rectangle r1 = new Rectangle(5, 4);
		System.out.println(r1.area());
		System.out.println(r1.length());
		
		Shape s2 = new Rectangle(5, 4);
		System.out.println(s2.area());
		System.out.println(s2.length());
		
		//array
		Shape[] sArr = new Shape[4];
		sArr[0] = c2;
		sArr[1] = s;
		sArr[2] = r1;
		sArr[3] = s2;
		for(int i =0;i<sArr.length;i++) 
			System.out.println(sArr[i]);
		for(Shape sp:sArr)
			System.out.println(sp);
		
		
		//ArrayList
		ArrayList list1 = new ArrayList();
		list1.add(c2);
		list1.add(s);
		list1.add(r1);
		list1.add(s2);
		for(int i = 0;i<list1.size();i++)
			System.out.println(list1.get(i));
		
		for (Object sp:list1)
			System.out.println((Shape)sp);
	}

}
