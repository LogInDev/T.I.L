package test;

import java.util.Arrays;

public class Test {

	public static void main(String[] args) {
		int x = 10;
		int[]y = {1,2,3};
		Dog dog1 = new Dog("덕구");
		Dog dog2 = new Dog("뎅뎅이");
		input(x,y,dog1,dog2);
		//x, y, dog1.getName(), dog2.getName()
		System.out.println(x);
		System.out.println(Arrays.toString(y));
		System.out.println(dog1.getName());
		System.out.println(dog2.getName());
	}
	
	static void input(int x, int[]y,Dog dog1, Dog dog2) {
		x++;
		y[0]++;
		dog1 = new Dog("덕팔이");
		dog2.setName("붕붕이");
		
	}

}
