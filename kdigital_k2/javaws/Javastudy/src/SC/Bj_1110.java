package SC;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.StringTokenizer;

public class Bj_1110 {

	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		String str = br.readLine();
		int []a=new int[2];
		int count = 0;
		int tmp=0;
		int N = Integer.parseInt(str);	
		a[0] = N/10;
		a[1] = N%10;
		do {
			count++;
			if(N<10) {
				a[0] = N*2/10;
				a[1] = N*2%10;
				tmp =a[0];
				a[0] = (a[0]+a[1])/10;
				a[1] = (tmp+a[1])%10;
			}
			else {
				tmp =a[0];
				a[0] = a[1];
				a[1] = (tmp+a[1])%10;
			}
		}while(!((N%10==a[1])&&(N/10==a[0])));
			
			bw.write(count+"");
			
			bw.newLine();
			bw.write(a[0]+""+a[1]);
			bw.flush();
			bw.close();
			br.close();

		

	}
}
