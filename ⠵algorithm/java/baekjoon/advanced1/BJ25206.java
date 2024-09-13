package advanced1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class BJ25206 {
	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		double schScore = 0;
		double count =0;
		for(int i=0;i<20;i++) {
			String[] arr = br.readLine().split(" ");
			if(arr[2].equals("A+")) {
				schScore +=(Double.parseDouble(arr[1]) * 4.5);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("A0")) {
				schScore +=(Double.parseDouble(arr[1]) * 4.0);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("B+")) {
				schScore +=(Double.parseDouble(arr[1]) * 3.5);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("B0")) {
				schScore +=(Double.parseDouble(arr[1]) * 3.0);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("C+")) {
				schScore +=(Double.parseDouble(arr[1]) * 2.5);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("C0")) {
				schScore +=(Double.parseDouble(arr[1]) * 2.0);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("D+")) {
				schScore +=(Double.parseDouble(arr[1]) * 1.5);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("D0")) {
				schScore +=(Double.parseDouble(arr[1]) * 1.0);
				count += Double.parseDouble(arr[1]);
			}else if(arr[2].equals("F")) {
				count += Double.parseDouble(arr[1]);
			}
		}
		System.out.println(schScore/count);
	}
}
