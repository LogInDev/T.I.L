package treeEX;

import javax.swing.tree.TreeNode;
import java.util.Arrays;

public class Java25 {

    public static void main(String[] args) {
        // 노드 배열 정의 (1 이상 1000 이하)
        int[] nodes = {1, 2, 3, 4, 5, 6, 7}; // 예시 배열
        String[] returns = solution(nodes);
        System.out.println(Arrays.toString(returns));
    }

    public static String[] solution(int[] nodes) {

        TreeNode tree = createTreeNode(nodes, 0);

        StringBuilder result1 = new StringBuilder();
        StringBuilder result2 = new StringBuilder();
        StringBuilder result3 = new StringBuilder();

        pre_load(tree, result1);
        mid_load(tree, result2);
        post_load(tree, result3);


        String[] answer = new String[]{
                result1.toString().trim(), // 전위 순회 결과
                result2.toString().trim(), // 중위 순회 결과
                result3.toString().trim()  // 후위 순회 결과
        };
        return answer;
    }

    public static void pre_load(TreeNode root, StringBuilder result) {
        if (root == null) return;
        result.append(root.val).append(" ");
        pre_load(root.left, result);
        pre_load(root.right, result);
    }

    public static void mid_load(TreeNode root, StringBuilder result) {
        if (root == null) return;
        mid_load(root.left, result);
        result.append(root.val).append(" ");
        mid_load(root.right, result);
    }

    // 후위 순회
    public static void post_load(TreeNode node, StringBuilder result) {
        if (node == null) return;
        post_load(node.left, result);
        post_load(node.right, result);
        result.append(node.val).append(" ");
    }

    public static TreeNode createTreeNode(int[] nodes, int index) {
        if(index >= nodes.length){return null;}
        TreeNode tree = new TreeNode(nodes[index]);

        tree.left = createTreeNode(nodes, 2 * index + 1);
        tree.right = createTreeNode(nodes, 2 * index + 2);
        return tree;

    }

    static class TreeNode{
        int val;
        TreeNode left, right;

        public TreeNode(int val){
            this.val = val;
            this.left = this.right = null;
        }

        @Override
        public String toString() {
            return "TreeNode{" +
                    "val=" + val +
                    ", left=" + left +
                    ", right=" + right +
                    '}';
        }
    }
}
