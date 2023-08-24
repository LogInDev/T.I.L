package Basic;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class BJ1546 {

	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		Double[] scores = new Double[N];
		StringTokenizer st = new StringTokenizer(br.readLine());
		for(int i=0;i<N;i++) {
			scores[i] = Double.parseDouble(st.nextToken());
		}
		Arrays.sort(scores);
		double sum = 0;
		for(int i=0;i<N;i++) {
			sum += ((scores[i]/scores[N-1]) * 100);
		}
		System.out.println(sum/N);
	}
}
