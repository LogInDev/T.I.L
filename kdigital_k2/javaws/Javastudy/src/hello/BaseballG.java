package hello;

import java.util.Arrays;
import java.util.Scanner;

public class BaseballG {

	public static void main(String[] args) {
		//1 ~ 100  com random값
		Scanner sc = new Scanner(System.in);
		//		int count = 0;
		//		int com = (int)(Math.random()*100)+1;
		//		while(true) {
		//			count++;
		//			System.out.println("1~100사이 숫자를 입력하세요 >>");
		//			int user = sc.nextInt();
		//			if(user<com) {
		//				System.out.println("더 큰 숫자를 넣으세요.");
		//			}else if (user>com){
		//				System.out.println("더 작은 숫자를 넣으세요.");
		//			} else {
		//				System.out.println("정답입니다. \ncom의 숫자는 " +com+"입니다. 총 " + count + "번 시도");
		//				sc.close();
		//				break;
		//			}
		//			
		//		}

		//야구게임
		//com
		int[] com = new int [3];

		int count=0;
		//game start
		while(true) {
			com[0] = (int)(Math.random()*9)+1;
			com[1] = (int)(Math.random()*9)+1;
			com[2] = (int)(Math.random()*9)+1;
			if(!(com[0]==com[1] || com[0]==com[2] || com[1]==com[2])) break;
		}
		System.out.println(""+com[0]+com[1]+com[2]);
		while(true) {

			count++;
			//user
			System.out.println("3자리 숫자를 입력하세요>>");
			int []user = new int [3];
			String a = sc.next();
			user[0] = Integer.parseInt(a.charAt(0)+"");
			user[1] = Integer.parseInt(a.charAt(1)+"");
			user[2] = Integer.parseInt(a.charAt(2)+"");
			//user값 중복시
			while(true) {
				if(user[0]==user[1] || user[0]==user[2] || user[1]==user[2]) {
				System.out.println("중복되지 않은 숫자를 입력해주세요.");
				a = sc.next();
				user[0] = Integer.parseInt(a.charAt(0)+"");
				user[1] = Integer.parseInt(a.charAt(1)+"");
				user[2] = Integer.parseInt(a.charAt(2)+"");
				count++;
				}else break;
			}

			//st-ball-out 초기화
			int st =0;
			int ball=0;
			int out =0;
			
			
			for(int i=0;i<com.length;i++) {
				for(int j=0;j<user.length;j++) {
					if(i==j&&user[i]==com[j])     	st++;
					else if(i!=j&&user[i]==com[j])  ball++;
				}
			}

			// 백의 자리비교

//			if(user[0]==com[0]) 	     st++;
//			else if(user[0]==com[1])  ball++;
//			else if(user[0]==com[2])  ball++;
//
//			//					else 		     out++;
//
//			// 십의 자리 비교
//			if(user[1]==com[0]) 	     ball++;
//			else if(user[1]==com[1])  st++;
//			else if(user[1]==com[2])  ball++;
//
//			//					else 			 out++;
//
//			// 일의 자리 비교
//			if(user[2]==com[0]) 		 ball++;
//			else if(user[2]==com[1])  ball++;
//			else if(user[2]==com[2])  st++;

			//					else 		     out++;
			out = 3-st+ball;

			System.out.println(st+"Strike "+ball+"Ball "+out+"Out");
			if(st==3) {
				System.out.println("정답입니다. \ncom의 숫자는 "+com[0]+com[1]+com[2]+"입니다. 총 "+count +"번 시도");
				break;

			} 






		}
	}

}
