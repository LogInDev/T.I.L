package helloClass;

public class Student {
	String name;
	int grade;
	String department;
	
	//오버로딩된게 하나라도 있으면 기본생성자는 자동으로 못 부름
	//(생략불가 - 기본생성자 쓰려면 명시해줘야함)
	public Student() {
		
	}

	public Student(String n) {
		name =n;
	}
	public Student(String n, int g) {
		name =n;
		grade = g;
	}
	
	//사용자가 넣어준 이름으로 멤버를 초기화
	public Student(String name, int grade, String department) {
		super();//부모님의 생성자를 호출하는 키워드 - 생략가능.
		this.name = name;
		this.grade = grade;
		this.department = department;
	}
}
