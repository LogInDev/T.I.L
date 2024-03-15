package me.romkit.twoPointSlidingWindow;

import java.util.Scanner;

public class Step4 {
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
        int sum=0, cnt=0, lt=0;
        for(int rt = 0;rt<n;rt++) {
            sum += arr[rt];
            if(sum == k ) cnt++;
            while(sum>=k) {
                sum -= arr[lt++];
                if(sum==k) cnt++;
            }
        }
        System.out.println(cnt);
    }
}
