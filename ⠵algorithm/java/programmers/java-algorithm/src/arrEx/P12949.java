package arrEx;

public class P12949 {


    public int[][] solution(int[][] arr1, int[][] arr2) {
        //1. answer의 행렬 크기를 구함
        int[][] answer = new int[arr1.length][arr2[0].length];

        //2. arr1의 첫 행을 arr2의 첫 열과 각각 곱하여 더함 => answer[0][0]
        //3. arr1의 두번째 행을 arr2의 첫 열과 각각 곱하여 더함 => answer[1][0]
        //...
        for (int i = 0; i < arr1.length; i++) {
            for (int j = 0; j < arr2[0].length; j++) {
                for (int k = 0; k < arr1[0].length; k++) {
                    answer[i][j] += arr1[i][k] * arr2[k][j];
                }
            }
        }

        // 시간 복잡도는 O(N³)
        return answer;
    }
}
