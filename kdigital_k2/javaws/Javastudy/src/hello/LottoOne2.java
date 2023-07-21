package hello;

import java.util.Arrays;

public class LottoOne2 {

	public static void main(String[] args) {
		//LottoOne2
		//		int [] lottOne = new int[6];
		//
		//		while(true) {
		//			for(int i=0;i<lottOne.length;i++) {
		//				lottOne[i] = (int)(Math.random()*45)+1;
		//			}
		//			boolean insert = true;
		//			for(int i=0;i<6;i++) {
		//				for(int j=0; j<6;j++) {
		//					if(i != j) {
		//						if(lottOne[i] == lottOne[j]) {
		//							insert = false; 
		//						}
		//					}
		//				}
		//			}
		//
		//			if(insert) {
		//				break;
		//			}
		//		}
		//		System.out.println(Arrays.toString(lottOne));

		//LottoOne3
		int[] lottoOne = new int[6];
		int idx = 0;
		
		while(true) {
			boolean insert = true;
			int number = (int)(Math.random()*45) + 1;
			
			for(int i=0; i<=idx;i++) {
				if(lottoOne[i] == number) {
					insert = false;
				}
			}
			if(insert == true) {
				lottoOne[idx] = number;
				idx++;
			}
			if(idx == 6) break;
		}
		System.out.println(Arrays.toString(lottoOne));
	}

}
