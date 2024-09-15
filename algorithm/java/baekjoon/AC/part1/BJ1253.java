package part1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class BJ1253 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		StringTokenizer st = new StringTokenizer(br.readLine());
		Long[] A = new Long[N];
		for(int i=0;i<N;i++) {
			A[i] = Long.parseLong(st.nextToken());
		}
		Long count = 0l;
		Arrays.sort(A);
		for(int k=0; k<N; k++) {
			Long find = A[k];
			int i=0;
			int j = N-1;
			while(i<j) {
				if(A[i] + A[j] == find) {
					if(i != k && j!=k) {
						count++;
						break;
					}else if(i==k) {
						i++;
					}else if(j==k) {
						j--;
					}
				}else if(A[i] + A[j] < find) {
					i++;
				}else if(A[i] + A[j] >find) {
					j--;
				}
			}
		}
		System.out.println(count);

	}

}
