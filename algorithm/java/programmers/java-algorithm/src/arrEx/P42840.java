package arrEx;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class P42840 {
    public static void main(String[] args) {
        int[] answers = {1, 3,2,4,2};
        int[] result = solution(answers);
        System.out.println("result = " + Arrays.toString(result));
    }
    public static int[] solution(int[] answers){
        List<Integer> answer = new ArrayList<>();

        //1. 수포자들의 규칙대로 배열 선언
        int[] arr1 = {1, 2, 3, 4, 5};
        int[] arr2 = {2, 1, 2, 3, 2, 4, 2, 5};
        int[] arr3 = {3, 3, 1, 1, 2, 2, 4, 4, 5, 5};
        List<Integer> cnt1 = new ArrayList<>();
        List<Integer> cnt2 = new ArrayList<>();
        List<Integer> cnt3 = new ArrayList<>();

        //2. 정답과 비교해서 맞힌사람만 cnt에 추가 - 수포자들의 규칙배열이 반복되도록 배열 갯수로 나눈 나머지 사용
        for (int i = 0; i < answers.length; i++) {
            if(answers[i] == arr1[i%arr1.length]) cnt1.add(1);
            if(answers[i] == arr2[i%arr2.length]) cnt2.add(1);
            if(answers[i] == arr3[i%arr3.length]) cnt3.add(1);
        }
        //3. 각각 비교한 cnt의 크기중 제일 큰 크기를 확인
        int max_cnt = Math.max(cnt3.size(), Math.max(cnt1.size(), cnt2.size()));
        //4. 제일 큰 크기와 같은걸 정답 배열에 추가
        if(cnt1.size() == max_cnt) answer.add(1);
        if(cnt2.size() == max_cnt) answer.add(2);
        if(cnt3.size() == max_cnt) answer.add(3);
        return answer.stream().mapToInt(Integer::intValue).toArray();
    }
}
