package Basic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2908 {
	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String N = br.readLine();
		StringBuilder sb = new StringBuilder();
		sb.append(N);
		String[] arr = sb.reverse().toString().split(" ");
		int A = Integer.parseInt(arr[0]);
		int B = Integer.parseInt(arr[1]);
//		int anw = Math.max(A, B);
		System.out.println(A>B ? A : B);
	}
}
