package me.romkit.hashMap;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Step1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        String arr = sc.next();

        solution(n, arr);
    }

    public static void solution(int n, String arr){
        Character a = ' ';
        Map<Character, Integer> answer = new HashMap<Character, Integer>();
        for(Character x:arr.toCharArray()) {
            answer.put(x, answer.getOrDefault(x, 0) + 1);
        }
        int max = Integer.MIN_VALUE;
        for(char x: answer.keySet()) {
            if(answer.get(x) > max) {
                max = answer.get(x);
                a = x;
            }
        }
        System.out.println(a);
    }
}
