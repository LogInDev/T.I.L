package arrEx;

import java.util.*;
import java.util.stream.IntStream;

public class java02 {
    public static void main(String[] args) {
        int[] arr = {4, 2, 2, 1, 3, 4};
        int[] result = solution(arr);
        System.out.println(Arrays.toString(result));
    }
    public static int[] solution(int[] arr){

        Integer[] result = Arrays.stream(arr)
                .boxed()
                .distinct().toArray(Integer[]::new);
        Arrays.sort(result, Collections.reverseOrder());
        return Arrays.stream(result).mapToInt(Integer::intValue).toArray();
    }
}
