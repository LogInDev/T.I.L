package me.romkit.string;

import java.util.Scanner;

public class Step4 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        String[] arr = new String[N];
        for(int i=0; i<N;i++){
            arr[i] = sc.nextLine();
        }
        reverseString(arr);
    }
    static void reverseString(String[] arr){
        for(String a: arr ){
            StringBuilder sb = new StringBuilder(a);
            String result = sb.reverse().toString();
            System.out.println(result);
        }


    }
}
