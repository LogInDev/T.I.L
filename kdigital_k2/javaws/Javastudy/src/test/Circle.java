package test;

public class Circle extends Shape{
	double r;

	Circle(double r){
		this.r = r;
	}
	@Override
	double calcArea() {
		return r*Math.PI*r;
	}

}

class Rectangle extends Shape{
	double width;
	double height;
	Rectangle(double width, double height){
		this.width = width;
		this.height = height;
	}
	
	@Override
	double calcArea() {
		return width*height;
	}
	
	boolean isSquare() {
		if(width==height) return true;
		return false;
	}
}
