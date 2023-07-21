package helloClass;

public class StudentTest {

	public static void main(String[] args) {
		//기본으로 만들고 필요한 애들 세팅
		Student s1 = new Student();
		s1.name = "홍길동";
		s1.grade = 3;
		s1.department = "컴퓨터";
		
		//애초에 세팅으로 만듦
		Student s2 = new Student("홍길동");
		Student s3 = new Student("홍길동",3);
		Student s4 = new Student("홍길동",3,"컴퓨터");
//				System.out.println(s1.name);
		Student S3 = s1;
		Student S2 = new Student("이순신" ,4, "장군");
		PrintTest pt = new PrintTest();
		Student[] sArr = new Student[2];
		sArr[0] = s1;
		sArr[1] = S2;
		pt.sutdentPrint(sArr);
//		pt.sutdentPrint(S2);
		
	}

}
