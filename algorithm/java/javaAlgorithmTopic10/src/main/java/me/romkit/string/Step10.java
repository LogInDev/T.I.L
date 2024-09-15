package me.romkit.string;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Step10 {
	 public static void main(String[] args) throws IOException{
	        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	        StringTokenizer st = new StringTokenizer(br.readLine());
	        String words = st.nextToken();
	        String e = st.nextToken();

	        solution(words, e);

	    }
	    static void solution(String words, String e){
	    	int [] arr = new int[words.length()];
	    	int cnt = 1000;
	    	for(int i=0;i<words.length();i++) {
    			if(words.charAt(i) == e.charAt(0)) {
    				cnt = 0;
    				arr[i] = cnt;
    			}else {
    				cnt++;
    				arr[i] = cnt;
    			}
	    	}
	    	cnt = 1000;
	    	for(int i=words.length()-1;i>=0;i--) {
	    		if(words.charAt(i) == e.charAt(0)) {
	    			cnt = 0;
	    			arr[i] = cnt;
	    		}else {
	    			cnt++;
	    			if(cnt<arr[i]) arr[i] = cnt;
	    		}
	    	}
	    	for(int a: arr) System.out.print(a+" ");
	    	
	    }	
}
