package backJ;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class Q_2562 {

	public static void main(String[] args) throws Exception{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		int[] a = new int[9];
		int maxIndex = 0;
		for(int i=0;i<9;i++) {
			a[i] = Integer.parseInt(br.readLine());
		}
		int max=a[0];
		for(int i=0;i<a.length;i++) {
			if(a[i]>max) {
				max=a[i];
				maxIndex = i;
			}
		}
		
		bw.write(max+"\n");
		bw.write((maxIndex+1)+"");
		bw.flush();
		bw.close();
		br.close();
		

	}

}
