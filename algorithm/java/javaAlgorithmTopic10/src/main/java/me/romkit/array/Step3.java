package me.romkit.array;

import java.util.Scanner;

public class Step3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        sc.nextLine();
        String[] a = sc.nextLine().split(" ");
        String[] b = sc.nextLine().split(" ");
        int[] arrA = new int[N];
        int[] arrB = new int[N];
        for(int i=0;i<N;i++){
            arrA[i] = Integer.parseInt(a[i]);
            arrB[i] = Integer.parseInt(b[i]);
        }
        solution(N, arrA, arrB);

    }
    static void solution(int N, int[] arrA, int[] arrB){
        for(int i=0;i<N;i++){
            if(((arrA[i] ==3) && (arrB[i] == 1)) ||
                    ((arrA[i] ==1) &&(arrB[i]==3))){
                if(arrA[i] > arrB[i]){
                    System.out.println("B");
                }else {
                    System.out.println("A");
                }
            }else if(arrA[i]>arrB[i]){
                System.out.println("A");
            }else if(arrA[i] == arrB[i]){
                System.out.println("D");
            }else {
                System.out.println("B");
            }
        }
    }
}
