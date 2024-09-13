package me.romkit.array;

import java.util.Scanner;

public class Step10 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        int[][] arr = new int[N][N];
        for(int j=0;j<N;j++){
            String[] a = sc.nextLine().split(" ");
            for(int i=0;i<N;i++){
                arr[j][i] = Integer.parseInt(a[i]);
            }
        }
        solution(N, arr);

    }
    static void solution(int N, int[][] arr){
        // 방향 배열을 만들어 놓음. 북, 동, 남, 서 -> 방향 수 만큼 배열을 만듦
        int[] dx = {-1, 0, 1, 0};  // 행
        int[] dy = {0, 1, 0, -1};  // 열

        int answer = 0;
        for(int i=0;i<N;i++){
            for(int j=0;j<N;j++){
                boolean flag = true;
                for(int k=0;k<4;k++){
                    int nx = i+dx[k];
                    int ny = j+dy[k];
                    if(nx>=0 && ny>=0 && nx<N && ny<N && arr[nx][ny] >= arr[i][j]){
                        //주변에 있는 0 값들 처리
                        flag = false;
                        break;  // 하나라도 false이면 끝냄
                    }
                }
                if(flag) answer++;
            }
        }
        System.out.println(answer);


//------------------------self풀이--------------
//        int count=0;
//        for(int i=1;i<N+1;i++) {
//            for (int j = 1; j < N+1; j++) {
//                int max=arr[i][j];
//                if(arr[i-1][j] > max) max = arr[i-1][j];
//                if(arr[i+1][j] > max) max = arr[i+1][j];
//                if(arr[i][j-1] > max) max = arr[i][j-1];
//                if(arr[i][j+1] > max) max = arr[i][j+1];
//                if(max == arr[i][j]) count++;
//            }
//        }
//        System.out.println(count);
    }
}
