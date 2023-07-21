package backJ;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

public class Q_5597 {

	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		 
		List<Integer> allStudent = new ArrayList<Integer>();
		for(int i=0;i<30;i++) {
			allStudent.add(i+1);
		}
		int[] chamStudent = new int[28];
		for(int i=0;i<chamStudent.length;i++) {
			chamStudent[i] = Integer.parseInt(br.readLine());
		}
		for(int i=0;i<chamStudent.length;i++) {
			allStudent.remove((Integer)chamStudent[i]);
		}
		
		bw.write(allStudent.get(0)+"\n"+allStudent.get(1));
		
		
	
		bw.flush();
		bw.close();
		br.close();
	}

}
