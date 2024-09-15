package Basic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2444 {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int N = Integer.parseInt(br.readLine());
		for(int i=0; i<N;i++) {
			for(int j=N-i;j>1;j--) {
				System.out.print(" ");				
			}
			for(int p=i*2+1;p>0;p--) {
				System.out.print("*");
			}
			System.out.println("");
		}
		for(int i=0;i<N-1;i++) {
			for(int j=1;j<i+2;j++) {
				System.out.print(" ");
			}
			for(int p=(N-i-1)*2-1;p>0;p--) {
				System.out.print("*");
			}
			System.out.println();
		}
	}

}
