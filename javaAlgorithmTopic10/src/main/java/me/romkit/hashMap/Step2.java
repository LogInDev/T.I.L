package me.romkit.hashMap;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Step2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String a = sc.nextLine();
        String b = sc.nextLine();

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
            answerB.put(x, answerB.getOrDefault(x, 0) + 1);
        }
        for(Character y:answerA.keySet()) {
            if(answerA.get(y) != answerB.get(y)){
                answer = "NO";
                break;
            }
        }
        System.out.println(answer);
    }
}
