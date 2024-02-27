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
        int answer = Integer.MIN_VALUE;
        int sum1, sum2;
        for(int i=0;i<N;i++){     // 행 번호
            sum1 = sum2 = 0;
            for(int j=0;j<N;j++){ // 열 번호
                sum1 +=arr[i][j]; // 가로행 합
                sum2 +=arr[j][i]; // 세로행 합
            }
            answer=Math.max(answer, sum1);
            answer=Math.max(answer, sum2);
        }

        sum1=sum2=0;
        for(int i=0;i<N;i++){
            sum1+=arr[i][i];
            sum2+=arr[N-1-i][i];
        }
        answer=Math.max(answer, sum1);
        answer=Math.max(answer, sum2);
        System.out.println(answer);

//------------------------내 풀이---------
//        int max=0;
//        // 가로행
//        for(int i=0;i<N;i++) {
//            int sum=0;
//            for(int j=0;j<N;j++){
//                sum+= arr[i][j];
//            }
//            if(sum>max) max=sum;
//            // 세로행
//            sum=0;
//            for(int j=0;j<N;j++){
//                sum+= arr[j][i];
//            }
//            if(sum>max) max=sum;
//        }
//        // 대각행
//        int sum=0;
//        for(int j=0;j<N;j++){
//            sum+= arr[j][j];
//        }
//        if(sum>max) max=sum;
//        sum=0;
//        for(int j=0;j<N;j++){
//            sum+= arr[j][N-1-j];
//        }
//        if(sum>max) max=sum;
//        System.out.println(max);
    }
}
