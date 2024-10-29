package hashEx;

import java.util.*;
import java.util.stream.IntStream;

public class java18 {
    public static void main(String[] args) {
        int[] arr = {2,3,5,9};
        int target = 10;
        boolean result = solution(arr, target);
        System.out.println("result = " + result);
    }
    public static boolean solution(int[] arr, int target){
        boolean answer = false;
        HashSet<Integer> set = new HashSet<>();

        for (Integer i : arr) {
            if(set.contains(target - i)){
                return true;
            }
            set.add(i);
        }

        return answer;
    }
}
