package stackEx;

import java.util.*;

public class P64061 {
    public int solution(int[][] board, int[] moves) {
        int answer = 0;
        // 1. board의 2차원 배열 수만큼 queue 리스트 만들기
        List<ArrayDeque<Integer>> queue_arr = new ArrayList<>();

        for (int i = 0; i < board.length; i++) {
            ArrayDeque<Integer> queue = new ArrayDeque<>();
            for (int j = 0; j < board[i].length; j++) {
                if(board[j][i] != 0) queue.add(board[j][i]);
                else continue;
            }
            if (!queue.isEmpty()) queue_arr.add(queue);
            else continue;
        }
        ArrayDeque<Integer> result_stack = new ArrayDeque<>();
        for (int i = 0; i < moves.length; i++) {
            ArrayDeque<Integer> target = queue_arr.get(moves[i] - 1);
            if(target.isEmpty()) continue;
            if (result_stack.isEmpty()) result_stack.add(target.pop());
            else {
                if (result_stack.peekLast() == target.getFirst()){
                    target.pop();
                    result_stack.pollLast();
                    answer+=2;
                }else result_stack.add(target.pop());
            }
        }


        return answer;
    }
}
