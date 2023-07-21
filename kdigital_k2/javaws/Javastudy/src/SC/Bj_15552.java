package SC;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Bj_15552 {

	public static void main(String[] args) throws Exception{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		
		int totalL = Integer.parseInt(br.readLine());
		
		for(int i=0;i<totalL;i++) {
			String s = br.readLine();
			int a = Integer.parseInt(s.split(" ")[0]);
			int b = Integer.parseInt(s.split(" ")[1]);
			String sum = String.valueOf(a+b);
			bw.write(sum);
			bw.newLine();
		}
		
		 bw.newLine();
		 bw.flush();
		 bw.close();

		
		
		
		
		
		
		
		
		
		
//		
//		int N = Integer.parseInt( br.readLine() );
//		 
//		 for(int i = 1; i <= N; i++) {
//			 bw.write(String.valueOf(i));
//			 
//		 }
//		 br.close();
	}

}
