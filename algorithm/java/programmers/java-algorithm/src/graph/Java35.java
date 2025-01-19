package graph;

import java.util.*;

public class Java35 {
    public static void main(String[] args) {
        int[][] graph = {{1, 2}, {1, 3}, {2, 4}, {2, 5}, {3, 6}, {3, 7}, {4, 8}, {5, 8}, {6, 9}, {7, 9}};
        int[] result = solution(graph, 1, 9);
        System.out.println("result = " + Arrays.toString(result));
    }
    static List<List<Integer>> lists = new ArrayList<>();

    static void dfs_fun(List<List<Integer>> lists, int start, int[] visited, Queue<Integer> queue, List<Integer> answer) {
        queue.add(start);

        while (!queue.isEmpty()) {
            int num = queue.poll();
            if (visited[num] == 0) {
                visited[num] = 1;
                answer.add(num);
                List<Integer> list = lists.get(num);
                queue.addAll(list);
            }
        }
    }

    public static int[] solution(int[][] graph, int start, int n) {
        for (int i = 0; i <= n; i++) {
            lists.add(new ArrayList<>());
        }

        for (int[] node : graph) {
            lists.get(node[0]).add(node[1]);
        }

        System.out.println("lists = " + lists);

        int[] visited = new int[n + 1];
        List<Integer> answer_list = new ArrayList<>();
        Queue<Integer> queue = new LinkedList<>();

        dfs_fun(lists, start, visited, queue, answer_list);

        System.out.println("answer_list = " + answer_list);

        return answer_list.stream().mapToInt(Integer::intValue).toArray();
    }
}
