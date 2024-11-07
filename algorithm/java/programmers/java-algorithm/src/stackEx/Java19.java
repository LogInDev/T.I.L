package stackEx;

import java.util.ArrayDeque;

public class Java19 {
    public static void main(String[] args) {
        int decimal = 12345;
        solution(decimal);
    }
    public static int[] solution(int decimal) {
        int[] answer;
        ArrayDeque<Integer> stack = new ArrayDeque<>();

        while(decimal>0){
            int rest = 0;
            rest = decimal % 2;
            decimal /= 2;
            stack.push(rest);
        }

        System.out.println("stack = " + stack);
        return new int[1];
    }
}
