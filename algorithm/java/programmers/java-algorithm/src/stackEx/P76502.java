package stackEx;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

public class P76502 {
    public static void main(String[] args) {
        solution("}}}");
    }
    public static int solution(String s) {
        int answer = 0;
        //의사결정
        List<Character> list = new ArrayList<>();
        for (char c : s.toCharArray()) {
            list.add(c);
        }
        //1. 하나의 스텍을 만듦.
        for (int i = 0; i < list.size()-1 ; i++) {
            ArrayDeque<Character> stack = new ArrayDeque<>();
            list.forEach(c->{
                switch (c){
                    case '(', '[', '{':
                        stack.push(c);
                        break;
                    case ')':
                        if(!stack.isEmpty() && stack.peek() == '(') {
                            stack.pop();
                        }else {
                            stack.push(c);
                        }
                        break;
                    case '}':
                        if(!stack.isEmpty() && stack.peek() == '{') {
                            stack.pop();
                        }else {
                            stack.push(c);
                        }
                        break;
                    case ']':
                        if(!stack.isEmpty() && stack.peek() == '[') {
                            stack.pop();
                        }else {
                            stack.push(c);
                        }
                        break;
                }
            });
            if (stack.isEmpty()) answer++;
            list.add(list.get(0));
            list.remove(0);
        }


        return answer;
    }
}
