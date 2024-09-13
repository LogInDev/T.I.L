package me.romkit.string;

import java.util.Scanner;

public class Step3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String sentence = sc.nextLine();
        System.out.println(searchLongWord(sentence));

    }
    static String searchLongWord(String sentence){
        String[] arr = sentence.split(" ");
        int max=arr[arr.length-1].length();
        String longWord = arr[arr.length-1];
        for(int i=arr.length-2;i>-1;i--){
            if(arr[i].length() >= max){
                longWord = arr[i];
                max = arr[i].length();
            }

        }
        return longWord;
    }

}
