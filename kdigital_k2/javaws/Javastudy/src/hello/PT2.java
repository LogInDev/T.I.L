package hello;

import java.util.Arrays;
import java.util.Scanner;

public class PT2 {

	public static void main(String[] args) {
		String[][] words = {
				{"chair","의자"},
				{"computer","컴퓨터"},
				{"integer","정수"},
				{"chair","의자"},
				{"computer","컴퓨터"},
				{"integer","정수"}
		};
		Scanner sc = new Scanner(System.in);
		int total = 0;
		int right = 0;
		int[] note = new int[words.length]; 
		while(true) {	
			total++;
			int r = (int)(Math.random()*words.length);
			System.out.println(words[r][0]+"?");
			String user = sc.next();
			if(words[r][1].equals(user)) {
				System.out.println("Bingo");
				right++;
			}else {
				System.out.println("Fail");
				note[r]++;
			}
			System.out.println("continue?");
			String a = sc.next();
			if(a.equals("q")) break;			
		}
		System.out.println(Arrays.toString(note));
	}

}
