package SC;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.StringTokenizer;

import javax.print.attribute.IntegerSyntax;

public class Bj_10951 {

	public static void main(String[] args) throws Exception{
		
		
		
//		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
//		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
//		String input;
//		
//		while((input = br.readLine()) != null) {
//			StringTokenizer st = new StringTokenizer(input);
//			
//			int A = Integer.parseInt(st.nextToken());
//			int B = Integer.parseInt(st.nextToken());
//			
//			int result = A + B;
//			
//			bw.write(result + "");
//			bw.newLine();
//			
//		}
//		bw.flush();
//		bw.close();
//		br.close();
	
	

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

		String s =null;
		while((s= br.readLine())!=null) {
			StringTokenizer st = new StringTokenizer(s);
			int a = Integer.parseInt(st.nextToken());
			int b = Integer.parseInt(st.nextToken());
			String sum = String.valueOf(a+b);
			bw.write(sum);
			bw.newLine();
		}

		
		
		bw.flush();
		br.close();
		bw.close();
		


	}

}
