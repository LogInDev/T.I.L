package hello;

public class maincmd {
	static int age;
	public static int varInt(int x){
		x =10;
		return x;
	}

	public static void varArr(int[] x) {
		x[0] = 10;
		
	}


	public static void main(String[] args) {
		//		System.out.println(args[0]);
		//		System.out.println(args[1]);
		//		for(String arg : args) {
		//			System.out.println(arg);
		//		}
		int x = 0;
        // 기본형 변수에 값 전달 => 복사본 => 전달값 변화 없음
		varInt(x);
        int y = varInt(x);


        int[] xArr = {0};
        //참조형 변수에 주소 전달 => 실제값 => 전달값에 영향이 미침
        varArr(xArr);

        System.out.println(x);//0 출력
        System.out.println(y);//0 출력
        System.out.println(varInt(x));//0 출력
        System.out.println(xArr[0]);//10 출력
        
        
      

	}

}
