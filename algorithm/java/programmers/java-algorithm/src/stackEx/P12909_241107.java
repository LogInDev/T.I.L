package stackEx;

import java.util.ArrayDeque;

public class P12909_241107 {
    public static void main(String[] args) {
        String s = "(()(";
        boolean result = solution(s);
        System.out.println("result = " + result);
    }

    public static boolean solution(String s) {
        boolean answer = true;
        ArrayDeque<Character> char_arr = new ArrayDeque<>();

        for (char c : s.toCharArray()) {
            switch (c){
                case '(':
                    char_arr.push(c);
                    break;
                case ')':
                    if(char_arr.isEmpty()||char_arr.peek() == ')') {
                        answer = false;
                        break;
                    }else{
                        char_arr.pop();
                        break;
                    }

            }
        }
        if (!char_arr.isEmpty()) answer = false;
        return answer;
    }
}
