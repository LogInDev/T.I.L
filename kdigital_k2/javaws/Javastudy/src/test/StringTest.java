package test;

public class StringTest {

	public static void main(String[] args) {
		String str = "   Hello My Name is Hong Gil Dong    ";
//		System.out.println(str.indexOf("hong"));  -1
//		System.out.println(str.indexOf('H')); 0
//		System.out.println(str.substring(3));
//		System.out.println(str.substring(6,13));
//		System.out.println(str.toLowerCase());
//		System.out.println(str.toUpperCase());
//		System.out.println(str.startsWith("e"));
//		System.out.println(str.endsWith("Dong"));
//		System.out.println(str.replace("Hong", "Kim"));
//		System.out.println(str.replaceAll("Name", "Nickname"));
//		System.out.println(str.trim());
		System.out.println(str.replace(" ",""));
		
		str = "홍길동,이순신,유관순,안중근";
		String[] arr = str.split(",");
		for(String a:arr) {
			System.out.println(a);
		}
	
	}

}
