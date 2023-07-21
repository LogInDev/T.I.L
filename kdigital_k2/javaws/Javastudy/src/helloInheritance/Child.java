package helloInheritance;

public class Child extends Parent{
	int x = 3000;
	public Child() {
		this(1000);
	}
	
	Child(int x){
		this.x = x;
	}
	@Override
	void run() {
		System.out.println("child running");
	}
	
	void game() {
		System.out.println("gamming.");
	}
	
}
