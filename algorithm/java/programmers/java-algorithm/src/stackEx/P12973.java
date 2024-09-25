package stackEx;

import java.util.ArrayDeque;
import java.util.stream.IntStream;

public class P12973 {
    public static void main(String[] args) {
        solution("cdcd");
    }
    public static int solution(String s)
    {
        int answer = -1;

        ArrayDeque<Character> stack = new ArrayDeque<>();
        char[] arr = s.toCharArray();

        IntStream.range(0, s.length())
                .forEach(c->{
                    if (!stack.isEmpty()) {
                        if (stack.peek() == arr[c]) stack.pop();
                        else stack.push(arr[c]);
                    }else stack.push(arr[c]);
                });

        if (stack.isEmpty()) answer = 1;
        else answer = 0;

        return answer;
    }
}
