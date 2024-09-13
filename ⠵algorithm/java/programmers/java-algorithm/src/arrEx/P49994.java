package arrEx;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class P49994 {
    public int solution(String dirs) {
        int answer = 0;
        //1. U, R, D, L을 숫자로 정의
        int[][] d_load = {{0, -1}, {1, 0}, {0, -1}, {-1, 0}};

        //2. dirs를 하나씩 적용 -> count+1
        String[] split_dirs = dirs.split("");
        int cnt = 0;

        int[][] load_arr = new int[split_dirs.length+1][2];
        load_arr[0][0] = 0;
        load_arr[0][1] = 0;
        for (int i = 0; i < split_dirs.length; i++) {
            int x = load_arr[i][0];
            int y = load_arr[i][1];
            switch (split_dirs[i]){
                case "U" :
                    x += d_load[0][0];
                    y += d_load[0][1];
                    break;
                case "R" :
                    x += d_load[1][0];
                    y += d_load[1][1];
                    break;
                case "D" :
                    x += d_load[2][0];
                    y += d_load[2][1];
                    break;
                case "L" :
                    x += d_load[3][0];
                    y += d_load[3][1];
                    break;
            }

            //2-1. 5 초과일 경우 5로, -5 미만일 경우 -5로 수정 -> count-1
            if(x>5||x< -5||y>5||y< -5){
                if (x >5) x = 5;
                if(x< -5) x = -5;
                if (y >5) y = 5;
                if(y< -5) y = -5;
                cnt++;
            }

            load_arr[i+1][0] = x;
            load_arr[i+1][1] = y;

        }

        Set<int[]> chk_arr = new HashSet<>();
        Arrays.stream(load_arr)
                        .forEach(arr->chk_arr.add(arr));
        System.out.println(chk_arr.size() );



        //2-2. 중복되는게 있는지 비교
        //2-2-1. 중복되는게 있을 경우 중복되는 거 직전의 값을 비교
        //2-2-2. 직전 값이 같으면 count-1, 다르면 pass

        //3. count 출력
        return answer;
    }
}
