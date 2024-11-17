package hashMapEx;

import java.util.*;

public class P42888 {
    public static void main(String[] args) {
        String[] record = {"Enter uid1234 Muzi", "Enter uid4567 Prodo", "Leave uid1234", "Enter uid1234 Prodo", "Change uid4567 Ryan"};
        String[] answer = solution(record);
        System.out.println(Arrays.toString(answer));
    }
    public static String[] solution(String[] record) {
        String[] answer = new String[record.length];
        String[] id = new String[record.length];
        Map<String, String> result = new HashMap<>();
        for (int i = 0; i < record.length; i++) {
            String[] cmd = record[i].split(" ");
//            System.out.println("cmd = " + Arrays.toString(cmd));
            if (cmd[0].equals("Enter")) {
                result.put(cmd[1], cmd[2]);
                id[i] = cmd[1];
                answer[i] = "님이 들어왔습니다.";
            } else if (cmd[0].equals("Leave")) {
                id[i] = cmd[1];
                answer[i] = "님이 나갔습니다.";
            } else {
                result.put(cmd[1], cmd[2]);
            }

        }
        List<String> real_answer = new LinkedList<>();

        for (int i = 0; i < id.length; i++) {
            if (id[i] != null) { // null 체크
//                System.out.println("id[i] = " + id[i]);
//                System.out.println("answer = " + answer[i]);
                real_answer.add(result.get(id[i]) + answer[i]);
            }
        }
        String[] real_answer_arr = new String[real_answer.size()];
        return real_answer.toArray(real_answer_arr); // 배열 반환
    }
}
