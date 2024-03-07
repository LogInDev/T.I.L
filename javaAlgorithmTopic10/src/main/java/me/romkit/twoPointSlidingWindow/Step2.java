package me.romkit.twoPointSlidingWindow;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Step2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        int m = sc.nextInt();
        int[] brr = new int[m];
        for (int i = 0; i < m; i++) {
            brr[i] = sc.nextInt();
        }
        Arrays.sort(arr);
        Arrays.sort(brr);

        solution(n, m, arr, brr);
    }

    public static void solution(int n, int m, int[] arr, int[] brr){
        int p1=0, p2=0;
        ArrayList<Integer> answer = new ArrayList<Integer>();
        while(p1<n && p2<m) {
            if(arr[p1]>brr[p2]) p2++;
            else if(arr[p1]<brr[p2]) p1++;
            else if(arr[p1]==brr[p2]) {
                answer.add(arr[p1]);
                p1++;
                p2++;
            }
        }
        for(int i=0;i<answer.size();i++) {
            System.out.print(answer.get(i)+ " ");
        }
    }
}
