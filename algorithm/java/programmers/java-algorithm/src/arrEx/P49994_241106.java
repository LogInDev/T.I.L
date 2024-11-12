package arrEx;

import java.util.*;

public class P49994_241106 {
    public static void main(String[] args) {
//        String dirs = "ULURRDLLU";
        String dirs = "LULLLLLLU";
        int result = solution(dirs);
        System.out.println("result = " + result);
    }
    public static int solution(String dirs) {
        int answer = 0;
        int[] dx = {0, 0, 1, -1}; //위, 아래, 오른쪽, 왼쪽
        int[] dy = {1, -1, 0, 0};
        List<List<Integer>> list = new LinkedList<>();
        List<List<Integer>> reverse_list = new ArrayList<>();

        int x1=0;
        int y1=0;
        int x2=0;
        int y2=0;
        for (char dir : dirs.toCharArray()) {
            switch (dir){
                case 'U':
                    x2 = x2 + dx[0];
                    y2 = y2 + dy[0];
                    break;
                case 'D':
                    x2 = x2 + dx[1];
                    y2 = y2 + dy[1];
                    break;
                case 'R':
                    x2 = x2 + dx[2];
                    y2 = y2 + dy[2];
                    break;
                case 'L':
                    x2 = x2 + dx[3];
                    y2 = y2 + dy[3];
                    break;
            }
            if(Math.abs(x2)>5 || Math.abs(y2)>5){

                if(Math.abs(x2)>5){
                    if(x2>5) x2 = 5;
                    else x2 = -5;
                }
                if(Math.abs(y2) >5){
                    if(y2>5) y2 = 5;
                    else y2 = -5;
                }
            }else{
                if(!list.contains(Arrays.asList(x2, y2, x1, y1)))list.add(Arrays.asList(x1, y1, x2, y2));
            }
            x1 = x2;
            y1 = y2;

        }
        // 기존 순서 중복 제거
        Set<List<Integer>> set = new LinkedHashSet<>(list);
        List<List<Integer>> ditinctList = new LinkedList<>(set);
        System.out.println("list = " + ditinctList);
        answer = ditinctList.size();
        return answer;
    }
}
