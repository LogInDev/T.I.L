package helloInterface;

public class InterFaceTest {

	public static void main(String[] args) {
		//static method
		InterfaceEx.printPrice(0);
		
		//impl
		InterfaceExImpl ie = new InterfaceExImpl();
		ie.getSalePrice(0);
		
		ie.meanPrice();
		ie.totalPrice();

	}

}
