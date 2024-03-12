package me.romkit.twoPointSlidingWindow;

import java.util.Scanner;

public class Step3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int k = sc.nextInt();
        int[] arr = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        solution(n, k, arr);
    }

    public static void solution(int n, int k, int[] arr){
        int lt=0, rt=k, max=0;
        int sum=0;
        for(int i=0;i<k;i++) {
            sum+=arr[i];
        }
        max = sum; // 매출이 음수일 경우도 있으니 sum을 0으로 초기화하면안됨.
        while(rt<n) {
            sum -= arr[lt++];
            sum += arr[rt++];
            if(sum>max) max = sum;
        }
        System.out.println(max);
    }
}
