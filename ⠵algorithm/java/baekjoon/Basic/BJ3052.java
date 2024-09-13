package Basic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;

public class BJ3052 {

	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		Set<Integer> arr = new HashSet<Integer>();
		for(int i=0;i<10;i++) {
			arr.add(Integer.parseInt(br.readLine()) % 42);
		}
		System.out.println(arr.size());
		
		
	}

}
