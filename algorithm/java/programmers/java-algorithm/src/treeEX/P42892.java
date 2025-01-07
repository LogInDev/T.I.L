package treeEX;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.IntStream;

public class P42892 {
    public static void main(String[] args) {
//        nodeinfo	result
//[[5,3],[11,5],[13,3],[3,5],[6,1],[1,3],[8,6],[7,2],[2,2]]	[[7,4,6,9,1,8,5,2,3],[9,6,5,8,1,4,3,2,7]]
        int[][] nodeinfo = {{5, 3}, {11, 5}, {13, 3}, {3, 5}, {6, 1}, {1, 3}, {8, 6}, {7, 2}, {2, 2}};
        int[][] answer = solution(nodeinfo);
        System.out.println("answer = " + Arrays.toString(answer[0]));
        System.out.println("answer = " + Arrays.toString(answer[1]));
    }
    public static int[][] solution(int[][] nodeinfo) {
        int[][] answer = new int[nodeinfo[0].length][nodeinfo.length];

        Node node = mkTree(nodeinfo);
        ArrayList<Integer> preOrderList = new ArrayList<>();
        preOrder(node, preOrderList);
        ArrayList<Integer> postOrderList = new ArrayList<>();
        postOrder(node, postOrderList);
        System.out.println("preOrderList = " + preOrderList);
        answer[0] = preOrderList.stream().mapToInt(Integer::intValue).toArray();
        answer[1] = postOrderList.stream().mapToInt(Integer::intValue).toArray();
        return answer;
    }

    private static void preOrder(Node curr, ArrayList<Integer> answer) {
        if (curr == null) {
            return;
        }
        answer.add(curr.num);
        preOrder(curr.left, answer);
        preOrder(curr.right, answer);
    }

    private static void postOrder(Node curr, ArrayList<Integer> answer) {
        if (curr == null) {
            return;
        }
        postOrder(curr.left, answer);
        postOrder(curr.right, answer);
        answer.add(curr.num);
    }

    private static Node mkTree(int[][] nodeinfo) {
        Node[] nodes = new Node[nodeinfo.length];

        for (int i = 0; i < nodeinfo.length; i++) {
            nodes[i] = new Node(i+1, nodeinfo[i][0], nodeinfo[i][1]);
        }

//        System.out.println("nodes = " + Arrays.toString(nodes));

        Arrays.sort(nodes, (o1, o2) -> {
            if (o1.y == o2.y) {
                return Integer.compare(o1.x, o2.x);
            }
            return Integer.compare(o2.y, o1.y);
        });
//        System.out.println("arr nodes = " + Arrays.toString(nodes));

        Node root = nodes[0];

        for (int i = 1; i < nodes.length; i++) {
            Node parent = root;
            while (true){
                if(nodes[i].x<parent.x){
                    if(parent.left == null){
                        parent.left = nodes[i];
                        break;
                    }else {
                        parent=parent.left;
                    }
                }else{
                    if(parent.right == null){
                        parent.right = nodes[i];
                        break;
                    }else{
                        parent=parent.right;
                    }
                }
            }
        }

        return nodes[0];
    }

    static class Node{
        int num,x, y;
        Node left, right;

        public Node(int num, int x, int y) {
            this.num = num;
            this.x = x;
            this.y = y;
        }

        @Override
        public String toString() {
            return "Node{" +
                    "num=" + num +
                    ", x=" + x +
                    ", y=" + y +
                    ", left=" + left +
                    ", right=" + right +
                    '}';
        }
    }
}
