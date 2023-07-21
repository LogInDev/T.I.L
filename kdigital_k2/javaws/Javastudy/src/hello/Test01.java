package hello;

import java.util.Scanner;

public class Test01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int com = (int)(Math.random()*10)+1;
		boolean run = true;
		System.out.println("숫자를 입력하세요.");
		int user = sc.nextInt();
		
		while(run) {
	
		if(com > user) {
			System.out.println(user+"보다 큰 숫자입니다.");
			user++;
		} else if(com<user) {
			System.out.println(user+"보다 작은 숫자입니다.");
			user--;
		} else {
			System.out.println("정답은 " + user + "입니다.");
			run=false;
		}
	}
		
	}

}
