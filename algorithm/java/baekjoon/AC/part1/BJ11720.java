package part1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ11720 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		long N = Long.parseLong(br.readLine());
		String num = br.readLine();
		char[] nums = num.toCharArray();
		//long [] arr = new long[nums.length];
		long sum = 0;
		for(int i=0;i<nums.length;i++) {
			//arr[i] = nums[i] - '0';
			sum += nums[i] - '0';
		}
		System.out.println(sum);
	}

}
