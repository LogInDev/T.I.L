package me.romkit.string;

import java.util.Scanner;

public class Step12 {
	 public static void main(String[] args) {
	        Scanner sc = new Scanner(System.in);
	        int num = Integer.parseInt(sc.nextLine());
	        String words = sc.nextLine();
	        
	        solution(num,words);

	    }
	    static void solution(int num,String words){
	    	StringBuilder sb;
	    	for(int i=0;i<(num * 7);i+=7) {
	    		sb = new StringBuilder();
	    		for(int j=i;j< Math.min(i + 7, words.length());j++) {
	    			int c = (int)words.charAt(j);
	    			if(c ==35 ) {
	    				sb.append(1);
	    			}else {
	    				sb.append(0);
	    			}
	    		}
	    		int result =  Integer.parseInt(sb.toString(), 2);
	    		System.out.print((char)result);
	    	}
	    }	
}
