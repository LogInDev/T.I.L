package helloAPI;

public class Circle extends Shape {
	int r;
	
	public Circle() {
		this(1);
	}
	public Circle(int r) {
		super();
		this.r = r;
	}

	@Override
	double area() {
		return Math.PI*r*r;
	}

	@Override
	double length() {
		return 2*Math.PI*r;
	}

}
