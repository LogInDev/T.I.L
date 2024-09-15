package me.romkit.array;

import java.util.Scanner;

public class Step8 {
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
        int sum=0;
        for(int i=0;i<N;i++) {
            int count=1;
            for(int j=0;j<N;j++){
                if(arr[j] > arr[i]) count++;
            }
            System.out.print(count+ " ");
        }
    }
}
