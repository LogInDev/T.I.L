package backJ;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.StringTokenizer;

public class Q_10818 {

	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		
		int N = Integer.parseInt(br.readLine());
		StringTokenizer st = new StringTokenizer(br.readLine());
		List<Integer> num = new ArrayList<Integer>();
		for(int i=0;i<N;i++) {
			num.add(Integer.parseInt(st.nextToken()));
		}
		num.sort(Comparator.naturalOrder());
		bw.write(num.get(0)+" "+num.get(N-1));
		bw.flush();
		bw.close();

	}

}
