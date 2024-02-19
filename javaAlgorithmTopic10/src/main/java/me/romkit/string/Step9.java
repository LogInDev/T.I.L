package me.romkit.string;

import java.util.Scanner;

public class Step9 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String words = sc.nextLine();

        reverseString(words);

    }
    static void reverseString(String words){
        StringBuilder sb = new StringBuilder();
        for(int i=0;i<words.length();i++) {
            if(!Character.isAlphabetic(words.charAt(i))) {
                sb.append(words.charAt(i));
            }
        }
        int result = Integer.parseInt(sb.toString());
        System.out.println(result);
    }
}

