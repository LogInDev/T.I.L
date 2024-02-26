package me.romkit.array;

import java.util.Scanner;

public class Step10 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        int[][] arr = new int[N+2][N+2];
        for(int j=1;j<N+1;j++){
            String[] a = sc.nextLine().split(" ");
            for(int i=1;i<N+1;i++){
                arr[j][i] = Integer.parseInt(a[i-1]);
            }
        }
        solution(N, arr);

    }
    static void solution(int N, int[][] arr){
        int count=0;
        for(int i=1;i<N+1;i++) {
            for (int j = 1; j < N+1; j++) {
                int max=arr[i][j];
                if(arr[i-1][j] > max) max = arr[i-1][j];
                if(arr[i+1][j] > max) max = arr[i+1][j];
                if(arr[i][j-1] > max) max = arr[i][j-1];
                if(arr[i][j+1] > max) max = arr[i][j+1];
                if(max == arr[i][j]) count++;
            }
        }
        System.out.println(count);
    }
}
