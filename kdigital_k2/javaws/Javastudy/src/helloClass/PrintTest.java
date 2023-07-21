package helloClass;

public class PrintTest {
	//1명씩 받겠다.
	void sutdentPrint(Student3 student) {
		PrintStrudent ps = new PrintStrudent();
		ps.print(student);
	}
	void sutdentPrint(Student []students) {
		for(Student student : students) {
		System.out.println(student.name);
		System.out.println(student.grade);
		System.out.println(student.department);
		}
	}
}
