package set;

import java.util.Arrays;

public class P1845 {
    public static void main(String[] args) {
//        int[] nums = {3, 1, 2, 3};
        int[] nums = {3, 3,3,2,2,4};
        int result = solution(nums);
        System.out.println(result);
    }
    public static int solution(int[] nums) {
        int answer = 0;
        
        int n = nums.length;
        final int[] disstinct_nums = Arrays.stream(nums)
                .distinct()
                .toArray();
        System.out.println("Arrays.toString(nums) = " + Arrays.toString(disstinct_nums));
        if (disstinct_nums.length >= n / 2) {
            answer = n / 2;
        } else {
            answer = disstinct_nums.length;
        }
        
        return answer;
    }
}
