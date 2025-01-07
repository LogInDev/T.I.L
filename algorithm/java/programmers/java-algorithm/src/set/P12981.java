package set;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class P12981 {
    public static void main(String[] args) {
//        String[] words = {"tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"};
        String[] words = {"hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"};
//        String[] words = {"hello", "one", "even", "never", "now", "world", "draw"};

        int[] result = solution(5, words);
        System.out.println("Arrays.toString(result) = " + Arrays.toString(result));
    }
    public static int[] solution(int n, String[] words) {
        int[] answer = new int[2];
        int round = 0;
        boolean found = true;
        Set<String> set = new HashSet<>();
        char sameA = words[0].charAt(0);
        while(found) {
            if((n*round)>=words.length-1-n) {found = false;}
            for (int j = (n*round); j < (n*(round+1)); j++) {
                if (words[j].length() < 2) {
                    answer[0] = (j%n)+1;
                    found = false;
                    break;
                }
                if((j != 0) & (sameA != words[j].charAt(0))) {
                    answer[0] = (j%n)+1;
                    found = false;
                    break;
                }
                sameA = words[j].charAt(words[j].length()-1);
                int bfSetSize = set.size();
                set.add(words[j]);
                if (set.size() == bfSetSize) {
                    answer[0] = (j%n)+1;
                    found = false;
                    break;
                }

            }
            round++;
        }

        answer[1] = answer[0]==0?0:round;

        return answer;
    }
}
