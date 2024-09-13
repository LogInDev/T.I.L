package Math1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class BJ2745 {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		StringTokenizer st = new StringTokenizer(br.readLine());
		String[] N = st.nextToken().split("");
		int B = Integer.parseInt(st.nextToken());
		long  total =0;
		
		for(int i=0;i<N.length;i++) {
			if(N[i].equals("A")) {
				total += 10 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("B")) {
				total += 11 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("C")) {
				total += 12 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("D")) {
				total += 13 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("E")) {
				total += 14 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("F")) {
				total += 15 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("G")) {
				total += 16 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("H")) {
				total += 17 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("I")) {
				total += 18 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("J")) {
				total += 19 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("K")) {
				total += 20 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("L")) {
				total += 21 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("M")) {
				total += 22 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("N")) {
				total += 23 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("O")) {
				total += 24 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("P")) {
				total += 25 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("Q")) {
				total += 26 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("R")) {
				total += 27 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("S")) {
				total += 28 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("T")) {
				total += 29 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("U")) {
				total += 30 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("V")) {
				total += 31 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("W")) {
				total += 32 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("X")) {
				total += 33 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("Y")) {
				total += 34 * Math.pow(B, N.length-1-i);
			}else if(N[i].equals("Z")) {
				total += 35 * Math.pow(B, N.length-1-i);
			}else {
				total += Integer.parseInt(N[i]) * Math.pow(B, N.length-1-i);
			}
		}
		System.out.println(total);
	}

}
