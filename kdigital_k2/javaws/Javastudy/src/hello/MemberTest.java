package hello;

public class MemberTest {

	public static void main(String[] args) {
		//생성자는 같은 주소에 만들어 지지 않는다.
		Member m = new Member();
		Member m2 = new Member();
		if(m==m2) {
			System.out.println("==");
		}else {
			System.out.println("!=");
		}

	}

}
