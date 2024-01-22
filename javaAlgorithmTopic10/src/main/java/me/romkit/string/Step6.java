package me.romkit.string;

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;
public class Step6 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String words = sc.nextLine();
        reverseString(words);

    }
    static void reverseString(String words){
        char[] arr = words.toCharArray();
        for(int i=0;i<arr.length;i++) {
            if(i == words.indexOf(arr[i])) {
                System.out.print(arr[i]);
            }
        }
    }
}
