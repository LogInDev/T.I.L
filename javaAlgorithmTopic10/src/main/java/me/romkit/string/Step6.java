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
        Set<Character> result = new HashSet<Character>();
        for(char a: arr) {
            result.add(a);
        }
        System.out.println(result.toString());
    }
}
