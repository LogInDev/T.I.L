package helloClass;

public class Student3 {
	//private이 없으면 default접근제어자라고함 - 접근가능
	private String name;
	private int grade;
	private String department;
	
	public Student3() {
		
	}
	
	public Student3(String name, int grade, String department) {
		super();
		this.name = name;
		this.grade = grade;
		this.department = department;
	}

	//private 멤버 변수 가져오기(리턴값필요)
	String getName(){
		//this생략 가능
		return this.name;
	}

	@Override
	public String toString() {
		return "Student3 [name=" + name + ", grade=" + grade + ", department=" + department + "]";
	}

	//private 멤버 변수에 대입하기. 해서 리턴값이 필요없음
	void setName(String name) {
		
			this.name = name;
		
	}

	int getGrade() {
		return this.grade;
	}
	
	void setGrade(int grade) {
		this.grade = grade;
	}
	
	String getDepartment() {
		return this.department;
	}
	
	void setDepartment(String department) {
		this.department = department;
	}

	
	
}
