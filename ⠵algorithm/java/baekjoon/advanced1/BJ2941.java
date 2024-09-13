package advanced1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BJ2941 {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String[] N = br.readLine().split("");
		int count =N.length;
		for(int i=0;i<N.length;i++) {
			if(N[i].equals("c")) {
				if(i < N.length-1 && N[i+1].equals("=")) {
					count--;
					i++;
				}else if(i < N.length-1 && N[i+1].equals("-")) {
					count--;
					i++;
				}
			}else if(N[i].equals("d")) {
				if(i < N.length-1 && N[i+1].equals("-")) {
					count--;
					i++;
				}else if(i < N.length-2 && N[i+1].equals("z")) {
					if(N[i+2].equals("=")) {count-=2;
					i+=2;
					}
				}
			}else if(N[i].equals("l")) {
				if(i < N.length-1 && N[i+1].equals("j")) {
					count--;
					i++;
				}
			}else if(N[i].equals("n")) {
				if(i < N.length-1 && N[i+1].equals("j")) {
					count--;
					i++;
				}
			}else if(N[i].equals("s")) {
				if(i < N.length-1 && N[i+1].equals("=")) {
					count--;
					i++;
				}
			}else if(N[i].equals("z")) {
				if(i < N.length-1 && N[i+1].equals("=")) {
					count--;
					i++;
				}
			}
		}
		System.out.println(count);
	}

}
