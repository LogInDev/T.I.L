package helloInheritance;

public class SutdaCard {
	int num;
	boolean isKwang;
	
	SutdaCard() {
	this(1, true);
	}
	
	SutdaCard(int num, boolean isKwang) {
	this.num = num;
	this.isKwang = isKwang;
	}
	
	// info() Object toString() . 대신 클래스의 을 오버라이딩했다
	public String toString() {
	return num + ( isKwang ? "K":"");
	}

}
