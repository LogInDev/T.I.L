package hashEx;

import java.util.HashMap;
import java.util.Map;

public class P131127 {
    public static void main(String[] args) {
//        String[] want = {"banana", "apple", "rice", "pork", "pot"};
        String[] want = {"apple"};
//        int[] number = {3, 2, 2, 2, 1};
        int[] number = {10};
//        String[] discount = {"chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"};
        String[] discount = {"banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana"};
        solution(want, number, discount);

        HashMap<String, Integer> map1 = new HashMap<>();
        map1.put("abc", 1);
        map1.put("bcd", 1);
        map1.put("cde", 1);
        HashMap<String, Integer> map2 = new HashMap<>();
        map2.put("abc", 1);
        map2.put("bcd", 1);
        map2.put("cde", 1);

        System.out.println(map1.equals(map2));

    }
    public static int solution(String[] want, int[] number, String[] discount) {
        int answer = 0;
        Map<String, Integer> want_map = new HashMap<>();
        for (int i = 0; i < want.length; i++) {
            want_map.put(want[i], number[i]);
        }
        int discount_size = discount.length;
        int st_index = 0;// discount를 순회 시작 index
        while (st_index <= discount_size - 10) {
            Map<String, Integer> copy_map = new HashMap<>(want_map);
            for (int i = st_index; i < 10+st_index; i++) {
                if (copy_map.containsKey(discount[i])) {
                    copy_map.put(discount[i], copy_map.get(discount[i]) - 1);
                }
            }
            st_index++;
            // 사고 싶은 물건들의 남은 합
            if (copy_map.values().stream().allMatch(value -> value < 1)) {
                answer++;
            }
        }
//        System.out.println("할인 받을 수 있는 시작 날짜의 개수 = " + answer);
        return answer;
    }
}
