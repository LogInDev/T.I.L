package arrEx;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;

public class P42889_241105 {
    public static void main(String[] args) {
        int[] stages = {2,1,2,6,2,4,3,3};
        int N = 5;
        solution(N, stages);
    }
    public static int[] solution(int N, int[] stages) {
        int[] answer = new int [N];
        Map<Integer, Double> result = new LinkedHashMap<>();
        int index = 0;
        while(index < N){
            int failer = 0;
            int total = 0;
            for (int stage : stages) {
                if(stage == (index+1)) failer++;
                if(stage >= (index+1)) total++;
            }
            if(total == 0) result.put(index +1, 0.0);
            else result.put(index+1, (double) failer / total);
            index++;
        }
        answer = result.entrySet().stream()
                .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
                .map(Map.Entry::getKey)
                .mapToInt(Integer::intValue)
                .toArray();
        return answer;
    }
}
