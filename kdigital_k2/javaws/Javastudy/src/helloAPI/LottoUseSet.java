package helloAPI;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

public class LottoUseSet {
	//작은 숫자에서 큰숫자로
	//홀수의 갯수, 짝수의 갯수

	public static void main(String[] args) {
		Random n = new Random();
		int order =5;
		int c1=0;
		int c2=0;
		int []even =new int[10];
		int []odd =new int[10];

		ArrayList list = new ArrayList();
		ArrayList flist = new ArrayList();


		for(int i =0;i<order;i++) {
			Set lotto = new HashSet();
			while(true) {
				int b = n.nextInt(45)+1;//(0이상~45미만)+1->0~46미만
				lotto.add(b);
				if(lotto.size()==6) break;
			}
			list.add(lotto);
		}
		while(true) {
			int index=0;
			int[] num1 = new int[6];

			for(int k=0;k<list.size();k++) {

				String s1=list.get(k).toString();
				s1 = s1.replace("[","");
				s1 = s1.replace("]","");
				s1 = s1.replace(" ","");
				String[] sArr = s1.split(",");

				for(int i=0;i<sArr.length;i++) {
					num1[i]=Integer.parseInt(sArr[i]);
					if(num1[i]%2==0) c2++;
					else c1++;
				}

				for(int i=0;i<num1.length-1;i++) {
					boolean changed = false;
					for(int j=0;j<num1.length-1-i;j++) {
						if(num1[j]>num1[j+1]) {
							int tmp = num1[j];
							num1[j] = num1[j+1];
							num1[j+1]= tmp;
							changed = true;
						}
					}


					if(!changed) break;
				}
				//				System.out.println("홀수:" + odd+" 짝수: "+even);
				flist.add(Arrays.toString(num1));

				odd[index]=c1;
				even[index]=c2;

				c1=0;
				c2=0;
				index++;
			}

			if(flist.size()==5) {
				break;
			}
		}
		for(int i=0;i<flist.size();i++) {

			System.out.println(flist.get(i)+"홀수 : "+odd[i]+", 짝수"+even[i]);
		}


	}

}
