package helloInheritance;

public class Parent {
	int x = 100;
	
	public Parent() {
		this(200);
	}
	
	Parent (int x){
		this.x = x;
	}
	int getX() {
		return x;
	}
	
	void run() {
		System.out.println("running");
	}
}
