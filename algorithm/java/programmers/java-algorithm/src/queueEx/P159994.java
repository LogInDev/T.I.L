package queueEx;
import java.util.*;
public class P159994 {
    public static void main(String[] args) {
        String[] cards1 = {"i", "water", "drink"};
        String[] cards2 = {"want", "to"};
        String[] goal = {"i", "want", "to", "drink", "water"};
        String result = solution(cards1, cards2, goal);
        System.out.println(result);
    }

    public static String solution(String[] cards1, String[] cards2, String[] goal) {
        String answer = "";

        ArrayDeque<String> que1 = new ArrayDeque<String>();
        ArrayDeque<String> que2 = new ArrayDeque<String>();
        for(String c1: cards1) {
            que1.addLast(c1);
        }
        for(String c1: cards2) {
            que2.addLast(c1);
        }

        answer = "Yes";
        for(String g:goal) {
            if(g.equals(que1.peekFirst())) que1.poll();
            else if(g.equals(que2.peekFirst())) que2.poll();
            else answer = "No";
        }

        return answer;
    }
}
