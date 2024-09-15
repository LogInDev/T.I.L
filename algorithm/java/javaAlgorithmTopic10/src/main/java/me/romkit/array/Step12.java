package me.romkit.array;

import java.util.Arrays;
import java.util.Scanner;

public class Step12 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();
        int[][] arr = new int[M][N];
        for(int j=0;j<M;j++){
            for(int i=0;i<N;i++){
                arr[j][i] = sc.nextInt();
            }
        }
        solution(N, M, arr);
    }

    static void solution(int N, int M, int[][] arr){
        int answer = 0;
        for(int i=1;i<=N;i++){
            for(int j=1;j<=N;j++){
                int cnt = 0;
                for(int k=0;k<M;k++) {   // 시험 수
                    int pi=0, pj=0;
                    for(int s=0;s<N;s++) {  // 등수
                        if(arr[k][s] == i) {
                            pi = s;
                        }
                        if(arr[k][s] == j) {
                            pj = s;
                        }
                    }
                    if(pi<pj) {  //i : 멘토 , j : 멘티
                        cnt++;
                    }
                }
                if(cnt==M) answer++;
            }
        }
        System.out.println(answer);
    }
}
