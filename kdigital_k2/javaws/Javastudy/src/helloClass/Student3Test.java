package helloClass;

public class Student3Test {

	public static void main(String[] args) {
		Student3 s1 = new Student3();
		s1.setName("홍길동");//set이여서 리턴값 없음
		s1.setGrade(3);//set이여서 리턴값 없음
		s1.setDepartment("컴공");//set이여서 리턴값 없음
		System.out.println(s1); //- 오버라이드한 toString 호출
		System.out.println(s1.getName()); //- 필요한 정보 get으로 호출
		System.out.println(s1.getGrade()); //- 필요한 정보 get으로 호출
		System.out.println(s1.getDepartment()); //- 필요한 정보 get으로 호출
		PrintTest pt = new PrintTest();
		pt.sutdentPrint(s1);
	}

}
