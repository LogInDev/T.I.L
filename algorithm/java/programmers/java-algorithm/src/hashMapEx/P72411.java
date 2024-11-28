package hashMapEx;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class P72411 {
    private static List<String> resultList = new ArrayList<>();
    private static Map<Integer, List<String>> cntMap = new HashMap<>();
    public static void main(String[] args) {
        String[] orders = {"ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"};
//      String[] orders = {"ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"};
//      String[] orders = {"XYZ", "XWY", "WXA"};
//      String[] orders = {"ABCD", "ABCD", "ABCD"};

        int[] course = {2, 3, 4};
//        int[] course = {2, 3, 5};
//        int[] course = {2, 3, 4};
        String[] answer = solution(orders, course);
        System.out.println("Arrays.toString(answer) = " + Arrays.toString(answer));
    }
     public static String[] solution (String[]orders,int[] course){
        String[] answer = {};
         for (int i : course) {
             cntMap.put(i, new ArrayList<>());
         }
         for (String order : orders) {
             combinations(0, order.toCharArray(), "");
         }
         List<String> list = new ArrayList<>();
         for (Integer i : cntMap.keySet()) {
             List<String> in_map = cntMap.get(i);
             Map<String, Integer> resultMap = new HashMap<>();

             for (String s : in_map) {
                 resultMap.put(s, resultMap.getOrDefault(s, 0) + 1);
             }
             int max_num = resultMap.values().stream()
                     .max(Integer::compareTo)
                     .orElse(0);
             max_num = Math.max(max_num, 2);
             int finalMax_num = max_num;
             list.addAll(resultMap.entrySet()
                     .stream()
                             .filter(e -> e.getValue() == finalMax_num)
                            .sorted(Map.Entry.<String, Integer>comparingByValue())
                             .map(Map.Entry::getKey)
                     .collect(Collectors.toList()));
         }

        answer = list.stream()
                .sorted(Comparator.naturalOrder()).toArray(String[]::new);
         return answer;



    }

    private static void combinations(int idx, char[] orders, String result) {
        if (cntMap.containsKey(result.length())) {
            List<String> insertList = cntMap.get(result.length());
            insertList.add(result.chars()
                    .sorted()
                    .mapToObj(c -> String.valueOf((char) c))
                    .collect(Collectors.joining()));
            cntMap.put(result.length(), insertList);
        }
        for (int i = idx; i < orders.length; i++) {
            combinations(i+1, orders, result+orders[i]);
        }
    }
}
