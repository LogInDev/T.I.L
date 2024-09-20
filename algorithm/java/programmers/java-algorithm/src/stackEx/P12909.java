package stackEx;

import java.util.ArrayDeque;
import java.util.Stack;

public class P12909 {
    public static void main(String[] args) {
        System.out.println(solution("()()"));
    }

    static boolean solution(String s) {
        // 의사결정
        //1. ')'가 나오기 전까지 push
//        Stack<Character> strings = new Stack<>();
        ArrayDeque<Character> strings = new ArrayDeque<>(); // ArrayDeque를 사용하는 것이 더 효율적. 스택과 큐 기능을 모두 지원

        // 1-1. 처음부터 ')' 나올 경우 or 전체 길이가 홀수일 경우 false
        if (s.charAt(0) == ')' || s.length() % 2 > 0) {
            return false;
        }

        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == '(') {
                strings.push(s.charAt(i));
            } else {
                // 스택이 비어있지 않은 경우에만 pop
                if (strings.isEmpty()) {
                    return false; // ')'가 더 많으면 false
                }
                strings.pop();
            }
        }

        // 스택이 비어있으면 모든 괄호가 잘 닫혔다는 의미
        return strings.isEmpty();
    }
}
