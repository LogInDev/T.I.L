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

        // 이미 사용한 단어를 저자하는 set
        HashSet<String> usedWords = new HashSet<>();
        //이전 단어의 마지막 글자, 최초 상태는 첫 번째 사람이 말하는 첫 번째 글자로 초기화
        char prevWord = words[0].charAt(0);

        for (int i = 0; i < words.length; i++) {
            //이미 사용한 단어이거나 첫 글자가 이전 단어와 일치하지 않으면
            if (usedWords.contains(words[i]) || words[i].charAt(0) != prevWord) {
                //탈락하는 사람의 번호와 차례를 반환
                return new int[]{(i % n) +1, (i / n) +1};
            }
            //사용한 단어로 추가
            usedWords.add(words[i]);
            //이전 단어의 마지막 글자 업데이트
            prevWord = words[i].charAt(words[i].length() - 1);

        }
        //모두 통과했을 경우 반환값
        return new int[]{0, 0};
    }
}
