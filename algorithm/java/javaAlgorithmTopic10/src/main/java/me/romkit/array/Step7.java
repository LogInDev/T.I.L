package me.romkit.array;

import java.util.Scanner;

public class Step7 {
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
        int sum=0;
        int count=0;
        for(int i=1;i<N+1;i++) {
            if(arr[i] == 0){
                count = 0;
            }else if(arr[i]==1){
                count++;
            }
            sum+=count;
        }
        System.out.println(sum);
    }
}
