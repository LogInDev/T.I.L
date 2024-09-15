package arrEx;

import java.util.*;

public class P42820 {
    public static int[] solution(int[] answers) {
        //1. 1~3번 수포자의 답안지 패턴 배열 생성
        int[][] pattern = {{1, 2, 3, 4, 5},
        {2, 1, 2, 3, 2, 4, 2, 5},
         {3, 3, 1, 1, 2, 2, 4, 4, 5, 5}
        };
        //2. 1~3번 수포자의 답안지 패턴과 정답 비교하면서 count
        int[] cnt = new int[3];

        for (int i = 0; i < answers.length; i++) {
            for (int j = 0; j < pattern.length; j++) {
                if(pattern[j][i% pattern[j].length] == answers[i]){
                    cnt[j]++;
                }
            }
        }

        int maxValue = Arrays.stream(cnt).max().getAsInt();

        ArrayList<Integer> answer = new ArrayList<>();
        for (int i = 0; i < cnt.length; i++) {
            if (cnt[i] == maxValue) {
                answer.add(i+1);
            }
        }

        return answer.stream().mapToInt(Integer::intValue).toArray();
    }
}
