package helloClass;

public class RegEx {

	public static void main(String[] args) {
		 	
//		String s1 = "abcd";
//		System.out.println(System.identityHashCode(s1));
//		
//		s1 = s1+"ef";
//		System.out.println(System.identityHashCode(s1));
//		
//		StringBuffer sb = new StringBuffer("abcd");
//		System.out.println(System.identityHashCode(sb));
//		
//		sb.append("efg");
//		System.out.println(System.identityHashCode(sb));
		
//		long start = System.currentTimeMillis();
//		String str = "";
//		for(int i=0;i<100000;i++) {
//			str+=i;
//		}
//		long end = System.currentTimeMillis();
//		System.out.println((end -start)/1000);
		long start1 = System.currentTimeMillis();
		StringBuffer str1 =new StringBuffer("");
		for(int i=0;i<100000;i++) {
			str1.append(i);
		}
		long end1 = System.currentTimeMillis();
		System.out.println((end1 - start1)/1000);
		
	}

}
