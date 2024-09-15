package arrEx;

import java.util.*;
import java.util.stream.Collectors;

public class P42889 {
    public static void main(String[] args) {
//        int[] stages = {1,2,3,4};
//        int N = 6;
//        solution(N, stages);
    }
    public static int[] solution(int N, int[] stages) {
        int[] answer = {};
        //1. 1번 스테이지에 도달했으나 클리어하지 못한 플레이어 수 파악
        Arrays.stream(stages)
                .filter(n -> n==1)
                .count();
        //2. 1번 스테이지에 도달한 플레이어 수 파악
        Arrays.stream(stages)
                .filter(n -> n>=1)
                .count();
        //3. 1, 2 과정을 스테이지 번호만 바꾸고 N개 만큼 적용
        Map<Integer, Double> result = new HashMap<>();

        for (int i = 1; i < N+1; i++) {
            int finalI = i;
            long not_yet = Arrays.stream(stages)
                    .filter(n -> n== finalI)
                    .count();
            System.out.println("not_yet = " + not_yet);
            long reach = Arrays.stream(stages)
                    .filter(n -> n>=finalI)
                    .count();
            System.out.println("reach = " + reach);
            double fail_per = reach ==0?0: (double) not_yet / reach;
            result.put(i, fail_per);
        }

        List<Integer> resultStage = result.entrySet().stream()
                .sorted((o1, o2)-> Double.compare(o2.getValue(), o1.getValue()))
                .map(Map.Entry::getKey).toList();
        answer = resultStage.stream().mapToInt(Integer::intValue).toArray();
        System.out.println("result = " + result);
        System.out.println("answer = " + Arrays.toString(answer));


        return answer;
    }
}
