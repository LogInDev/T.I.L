package hashMapEx;

import java.util.*;
import java.util.stream.Collectors;

public class P42579 {
    public static void main(String[] args) {
        String[] genres = {"classic", "pop", "classic", "classic", "pop"};
        int[] plays = {800, 600, 150, 800, 2500};
        int[] amswer = solution(genres, plays);
        System.out.println("amswer = " + Arrays.toString(amswer));
    }
    public static int[] solution(String[] genres, int[] plays) {
//        int[] answer = {};

        List<Integer> result = new LinkedList<>();

        Map<String, Integer> max_map = new HashMap<>();
        for (int i = 0; i < genres.length; i++) {
            max_map.put(genres[i], max_map.getOrDefault(genres[i],0)+plays[i]);
        }
//        System.out.println(max_map);
        String[] sorted_genres = max_map.entrySet()
                .stream()
                .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
                .map(Map.Entry::getKey)
                .toArray(String[]::new);
        for (String sortedGenre : sorted_genres) {
            Map<Integer, Integer> temp_map = new HashMap<>();
            for (int i = 0; i < genres.length; i++) {
                if (sortedGenre.equals(genres[i])) {
                    temp_map.put(i, plays[i]);
                }
            }
            temp_map.entrySet()
                    .stream()
                    .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
                    .map(Map.Entry::getKey)
                    .limit(2)
                    .forEach(result::add);
        }
//        System.out.println("result = " + result);
        return result.stream()
                .mapToInt(Integer::intValue)
                .toArray();
    }
}
