package helloClass;

public class CarTest {

	public static void main(String[] args) {
//		System.out.println(Car.company);
		
//		Car.company = "기아";
//		Car car1 = new Car();
//		car1.company = "현대";
//		car1.color = "red";
//		car1.type = "스포츠카";
//		car1.go();
//		
//		Car car2 = new Car();
//		Car.company = "BMW";
//		car2.color = "blue";
//		car2.type = "SUV";
//		car2.go();
		
//		int i =0;
//		int[] iArr = new int[2];
//		Car[] cArr = new Car[2];
//		cArr[0] = car1;
//		cArr[1] = car2;
//		
//		Car car3 = new Car();
//		car3.allGo(cArr);
//		Car.allGo(cArr);
//		---------------------------------------------------
		Car car1 = new Car();
		Car2 car2 = new Car2();
		Car2 car3 = new Car2("기아","blue", "승용차");
		System.out.println(car2.toString());//그냥 car2출력과 동일 결과
		System.out.println(car2);
//		System.out.println(car2.color);
//		System.out.println(car3);
		

	}

}
