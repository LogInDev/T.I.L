package stackEx;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class P81303 {
    public String solution(int n, int k, String[] cmd) {
        String answer = "";
    //1. 제거 저장할 stack과  up,down 배열 만들기
        Stack<Integer> delete = new Stack<>();
        int[] up = new int[n + 2];
        int[] down = new int[n + 2];
        for (int i = 0; i < n+2; i++) {
            up[i] = i - 1;
            down[i] = i + 1;
        }

    //2. k+1로 생각
        k++;

        for (String s : cmd) {
            // C일때 로직 처리
            if (s.startsWith("C")) {
                delete.push(k);
                up[down[k]] = up[k];
                down[up[k]] = down[k];
                k = n < down[k] ? up[k] : down[k];
            } else if (s.startsWith("Z")) {
                int restore = delete.pop();
                up[down[restore]] = restore;
                down[up[restore]] = restore;
            }else{
                String[] c = s.split(" ");
                int x = Integer.parseInt(c[1]);
                for (int i = 0; i < x; i++) {
                    k = c[0].equals("U") ? up[k] : down[k];
                }
            }


        }




        StringBuilder sb = new StringBuilder("O".repeat(n));
        while (!delete.isEmpty()) {
            int target = delete.pop();
            sb.setCharAt(target -1, 'X');
        }
        answer = sb.toString();
        return answer;
    }
}
