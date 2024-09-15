package me.romkit.array;

import java.util.Scanner;

public class Step1 {

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        String[] a = sc.nextLine().split(" ");
        int[] arr = new int[N];
        for(int i=0;i<N;i++){
            arr[i] = Integer.parseInt(a[i]);
        }
        solution(N, arr);

    }
    static void solution(int N, int[] arr){
        for(int i=1;i<N;i++){
            if(arr[i]>arr[i-1]){
                System.out.print(arr[i] + " ");
            }
        }
    }
}
