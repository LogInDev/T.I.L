package hashMapEx;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class P92334 {
    public static void main(String[] args) {
        String[] id_list = {"muzi", "frodo", "apeach", "neo"};
        String[] report = {"muzi frodo", "apeach frodo", "frodo neo", "muzi neo", "apeach muzi"};
        int k = 2;
        int[] answer = solution(id_list, report, k);
        System.out.println("answer = " + Arrays.toString(answer));
    }
    public static int[] solution(String[] id_list, String[] report, int k) {
        int[] answer = new int[id_list.length];

        String[] distinct_report = Arrays.stream(report)
                .distinct()
                .toArray(String[]::new);
        Map<String, Integer> cnt_map = new HashMap<>();

        for (String d : distinct_report) {
            String[] d_split = d.split(" ");
            cnt_map.put(d_split[1], cnt_map.getOrDefault(d_split[1], 0) + 1);
        }
        List<String> mail_key = cnt_map.entrySet()
                .stream()
                .filter(entry -> entry.getValue() >= k)
                .map(Map.Entry::getKey)
                .toList();
        //.collect(Collectors.toList());  java16 미만 버전은 이 코드 사용
        Map<String, Integer> result_map = new HashMap<>();
        for (String r : distinct_report) {
            String[] split_report = r.split(" ");
            if (mail_key.contains(split_report[1])) {
                result_map.put(split_report[0], result_map.getOrDefault(split_report[0], 0)+1);
            }
        }
        for (int i = 0; i < id_list.length; i++) {
            answer[i] = result_map.getOrDefault(id_list[i], 0);
        }
        return answer;
    }
}
