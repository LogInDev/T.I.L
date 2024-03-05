package me.romkit.twoPointSlidingWindow;

import java.util.Arrays;
import java.util.Scanner;

public class Step1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int[] arr = new int[n];
        for(int i = 0;i <n;i++){
            arr[i] = sc.nextInt();
        }

        int m = sc.nextInt();
        int[] brr = new int[m+n];
        for(int i = 0;i <m;i++){
            brr[i] = sc.nextInt();
        }
        for(int i=m;i<n+m;i++) {
            brr[i] = arr[i-m];
        }
        solution(brr);

    }

    public static void solution(int[] brr) {
        Arrays.sort(brr);
        for(int i=0;i<brr.length;i++) {
            System.out.print(brr[i] + " ");
        }
    }
}
