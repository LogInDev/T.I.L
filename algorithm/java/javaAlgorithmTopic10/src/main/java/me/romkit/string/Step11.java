package me.romkit.string;

import java.util.Scanner;

public class Step11 {
	 public static void main(String[] args) {
	        Scanner sc = new Scanner(System.in);
	        String words = sc.nextLine();
	        
	        solution(words);

	    }
	    static void solution(String words){
	    	int cnt = 0;
	    	char f = words.charAt(0);
	    	StringBuilder sb = new StringBuilder();
	    	for(char a: words.toCharArray()) {
	    		if(f == a) {
	    			cnt++;
	    		}else {
	    			sb.append(f);
	    			if(cnt > 1) {
	    				sb.append(cnt);
	    			}
	    			f=a;
	    			cnt=1;
	    		}
	    	}
	    	f = words.charAt(words.length()-1);
	    	cnt=0;
	    	for(int i=words.length()-1;i>=0;i--) {
	    		if(f==words.charAt(i)) {
	    			cnt++;
	    		}else {
	    			sb.append(f);
	    			if(cnt > 1) {
	    				sb.append(cnt);
	    			}
	    			break;
	    		}
	    	}
	    	System.out.println(sb);
	    }	
}
