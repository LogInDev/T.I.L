package TwoDimensionalArray;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class BJ10798 {
	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));	
		char[][] arr = new char[5][15];
		int max=0;
		
		for(int i=0;i<5;i++) {
			String word = br.readLine();
			for(int j=0;j<word.length();j++) {
				arr[i][j] = word.charAt(j);
				if(max<word.length()) {
					max = word.length();
				}
			}
		}
		StringBuilder sb = new StringBuilder();
		for(int i=0;i<max;i++) {
			for(int j=0;j<5;j++) {
				if(arr[j][i] == '\0')	continue;
				sb.append(arr[j][i]);
				
			}
		}
		System.out.println(sb);
	}
}
