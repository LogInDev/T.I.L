package me.romkit.array;

import java.util.Scanner;

public class Step11 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int[][] arr = new int[N+1][6];
        for(int j=1;j<N+1;j++){
            for(int i=1;i<6;i++){
                arr[j][i] = sc.nextInt();
            }
        }
        solution(N, arr);

    }
    static void solution(int N, int[][] arr){
        int answer = 0, max=Integer.MIN_VALUE;
        for(int i=1;i<N+1;i++){
            int count=0;
            for(int j=1;j<N+1;j++){
                for(int k=1;k<6;k++){
                    if(arr[i][k] == arr[j][k]) {
                        count++;
                        break;
                    }
                }
            }
            if(count>max) {
                max = count;
                answer = i;
            }
        }
        System.out.println(answer);

    }
}
