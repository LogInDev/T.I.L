package hello;

import java.util.Scanner;

public class forExample {

	public static void main(String[] args) {
//		int sum = 0;
//		int a=1;
//		int j=1;
//		for(int i=1;i<=j;i++) {
//			
//			sum +=j+1;
//			System.out.println("("+i+","+j+")");
//		
//			if(j<11) break;
//		}
		
//		int a = 32*(int)(Math.pow(10, 4));
//		System.out.println(a);
		
		
		
//-----------------------------------------------------		
//3번
//		for(int i=1;i<=10;i++) {
//			for(int j=1;j<=i;j++) {
//				sum +=j;
//			
//			}
//		}
//		System.out.println(sum);
//		int total = 0;
//		for(int i=1;i<=10;i++) {
//
//				sum +=i;
//				total +=sum;
////			System.out.println(i+","+sum);
//			
//			
//		}
//		System.out.println(total);
//		
//		
//-----------------------------------------------------		
//		//4번
//		int a=0;
//		for(int i=0; i<5; i++) {
//			for(int j=0;j<5;j++) {
//				if(i<2) {
//					a++;
//					System.out.print(a + "   ");
//				}else  {
//					a++;
//					System.out.print(a + "  ");
//				}
//			}
//			System.out.println();
//		}
//		
//		
//		for(int i=1; i<26; i++) {
//				if(i<10) {
//				System.out.print(i +"   ");
//				}else  {
//					System.out.print(i+"  ");
//				}
//			if(i%5==0) 
//			System.out.println();
//		}
//
//-----------------------------------------------------
//		//5번
//		for(int i=0;i<5;i++) {
//			for(int j=0;j<=i;j++) {
//				System.out.print("*");
//			}
//			System.out.println();
//		}
//		
//-----------------------------------------------------
		//6번
//		Scanner sc = new Scanner(System.in);
//		int n= sc.nextInt();
//		int e = n/2 +1;
//		for(int i=0; i<e;i++) {
//			for(int j=1;j<e-i;j++) {
//				System.out.print(" ");
//			}
//			for(int j=e-i;j<=e+i;j++) {
//				System.out.print("*");
//			}
//			System.out.println();
//			
//		}



		//		int sum1 = 0;
		//		int sum2 = 0;
		//		int sum = 0;
		//		for(int i=1;i<=100;i++) {
		//			if(i%2==0) {
		//				sum1 +=i;
		//			}else {
		//				sum2 +=i;
		//			}
		//		}
		//		System.out.println("1~100까지 짝수의 합은 " + sum1);
		//		System.out.println("1~100까지 홀수의 합은 " + sum2);
		//		
		//		for(int i=1;i<=20;i++) {
		//			if(i%2!=0 && i%3!=0) {
		//				sum +=i;
		//			}
		//		}
		//		System.out.println("sum은 " + sum);





		//		Scanner sc = new Scanner(System.in);
		//		
		//	
		//		while(true) {
		//			System.out.print("연도를 입력하세요 >");
		//			int year = sc.nextInt();
		//			if(year==0) {
		//				System.out.println("프로그램이 종료됩니다.");
		//				break;
		//			}
		//			if(year%400==0 ||(year%4==0&&year%100!=0)) {
		//				System.out.println("윤년입니다.");
		//			}else {
		//				System.out.println("윤년이 아닙니다.");
		//			}
		//			
		//		}
		
		
//----------------------------------------------------
		//주사위 눈의 합 구하기
//		for(int i=1;i<7;i++) {
//			for(int j=1;j<7;j++) {
//				if(i+j==6) {
//			System.out.printf("(%s,%s)" ,i, j);
//				}
//			}
//		}
		
		
//-------------------------------------------------------
		//야구게임
//		int com = 135;
//		int c1 =com%10;
//		int c2 =com/10%10;
//		int c3 = com/100;
////		System.out.println(c1+","+ c2+","+ c3);
//		int user = 379;
//		int u1 =com%10;
//		int u2 =com/10%10;
//		int u3 = com/100;
//		int st = 0;
//		int ball=0;
//		int out=0;
//		if(u1==c1||u1==c2||u1==c3) {
//			if(u1==c1) {
//				st+=1;
//				
//			}else {
//				ball+=1;
//			}
//		}else if(u2==c1||u2==c2||u2==c3) {
//			if(u2==c2) {
//				st+=1;
//			}else {
//				ball+=1;
//			}
//		}else if(u3==c1||u3==c2||u3==c3) {
//			if(u3==c3) {
//				st+=1;
//			}else {
//				ball+=1;
//			}
//		}else {
//			System.out.println("3Out");
//		}
//		if(st+ball>0) {
//			if(ball==0) {
//				out+= 3-(st+ball);
//				System.out.println(st+"Strike "+out+"Out");
//			}else if(st==0) {
//				out+= 3-(st+ball);
//				System.out.println(ball+"Ball "+out+"Out");
//			}else {
//				if(out==0) {
//			System.out.println(st+"Strike "+ ball+"Ball");
//				}else {
//					System.out.println(st+"Strike "+ ball+"Ball "+out+"Out");
//				}
//			}
//		
//		}

	}
}
