package helloInheritance;

public class PolyEx {

	public static void main(String[] args) {
		Child c = new Child();
		c.game();
		c.run();
//		c.walk();
		System.out.println();
		
		//UpCasting
		Parent p = new Child();
		p.run();// 재정의된 메소드가 출력됨.
//		p.walk();
//		p.game();
		System.out.println();
		
		//DownCating
		Child c2= (Child)p;
		c2.game();
		c2.run();
//		c2.walk();
	}

}
