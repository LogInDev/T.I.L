package advanced1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ10988 {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String word = br.readLine();
		StringBuilder sb = new StringBuilder();
		sb.append(word);
		String reWord = sb.reverse().toString();
		if(word.equals(reWord))		System.out.println(1);
		else System.out.println(0);
	}
}
