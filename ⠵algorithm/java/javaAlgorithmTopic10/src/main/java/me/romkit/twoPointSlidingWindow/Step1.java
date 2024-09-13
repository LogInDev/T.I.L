package me.romkit.twoPointSlidingWindow;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
        int[] brr = new int[m];
        for(int i = 0;i <m;i++){
            brr[i] = sc.nextInt();
        }
        solution(n,m,arr, brr);

    }

    public static void solution(int n, int m,int[] arr, int[] brr) {
        ArrayList<Integer> answer = new ArrayList<Integer>();

        int p1 = 0, p2 = 0;
        while(p1 < n && p2 < m) {
            if(arr[p1]>brr[p2]) answer.add(brr[p2++]);
            else answer.add(arr[p1++]);
        }
        while(p1<n) answer.add(arr[p1++]);
        while(p2<m) answer.add(brr[p2++]);
//        if(p1 == n) {
//            for(int i=p2;i<m;i++) {
//                answer.add(brr[i]);
//            }
//        }else {
//            for(int i=p1;i<n;i++) {
//                answer.add(arr[i]);
//            }
//        }
        for(int i=0;i<answer.size();i++) {

            System.out.print(answer.get(i)+" ");
        }
    }
   /* public static void main(String[] args) {
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
    }*/
}
