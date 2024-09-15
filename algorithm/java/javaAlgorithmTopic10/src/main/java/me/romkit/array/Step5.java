package me.romkit.array;

import java.util.Scanner;

public class Step5 {
    // 에라토스테네스 체 : 소수를 구하는 가장 빠른 방법
    // arr[i]가 0이면 i의 배수들을 다 체크해야함. - 2의 배수 체크
    // 체크한거 아닌 애들은 그 수의 배수인지 체크
    // 체로 걸러낸다해서 에라토스테네스 체
    // 소수 : 1과 자기자신으로 나누어 떨어지는 수(0과 1은 제외)
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        solution(N);

    }
    static void solution(int N){
        int[] arr = new int[N+1];
        int answer = 0;
        for(int i=2;i<N+1;i++) {
            if(arr[i]==0) {
                answer++;
                for(int j=i;j<N+1;j+=i) {
                    arr[j] = 1;
                }
            }
        }
        System.out.println(answer);
    }
}
