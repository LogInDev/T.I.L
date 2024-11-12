package hashEx;

import java.awt.image.AreaAveragingScaleFilter;
import java.util.*;

public class P42576 {
    public static void main(String[] args) {
        String[] p = {"leo", "kiki", "eden"};
        String[] c = {"kiki", "eden"};

        String result = solution1(p, c);
        System.out.println("result = " + result);
    }
    public static String solution1(String[] participant, String[] completion) {
        String answer = "";
        Arrays.sort(participant);
        Arrays.sort(completion);
        System.out.println("participant = " + Arrays.toString(participant));
        System.out.println("completion = " + Arrays.toString(completion));
        for (int i = 0; i < participant.length; i++) {
            if(i == participant.length - 1) return participant[i];
            if(participant[i].equals(completion[i])){
                continue;
            } else {
                return participant[i];
            }
        }
        return null;
    }
    public static String solution2(String[] participant, String[] completion) {
        String answer = "";
        Map<String, Integer> hashMap = new HashMap<>();
        for (String c : completion) {
            hashMap.put(c, hashMap.getOrDefault(c, 0) + 1);
        }
        for (String p : participant) {
            if (hashMap.getOrDefault(p, 0) == 0) {
                return p;
            }
            hashMap.put(p, hashMap.get(p) - 1);
        }
        return null;
    }
}
