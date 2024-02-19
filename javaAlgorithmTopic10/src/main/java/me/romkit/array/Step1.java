package me.romkit.array;

import java.util.Scanner;

public class Step1 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        String[] a = sc.nextLine().split(" ");
        int[] arr = new int[N+1];
        for(int i=0;i<N;i++){
            arr[i+1] = Integer.parseInt(a[i]);
        }
        solution(N, arr);

    }
    static void solution(int N, int[] arr){
        for(int i=1;i<arr.length;i++){
            if(arr[i]>arr[i-1]){
                System.out.print(arr[i] + " ");
            }
        }
    }
}
