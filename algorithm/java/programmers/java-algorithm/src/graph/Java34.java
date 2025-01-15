package graph;

import java.util.*;

public class Java34 {
    public static void main(String[] args) {
        int[][] graph = {{1, 2}, {1, 3}, {2, 4}, {2, 5}, {3, 6}, {5, 6}};
        int[] result = solution(graph, 1, 6);
        System.out.println("result = " + Arrays.toString(result));
    }

    static List<List<Integer>> list = new ArrayList<>();
    static Stack<Integer> stack = new Stack<>();
    public static void bfs_fun(int start, Stack<Integer> stack, List<List<Integer>> list, int[] visited, List<Integer> answer) {
        stack.push(start);
        while (!stack.isEmpty()) {
            int cur = stack.pop();
            visited[cur] = 1;
            answer.add(cur);
            List<Integer> cur_list = list.get(cur);
            for (Integer integer : cur_list) {
                int node = (int) integer;
                if (visited[node] == 0) {
                    bfs_fun(node, stack, list, visited, answer);
                }

            }
        }
    }

    public static int[] solution(int[][] graph, int start, int n) {
        Collections.nCopies(7,0).forEach(i -> list.add(new ArrayList<>()));

        // 노드 연결
        for (int[] node : graph) {
            list.get(node[0]).add(node[1]);
        }
        //vistied 배열만들기
        int[] visited = new int[n+1];

        List<Integer> answer = new ArrayList<>();
        bfs_fun(start, stack, list, visited, answer);
        System.out.println("answer = " + answer);
        return null;
    }
}
