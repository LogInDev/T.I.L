package me.romkit.array;

import java.util.Scanner;

public class Step2 {

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
        int max=0;
        int count=0;
        for(int i=0;i<arr.length;i++){
            if(arr[i]>max){
                max=arr[i];
                count++;
            }
        }
        System.out.println(count);
    }
}
