package ex0;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.TreeSet;

public class Solution2 {
    public static void main(String[] args) {
        //의사 구현
        //1. 입력 받기
        //2. 좌우 [] 제거
        //3. ,를 기준으로 분리
        //4. 내림차순 정렬

    }

    private static int[] solution(int[] arr){
//        Integer[] result = Arrays.stream(arr).boxed().distinct().toArray(Integer[]::new);
//        Arrays.sort(result, Collections.reverseOrder());
//        return Arrays.stream(result).mapToInt(Integer::intValue).toArray();
        //중복값제거, 내림차순 정렬
        TreeSet<Integer> set = new TreeSet<>(Collections.reverseOrder());
        for (int num : arr) {
            set.add(num);
        }

        //int 형 배열에 담아서 반환
        int[] result = new int[set.size()];
        for (int i = 0; i < result.length; i++) {
            result[i] = set.pollFirst();
        }
        return  result;
    }
}
