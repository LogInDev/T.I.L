package hello;

public class Person {
	// 다른 패키지에서 사용하기 위해 public 붙여줌.
	public int age;
	//멤버 변수를 가지고 초기화한 생성자(오버로딩- 멤버변수를 초기화할 때 씀)(!=기본생성자)
	
	public Person(int age) {
		//멤버변수와 지역변수의 이름이 같은 때 this(그때 만들어진 그 object)를 붙여 구별을 한다.
		this.age = age;
		System.out.println(this);
	}
}
