package Basic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class BJ10811 {

	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringTokenizer st;
		st = new StringTokenizer(br.readLine());
		int N = Integer.parseInt(st.nextToken());
		int M = Integer.parseInt(st.nextToken());
		int[] arr = new int[N+1];
		for(int p=0;p<N+1;p++) {
			arr[p] = p;
		}
		for(int p=0;p<M;p++) {
			st = new StringTokenizer(br.readLine());
			int i = Integer.parseInt(st.nextToken());
			int j = Integer.parseInt(st.nextToken());
			for(int q=i; q<=j;q++) {
				int tmp = arr[q];
				arr[q] = arr[j];
				arr[j] = tmp;
				j --;
			}
		}
		for(int a=1;a<N+1;a++) {
			System.out.print(arr[a]+" ");
		}
		
	}
}
