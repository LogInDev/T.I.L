package Basic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2675 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringBuilder sb = new StringBuilder();
		
		int N = Integer.parseInt(br.readLine());
		
		for(int i=0;i<N;i++) {
			String[] arr= br.readLine().split(" ");
			
			for(int j=0;j<arr[1].length();j++) {
				for(int p=0;p<Integer.parseInt(arr[0]);p++) {
					sb.append(arr[1].charAt(j));
				}
			}
			sb.append("\n");
		}
		System.out.println(sb);
	}

}
