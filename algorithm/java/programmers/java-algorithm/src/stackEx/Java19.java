package stackEx;

import java.util.ArrayDeque;

public class Java19 {
    public static void main(String[] args) {
        int decimal = 12345;
        solution(decimal);
    }
    public static String solution(int decimal) {
        ArrayDeque<Integer> stack = new ArrayDeque<>();

        while(decimal>0){
            int rest = 0;
            rest = decimal % 2;
            decimal /= 2;
            stack.push(rest);
        }


        StringBuilder sb = new StringBuilder();
        while (!stack.isEmpty()) {
            sb.append(stack.pop());
        }
        System.out.println("sb = " + sb);
        return sb.toString();
    }
}
