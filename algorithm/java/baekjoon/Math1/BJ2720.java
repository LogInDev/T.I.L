package Math1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2720 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int T = Integer.parseInt(br.readLine());
		
		
		for(int i=0;i<T;i++) {
			int C = Integer.parseInt(br.readLine());
			int Q =0;
			int D=0;
			int N =0;
			int P=0;
			while(C >0) {
				if(C >=25) {
					Q = C / 25;
					C -= Q * 25;
				}else if(C >=10) {
					D = C / 10;
					C -= D * 10;
				}else if(C >=5) {
					N = C / 5;
					C -= N * 5;
				}else if(C >=1) {
					P = C / 1;
					C -= P *1;
				}
			}
			System.out.println(Q+" "+D+" "+N+" "+P);
			
		}
	}

}
