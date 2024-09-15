package me.romkit.string;

import java.util.Scanner;

public class step2 {
    static StringBuilder chageFn(String arr){
        StringBuilder result=new StringBuilder();
        String[] upper = arr.toUpperCase().split("");
        String[] lower = arr.toLowerCase().split("");
        String[] arrArray = arr.split("");
        for(int i=0;i<arr.length();i++){
            result.append(arrArray[i].equals(upper[i]) ? lower[i] : upper[i]);
        }
        return result;
    }
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String arr = sc.next();
        System.out.println(chageFn(arr));

    }
}
