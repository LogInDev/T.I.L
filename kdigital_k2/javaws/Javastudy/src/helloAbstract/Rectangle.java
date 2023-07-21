package helloAbstract;

public class Rectangle extends Shape{
	int high;
	int weight;
	
	public Rectangle(int high, int weight) {
		super("rectangel");
		this.high = high;
		this.weight = weight;
	}

	@Override
	double area() {
		return high * weight;
	}

	@Override
	double length() {
		return 2*(high+weight);
	}
	
	
}
