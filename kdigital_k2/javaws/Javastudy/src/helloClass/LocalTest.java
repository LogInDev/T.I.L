package helloClass;

public class LocalTest {

	public static void main(String[] args) {
		Local local = new Local();
		local.process();
//		System.out.println(local.name);
		local.printAge1();
		local.printAge2();
		
		
		local.printInfo("aaa");
//		infos가 배열로 바뀜.(참조변수)
		local.printInfo("aaa", "bbb");
		local.printInfo("aaa", "bbb", "ccc");
//		
		String[] infos = {"aaa", "bbb", "ccc"};
		local.printInfo2(infos);
	
				
	}

}
