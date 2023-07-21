package test;

public class testt {

	public static void main(String[] args) {
		Unit u = new Tank();
		Tank t = (Tank)u;
		t.num = 10;
		System.out.println(t.num);
		
	}	
}
class Unit {}
class AirUnit extends Unit {}
class GroundUnit extends Unit {}
class Tank extends GroundUnit {
	int num;
}
class AirCraft extends AirUnit {}


