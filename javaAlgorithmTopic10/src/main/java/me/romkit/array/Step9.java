package me.romkit.array;

import java.util.Scanner;

public class Step9 {
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
        int max=0;
        // 가로행
        for(int i=0;i<N;i++) {
            int sum=0;
            for(int j=0;j<N;j++){
                sum+= arr[i][j];
            }
            if(sum>max) max=sum;
            // 세로행
            sum=0;
            for(int j=0;j<N;j++){
                sum+= arr[j][i];
            }
            if(sum>max) max=sum;
        }
        // 대각행
        int sum=0;
        for(int j=0;j<N;j++){
            sum+= arr[j][j];
        }
        if(sum>max) max=sum;
        sum=0;
        for(int j=0;j<N;j++){
            sum+= arr[j][N-1-j];
        }
        if(sum>max) max=sum;
        System.out.println(max);
    }
}
