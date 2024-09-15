package arrEx;

import java.util.HashSet;
import java.util.Set;

public class P49994 {
    public int solution(String dirs) {
        int answer = 0;

        // 현재 위치
        int x = 0, y = 0;

        // 이동 경로를 저장할 Set
        Set<String> answerSet = new HashSet<>();

        for (char dir : dirs.toCharArray()) {
            int newX = x, newY = y;

            // 방향에 따라 새로운 위치 계산
            switch (dir) {
                case 'U':
                    newY += 1;
                    break;
                case 'R':
                    newX += 1;
                    break;
                case 'D':
                    newY -= 1;
                    break;
                case 'L':
                    newX -= 1;
                    break;
            }

            // 경계 체크
            if (newX < -5 || newX > 5 || newY < -5 || newY > 5) {
                continue; // 경계를 넘어가면 무시
            }

            // 이동 경로를 문자열로 저장 (양방향)
            String path1 = x + "," + y + "->" + newX + "," + newY;
            String path2 = newX + "," + newY + "->" + x + "," + y;

            // 경로가 이미 방문한 경로인지 체크
            if (!answerSet.contains(path1) && !answerSet.contains(path2)) {
                answerSet.add(path1);
                answerSet.add(path2);
                answer++; // 새로운 경로일 경우 카운트 증가
            }

            // 현재 위치 업데이트
            x = newX;
            y = newY;
        }

        return answer;
    }
}
