package hashEx;

import java.util.*;

public class P42576 {
    public static void main(String[] args) {
        String[] p = {"leo", "kiki", "eden"};
        String[] c = {"kiki", "eden"};

        solution(p, c);
    }
    public static String solution(String[] participant, String[] completion) {
        String answer = "";
        Set<String> set = new HashSet<>(List.of(participant));
        set.removeAll(List.of(completion));
//        System.out.println("set = " + set);
        answer = set.iterator().next();
        return answer;
    }
}
