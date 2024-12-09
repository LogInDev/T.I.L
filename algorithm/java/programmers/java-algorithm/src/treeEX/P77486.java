package treeEX;

import java.util.*;

public class P77486 {
    public static void main(String[] args) {
        String[] enroll = {"john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"};
        String[] referral = {"-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"};
        String[] seller = {"young", "john", "tod", "emily", "mary"};
        int[] amount = {12, 4, 2, 5, 10};
        int[] answer = solution(enroll, referral, seller, amount);
        System.out.println("answer = " + Arrays.toString(answer));
    }
    public static int[] solution(String[] enroll, String[] referral, String[] seller, int[] amount) {
        int[] answer = new int[enroll.length];

        Map<String, TreeNode> map = new HashMap<>();
        Map<String, Integer> result_map = new HashMap<>();
        Map<String, Integer> seller_map = new HashMap<>();


        createNode(enroll, referral, map);
        for (int i = 0; i < amount.length; i++) {
            int total = amount[i]*100;
            apply_parent(total, result_map, map.get(seller[i]));
        }
        for (int i = 0; i < answer.length; i++) {
            answer[i] = result_map.getOrDefault(enroll[i], 0);

        }

        return answer;
    }

    public static void apply_parent(int total, Map<String, Integer> result_map, TreeNode tree) {
        if (tree == null) return;
        int profit = total - total / 10;
        if (total / 10 < 1) {
            result_map.put(tree.name, result_map.getOrDefault(tree.name, 0) + total);
        }else {
            result_map.put(tree.name, result_map.getOrDefault(tree.name, 0) + profit);

            int referralProfit = total - profit;
            if (referralProfit >= 1 && !tree.parents.isEmpty()) {
                for (TreeNode parent : tree.parents) {
                    apply_parent(referralProfit, result_map, parent);
                }
            }
        }

    }

    public static void createNode(String[] enroll, String[] referral, Map<String, TreeNode> map) {
        for (String s : enroll) {
            if (!s.equals("-")) {
                map.put(s, new TreeNode(s));
            }
        }
        for (int i = 0; i < enroll.length; i++) {
            if (!referral[i].equals("-")) {
                TreeNode tree = map.get(enroll[i]);
                tree.parents.add(map.get(referral[i]));
            }
        }
    }

    static class TreeNode {
        String name;
        List<TreeNode> parents;
        public TreeNode(String name) {
            this.name = name;
            this.parents = new ArrayList<>();
        }

        @Override
        public String toString() {
            return "TreeNode{" +
                    "name='" + name + '\'' +
                    ", parents=" + parents +
                    '}';
        }
    }
}
