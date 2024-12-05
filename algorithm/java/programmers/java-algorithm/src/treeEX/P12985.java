package treeEX;

import com.sun.source.tree.Tree;

import java.util.Arrays;
import java.util.stream.IntStream;

public class P12985 {
    public static void main(String[] args) {
        int answer = solution(8, 4, 7);
        System.out.println("answer = " + answer);
    }
    public static int solution(int n, int a, int b) {
        int answer = 0;

        if (a > b) {
            int temp = a;
            a = b;
            b = temp;
        }

        while (a != b) {
            answer++;
            a = (a + 1) / 2;
            b = (b + 1) / 2;
        }

        return answer;
    }

}
