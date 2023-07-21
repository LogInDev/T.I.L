package helloInterface;

public class AnimalTest {

	public static void main(String[] args) {
		Animal eagle = new Eagle();
		eagle.sleep();
		//eagle.eat(); - 상위 타입 변수여서 하위 타입만 갖고 있는 메소드는 사용 불가
		Eagle e = (Eagle)eagle;
		e.sleep();
		e.eat();

	}

}
