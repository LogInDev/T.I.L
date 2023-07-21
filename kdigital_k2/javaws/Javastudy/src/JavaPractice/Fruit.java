package JavaPractice;

public class Fruit {
	public String name;
	public int price;
	public Fruit(String name, int price) {
		super();
		this.name = name;
		this.price = price;
	}
	@Override
	public String toString() {
		return "Fruit [name=" + name + ", price=" + price + "]";
	}
	
	
}
