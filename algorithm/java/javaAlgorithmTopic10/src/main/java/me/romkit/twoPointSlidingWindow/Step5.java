package me.romkit.twoPointSlidingWindow;

import java.util.Scanner;

public class Step5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
//        int k = sc.nextInt();
        int[] arr = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = i+1;
        }

        solution(n,arr);
    }

    public static void solution(int n, int[] arr){
        int sum=0, cnt=0, lt=0;
        for(int rt = 0;rt<=n/2+1;rt++) {
            sum += arr[rt];
            if(sum == n ) cnt++;
            while(sum>=n) {
                sum -= arr[lt++];
                if(sum==n) cnt++;
            }
        }
        System.out.println(cnt);
    }
}
