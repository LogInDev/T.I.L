package helloAPI;

public class ObjTest {

	public static void main(String[] args) {
		Obj obj1 = new Obj(100);
		Obj obj2 = new Obj(100);
		System.out.println(obj1 == obj2);
		System.out.println(obj1.equals(obj2));
		
		Obj obj3 = obj1;
		System.out.println(obj1 ==obj3);
		System.out.println(obj1.equals(obj3));
		
		ObjOverride oo1 = new ObjOverride(100);
		ObjOverride oo2 = new ObjOverride(100);
		System.out.println(oo1 == oo2);
		System.out.println(oo1.equals(oo2));
	
		
	}

}
