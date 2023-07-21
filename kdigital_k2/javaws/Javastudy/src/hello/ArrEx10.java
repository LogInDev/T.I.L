package hello;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.StringTokenizer;

public class ArrEx10 {

	public static void main(String[] args) throws Exception{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		
		StringTokenizer st = new StringTokenizer(br.readLine());
		int N = Integer.parseInt(st.nextToken()+"");
		int X = Integer.parseInt(br.readLine());
		int[] num = new int[N];
		
		for(int i=0;i<N;i++) {
			num[i] = Integer.parseInt(st.nextToken()+"");
		}
		for(int i=0;i<N;i++) {
			if(X<num[i]) bw.write(num[i]+" ");
		}
		br.close();
		bw.flush();
		bw.close();
	}
}
