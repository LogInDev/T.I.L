package hello;

import java.util.Arrays;

public class arraytest {

	public static void main(String[] args) {
		//shuffle
		int[] number = new int[45];
		for(int i=0; i<number.length;i++) {
			number[i] = i+1;
		}
		//		System.out.println(Arrays.toString(number));
		//random 0 ~ 9 index


		int tmp=0;
		for(int a = 0;a<5;a++) {
			for(int i=0;i<100;i++) {
				int r = (int)(Math.random()*45);
				tmp=number[0];
				number[0] = number[r];
				number[r]=tmp;

			}
			int[] lottoOne = new int[6];
			for(int j=0;j<5;j++) {
				for(int k=0;k<lottoOne.length;k++) {
					lottoOne[k] = number[k];
				}
			}
			System.out.println(Arrays.toString(lottoOne));
		}

	}

}
