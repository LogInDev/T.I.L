package part1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class BJ1940 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		int M = Integer.parseInt(br.readLine());
		String [] arr = br.readLine().split(" ");
		int[] nums = new int[N];
		for(int i=0; i<N;i++) {
			nums[i] = Integer.parseInt(arr[i]);
		}
		Arrays.sort(nums);
		int sp = 0;
		int ep = N-1;
		int count = 0;
		while(sp < ep) {
			if((nums[sp] + nums[ep]) < M) {
				sp++;
			}else if((nums[sp] + nums[ep]) > M) {
				ep--;
			}else if((nums[sp] + nums[ep]) == M) {
				count++;
				sp++;
				ep--;
			}
		}
		System.out.println(count);
	}

}
