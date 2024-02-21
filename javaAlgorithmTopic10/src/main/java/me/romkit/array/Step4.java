package me.romkit.array;

import java.util.Scanner;

public class Step4 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int[] arr = new int[N+2];
        solution(N, arr);

    }
    static void solution(int N, int[] arr){
        /*arr[1] = 1;
        for(int i=0;i<N-1;i++){
            arr[i+2] = arr[i] + arr[i+1];
        }
        for(int i=1;i<N+1;i++) {

            System.out.print(arr[i]+" ");
        }*/
        int a=1, b=1, c;
        System.out.println(a+" "+b+" ");
        for(int i=2;i<N;i++){
            c=a+b;
            System.out.println(c + " ");
            a = b;
            b = c;
        }
    }
}
