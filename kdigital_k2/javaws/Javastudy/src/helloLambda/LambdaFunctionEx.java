package helloLambda;

public class LambdaFunctionEx {

	public static void main(String[] args) {
		InterfaceEx ie = (int x, int y) -> x +y;
		InterfaceEx ie2 = (int x, int y) -> x -y;
		System.out.println(ie.sum(1, 2));
		System.out.println(ie2.sum(1, 2));
	}
}

interface InterfaceEx{
	public int sum(int x, int y);
}