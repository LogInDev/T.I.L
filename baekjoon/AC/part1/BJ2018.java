package part1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2018 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		long sp = 1;
		long ep = 1;
		long sum = 1;
		long count = 1;
		while(ep < N) {
			if(sum < N) {
				ep++;
				sum = sum + ep;
			}else if(sum > N) {
				sum = sum - sp;
				sp++;
			}else {
				ep++;
				sum = sum + ep;
				count++;
			}
		}
		System.out.println(count);
	}

}
