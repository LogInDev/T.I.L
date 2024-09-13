package advanced1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class BJ1316 {

	static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	public static void main(String[] args) throws IOException{
		
		int N = Integer.parseInt(br.readLine());
		int count =0;
		for(int i=0;i<N;i++) {
			if(check() == true) {
				count++;
			}
		}
		System.out.println(count);
		
	}
	public static boolean check() throws IOException{
		boolean[] arr = new boolean[26];
		String word = br.readLine();
		int prev = 0;
		
		for(int i=0;i<word.length();i++) {
			int now = word.charAt(i);
			
			if(prev != now) {
				if(arr[now - 'a'] == false) {
					arr[now - 'a'] = true;
					prev = now;
				}else {
					return false; // 함수 종
				}
			}else {
				continue;
			}
		}
		return true;
	}

}
