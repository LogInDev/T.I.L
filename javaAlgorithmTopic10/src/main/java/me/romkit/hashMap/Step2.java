package me.romkit.hashMap;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Step2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String a = sc.next();
        String b = sc.next();

        solution(a, b);
    }

    public static void solution(String a, String b){
        Map<Character, Integer> answerA = new HashMap<Character, Integer>();
        Map<Character, Integer> answerB = new HashMap<Character, Integer>();
        String answer="YES";
        for(Character x:a.toCharArray()) {
            answerA.put(x, answerA.getOrDefault(x, 0) + 1);
        }
        for(Character x:b.toCharArray()) {
            if(!answerA.containsKey(x) || answerA.get(x)==0) {
                answer = "NO";
                break;
            }else {
                answerA.put(x,  answerA.get(x) - 1);
            }
        }
        System.out.println(answer);
    }
}
