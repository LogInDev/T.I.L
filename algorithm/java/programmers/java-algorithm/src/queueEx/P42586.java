package queueEx;
import java.util.*;
public class P42586 {
    public static void main(String[] args) {

        int[] progresses = {95, 90, 99, 99, 80, 99};
        int[] speeds = {1, 1, 1, 1, 1, 1};
        int[] result = solution(progresses, speeds);
        System.out.println("result : " + Arrays.toString(result));
    }

    public static int[] solution(int[] progresses, int[] speeds) {


        ArrayDeque<Integer> que = new ArrayDeque<Integer>();
        ArrayDeque<Integer> result_cnt = new ArrayDeque<Integer>();

        for(int i=0;i<progresses.length;i++) {
            int rest = 100 - progresses[i];
            int rest_day = rest / speeds[i];
            if(rest % speeds[i] != 0 )rest_day++;
            que.addLast(rest_day);
        }
        int index = 0;
        while(!que.isEmpty()) {
            int cnt = 1;
            int standard = que.poll();
            while(!que.isEmpty() && standard>=que.peekFirst()) {
                que.poll();
                cnt++;
            }
            result_cnt.addLast(cnt);
        }

        int[] answer = new int[result_cnt.size()];
        while(!result_cnt.isEmpty()) {
            answer[index] = result_cnt.poll();
            index++;
        }

        return answer;
    }
}
