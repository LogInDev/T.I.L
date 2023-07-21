package hello;

import java.util.Scanner;

public class Test02 {

	public static void main(String[] args) {
		int com = (int)(Math.random()*3)+1;
		Scanner sc = new Scanner(System.in);
		System.out.println("가위, 바위, 보 중 하나를 입력하세요.");
		String user = sc.next();
		
		int me = getNum(user);
		if(com==1) {
			System.out.println("com : 가위");
		}else if (com==2) {
			System.out.println("com : 바위");
		}else {
			System.out.println("com : 보");
		}
		
	 
		int result =  me - com;
		if(result ==2 || result ==-1) {
			System.out.println("com 승리");
		}else if(result == 1 || result ==-2) {
			System.out.println("user 승리");
		}else {
			System.out.println("비겼습니다.");
		}
		
		
//		switch(me-com) {
//		case 2: case -1:
//			System.out.println("com 승리");
//			break;
//		case 1: case-2:
//			System.out.println("user 승리");
//			break;
//		case 0:
//			System.out.println("비겼습니다.");
//			
//		}
		
		
		
		//4-4
//		int sum=0;
//		int count = 0;
//		int i;
//		for(i=1;sum<100; i++) {
//			if((i%2) ==0) {
//				sum -=i;
//				count++;
//			} else {
//				sum +=i;
//				count++;
//			}
//		}
//		System.out.println(i);
//		System.out.println(count);
		
		
		


	}

	public static int getNum(String s) {
		int i = 0;
		if(s.equals("가위")) {
			i = 1;
		}else if (s.equals("바위")) {
			i = 2;
		}else {
			i = 3;
		}
		return i;
	}
}
