package part1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class BJ1546 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		StringTokenizer st = new StringTokenizer(br.readLine());
		int[] arr = new int[N];
		long sum = 0;
		long max =0;
		for(int i =0;i<N;i++) {
			arr[i] = Integer.parseInt(st.nextToken());
			if(arr[i] > max) max = arr[i];
			sum += arr[i];
		}
		System.out.println(sum * 100.0/max/N);
	}

}
