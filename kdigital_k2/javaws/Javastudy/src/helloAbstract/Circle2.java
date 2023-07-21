package helloAbstract;

public class Circle2 extends Shape{
	int r;
	public Circle2(int r) {
		super("circle");
		this.r = r;
	}
	@Override
	double area() {
		//pi*r*r
		return Math.PI*r*r;
	}
	@Override
	double length() {
		//2*pi*r
		return 2*Math.PI*r;
	}

}
