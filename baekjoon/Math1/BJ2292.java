package Math1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2292 {

	public static void main(String[] args) throws IOException{
		//1 (+6*1) 7 (+6*2)  19 (+6*3) 37 (+6*4) 61
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int N = Integer.parseInt(br.readLine());
		
		int count =1;
		int range =2;
		if(N==1) {
			System.out.println(1);
		}else {
			while(range <= N) {
				range = range + (6*count);
				count++;
			}
			System.out.println(count);
		}
		
		
	}

}
