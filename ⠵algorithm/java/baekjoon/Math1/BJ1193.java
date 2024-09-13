package Math1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ1193 {
	public static void main(String [] args) throws NumberFormatException, IOException {
		BufferedReader br =  new BufferedReader(new InputStreamReader(System.in));
		
		int N = Integer.parseInt(br.readLine());
		
		int cross_count = 1, prev_count_sum = 0;
		
		while(true) {
			if(N<=prev_count_sum + cross_count) {
				if(cross_count % 2 == 1) {
					System.out.println((cross_count - (N - prev_count_sum - 1)) + "/" + (N - prev_count_sum));
					break;
				}else {
					System.out.println((N - prev_count_sum) + "/"+ (cross_count - (N - prev_count_sum - 1)));
					break;
				}
			} else {
				prev_count_sum += cross_count;
				cross_count++;
			}
		}
	}
}
