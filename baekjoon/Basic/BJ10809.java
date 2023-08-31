package Basic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ10809 {

	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String S = br.readLine();
		
		int[] arr = new int[26];
		for(int i=0;i<arr.length;i++) {
			arr[i] = -1;
		}
		
		for(int i=0; i<S.length();i++) {
			char word = S.charAt(i);
			if(arr[word - 'a'] == -1) {
				arr[word-'a'] = i;
			}
		}
		
		for(int i : arr) {
			System.out.print(arr[i]+" ");
		}
		
	}

}
