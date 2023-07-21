package helloInheritance;

public class TaxiTest {

	public static void main(String[] args) {

//		Taxi taxi = new Taxi();
//		taxi.go();
		Child c = new Child();
		System.out.println(c.getX());
		c = new Child(1000);
		System.out.println(c.getX());
		Parent p = new Child(3000);
		System.out.println(p.getX());
		p = new Parent(500);
		System.out.println(p.getX());

	}

}
