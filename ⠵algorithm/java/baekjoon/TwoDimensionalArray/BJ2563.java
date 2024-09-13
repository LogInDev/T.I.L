package TwoDimensionalArray;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class BJ2563 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int N = Integer.parseInt(br.readLine());
		boolean[][] chk = new boolean[101][101];
		int sum=0;
		for(int i=0;i<N;i++) {
			StringTokenizer st = new StringTokenizer(br.readLine());
			int x = Integer.parseInt(st.nextToken());
			int y = Integer.parseInt(st.nextToken());
			for(int j=x;j<x+10;j++) {
				for(int k=y;k<y+10;k++) {
					if(!chk[j][k]) {
						chk[j][k] = true;
						sum++;
					}
				}
			}
		}
		System.out.println(sum);
	}
}
