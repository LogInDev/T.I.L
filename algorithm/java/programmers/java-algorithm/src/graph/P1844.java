package graph;

import java.util.Arrays;

public class P1844 {
    public static void main(String[] args) {
        int[][] maps ={{1,0,1,1,1},{1,0,1,0,1},{1,0,1,1,1},{1,1,1,0,1},{0,0,0,0,1}};
        int answer = solution(maps);
        System.out.println("answer = " + answer);
    }
    public static int solution(int[][] maps) {
        int answer = 0;

        int[][] visited = new int[maps.length][maps[0].length];
        for (int[] ints : visited) {
            Arrays.fill(ints, 0);
        }

        int[] dx = {0, 1, -1, 0};
        int[] dy = {1, 0, 0, -1};
        int x = 0;
        int y = 0;
        int pre_answer = answer;
//        while (x < maps.length && y < maps[0].length) {

            for (int i = 0; i < dy.length; i++) {
                int nx = x + dx[i];
                int ny = y + dy[i];

                if (nx >= 0 && ny < maps.length && ny >= 0 && nx < maps[0].length) {
                    System.out.println("여기1"+x+", "+y);
                    if (maps[ny][nx] == 1) {
                        System.out.println("여기2");
                        if (visited[ny][nx] == 0) {
                            System.out.println("여기3");
                            visited[ny][nx] = 1;
                            pre_answer = answer;
                            answer++;
                            x = nx;
                            y = ny;
                            break;
                        }
                    }
                }
                System.out.println("여기4");
            }
            System.out.println("여기5"+x+", "+y);
            if (pre_answer == answer) {return -1;}
//        }
        return answer;
    }
}
