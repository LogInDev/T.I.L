package me.romkit.string;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
import java.util.StringTokenizer;

public class SearchString {
    public static void main(String[] args) throws IOException {

        Scanner sc = new Scanner(System.in);
        String a  = sc.next();
        String r = sc.next();
        int result = 0;
        a = a.toLowerCase();
        r = r.toLowerCase();
        String[] arr = a.split("");
        for(int i=0;i<arr.length;i++){
            if(arr[i].equals(r)){
                result++;
            }
        }
        System.out.println(result);
    }


}

