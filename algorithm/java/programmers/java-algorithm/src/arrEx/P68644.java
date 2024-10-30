package arrEx;


import java.util.HashSet;
import java.util.Set;

public class P68644 {
    public static int[] solution(int[] numbers) {
        Set<Integer> result = new HashSet<>();
        for (int i = 0; i < numbers.length; i++) {
            for (int j = i + 1; j < numbers.length - i; j++) {
                result.add(numbers[i] + numbers[j]);
            }
        }

        return result.stream().sorted().mapToInt(Integer::intValue).toArray();
    }
}
