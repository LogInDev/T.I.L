package helloAPI;

public class Rectangle extends Shape{
	int w,h;
	
	public Rectangle() {
		this(1,1);
	}
	
	public Rectangle(int w, int h) {
		this.w = w;
		this.h = h;
	}

	@Override
	double area() {
		return w*h;
	}

	@Override
	double length() {
		return 2*(w+h);
	}

}
