package treeEX;

import java.util.*;

public class P92343 {
    private static ArrayList<Integer>[] tree; // 트리 정보를 저장할 인접 리스트
    public static void main(String[] args) {
//        info	edges	result
//        [0,0,1,1,1,0,1,0,1,0,1,1]	[[0,1],[1,2],[1,4],[0,8],[8,7],[9,10],[9,11],[4,3],[6,5],[4,6],[8,9]]	5
//        [0,1,0,1,1,0,1,0,0,1,0]	[[0,1],[0,2],[1,3],[1,4],[2,5],[2,6],[3,7],[4,8],[6,9],[9,10]]	5
        int[] info = {0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1};
        int[][] edges = {{0, 1}, {1, 2}, {1, 4}, {0, 8}, {8, 7}, {9, 10}, {9, 11}, {4, 3}, {6, 5}, {4, 6}, {8, 9}};
        int answer = solution(info, edges);
        System.out.println(answer);

    }
    public static int solution(int[] info, int[][] edges) {
        int answer = 0; // 최대 양의 수
        //각 노드에 인접한 노드 연결한 트리 생성
        buildTree(info, edges);
//        System.out.println("Arrays.toString(tree) = " + Arrays.toString(tree));

        // BFS를 진행하기 위한 큐 생성
        ArrayDeque<Info> queue = new ArrayDeque<>();
        queue.add(new Info(0, 1, 0, new HashSet<>()));

        //모든 노드를 방문
        while (!queue.isEmpty()) {
            Info now = queue.poll(); // 접근할 노드 정보
            // 최대의 양의 수를 구함
            answer = Math.max(now.sheep, answer);
            now.visited.addAll(tree[now.node]);

            for (int next : now.visited) {
                HashSet<Integer> set = new HashSet<>(now.visited);
                set.remove(next);

                if (info[next] == 1) {
                    if (now.sheep != now.wolf + 1) {
                        queue.add(new Info(next, now.sheep, now.wolf + 1, set));
                    }
                } else {
                    queue.add(new Info(next, now.sheep + 1, now.wolf, set));
                }
            }
        }
        
        return answer;
    }
    
    static void buildTree(int[] info, int[][] edges) {
        tree = new ArrayList[info.length];
        for (int i = 0; i < info.length; i++) {
            tree[i] = new ArrayList<>();            
        }
        for (int[] edge : edges) {
            tree[edge[0]].add(edge[1]);
        }
    }

    static class Info {
        int node, sheep, wolf;
        HashSet<Integer> visited;

        public Info(int node, int sheep, int wolf, HashSet<Integer> visited) {
            this.node = node;
            this.sheep = sheep;
            this.wolf = wolf;
            this.visited = visited;
        }

        @Override
        public String toString() {
            return "Info{" +
                    "node=" + node +
                    ", sheep=" + sheep +
                    ", wolf=" + wolf +
                    ", set=" + visited +
                    '}';
        }
    }

}
