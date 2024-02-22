package me.romkit.array;

import java.util.Scanner;

public class Step6 {
    // 숫자 뒤집기
    // t = tmp % 10
    // res = res * 10 + t
    // tmp = tmp / 10
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        String[] a = sc.nextLine().split(" ");
        int[] nums = new int[N];
        for(int i=0;i<N;i++){
            nums[i] = Integer.parseInt(a[i]);
        }
        solution(N, nums);

    }
    static void solution(int N, int[] nums){
        int[] reverseN = new int[N];

        for(int i=0;i<N;i++) {

        }
    }
}
