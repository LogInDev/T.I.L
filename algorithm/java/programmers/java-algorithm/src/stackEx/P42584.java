package stackEx;

import java.util.ArrayDeque;
import java.util.Arrays;

public class P42584 {
    public static void main(String[] args) {

        int[] prices = {1, 2, 3, 2, 1};
        solution(prices);
        // answer[1]이 3인 이유는 인덱스 차 1당 1초의 경과로 보고 3초간 유지 후 4부터 떨어졌으므로 3초유지

    }
    public static int[] solution(int[] prices) {
        int[] answer = new int[prices.length];

        ArrayDeque<Integer> stack = new ArrayDeque<>();
        stack.push(0);
        for (int i = 1; i < prices.length; i++) {
            while (!stack.isEmpty() && prices[i] < prices[stack.peek()]) {
                int j = stack.pop();
                answer[j] = i-j;
            }
            stack.push(i);
        }

        while(!stack.isEmpty()){
            int j = stack.pop();
            answer[j] = prices.length - 1 - j;
        }

        System.out.println("answer = " + Arrays.toString(answer));

        return answer;
    }
}
