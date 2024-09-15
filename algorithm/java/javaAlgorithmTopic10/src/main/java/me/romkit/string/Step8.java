package me.romkit.string;

import java.util.Scanner;

public class Step8 {


    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String words = sc.nextLine();

        solution(words);

    }
    static void solution(String words){
    	String result = "YES";
    	words = words.toUpperCase();
    	words = words.replaceAll("[^A-Z]", "");
    	StringBuilder sb = new StringBuilder(words);
    	String arr = sb.reverse().toString();
    	for(int i=0;i<words.length();i++) {
    		if(words.charAt(i) != arr.charAt(i)) {
    			result = "NO";
    			break;
    		}
    	}
    	System.out.println(result);
    }
}

