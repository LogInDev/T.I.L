package helloAPI;

import java.util.Random;
import java.util.Scanner;

public class RandomEx {

	public static void main(String[] args) {
		Random r = new Random();
		int com =r.nextInt(100)+1;
		System.out.println(com);
		Scanner sc = new Scanner(System.in);
		int count=0;
		System.out.println("숫자를 입력하세요.>>");
		int user = sc.nextInt();
		while(true) {
			count++;
			if(com!=user) {
				System.out.println("틀렸습니다.\n다시숫자를 입력하세요.>>");
				user = sc.nextInt();
			}else  break;
		}
		System.out.println("정답입니다.\n총 " +count+"번 시도");

	}

}
