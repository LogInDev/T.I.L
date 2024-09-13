package part1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class BJ11659 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringTokenizer st = new StringTokenizer(br.readLine());
		StringBuilder sb = new StringBuilder();
		
		int N = Integer.valueOf(st.nextToken());
		int M = Integer.valueOf(st.nextToken());

		st = new StringTokenizer(br.readLine());
		long [] sum = new long[N+1];
		for(int i=1;i<N+1;i++) {
			sum[i] = sum[i-1] + Long.valueOf(st.nextToken());
		}
		for(int i=0;i<M;i++) {
			String[] a = br.readLine().split(" ");
			sb.append((sum[Integer.parseInt(a[1])] - sum[Integer.parseInt(a[0])-1])+"\n");
		}
		System.out.println(sb);
		
	}

}
