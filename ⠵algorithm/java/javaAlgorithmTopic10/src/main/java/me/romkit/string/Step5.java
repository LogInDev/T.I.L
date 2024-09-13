package me.romkit.string;
import java.util.Scanner;
public class Step5 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String words = sc.nextLine();
        reverseString(words);

    }
    static void reverseString(String words){
        char[] arr = words.toCharArray();
        int lt=0,rt = arr.length-1;
        while(lt < rt) {
            if((65 <= arr[lt] && arr[lt] <= 90) || (97<=arr[lt] && arr[lt]<=122)) {
                if((65 <= arr[rt] && arr[rt] <= 90) || (97<=arr[rt] && arr[rt]<=122)) {
                    char tmp=' ';
                    tmp = arr[lt];
                    arr[lt] = arr[rt];
                    arr[rt] = tmp;
                    lt++;
                    rt--;
                }else {
                    rt--;
                }
            }else {
                lt++;
            }
        }
        System.out.println(arr);
    }

}
