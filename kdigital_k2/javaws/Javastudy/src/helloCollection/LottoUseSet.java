package helloCollection;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class LottoUseSet {

	public static void main(String[] args) {
		Random n = new Random();
		int order =5;
		List<Set> lottoList = new ArrayList<Set>();
		
		while(true) {
			Set lotto = new HashSet();
			while(true) {
				Integer b = n.nextInt(45)+1;//(0이상~45미만)+1->0~46미만
				lotto.add(b);
				if(lotto.size()==6) break;
			}
			lottoList.add(lotto);
			if(lottoList.size()==order) break;
		}
		
		//1-1.작은 숫자~큰숫자(Set -> List)
//		for(Set lotto: lottoList) {
//			List<Integer> listLotto = new ArrayList<Integer>(lotto);
//		//List객체.sort(옵션 - 오름차순.naturalOrder()), 내름차순.reverseOrder())
//			listLotto.sort(Comparator.naturalOrder()); 
//			
//		}
		
		//1.2 작은 숫자~ 큰 숫자(HashSet->TreeSet)
		System.out.println(lottoList);
		for(Set lotto:lottoList) {
			TreeSet<Integer> tLotto = new TreeSet<>();
			tLotto.addAll(lotto);
			System.out.println(tLotto);
			
		}

		//
		for(Set<Integer>lotto : lottoList) {
			int odd =0;
			int even =0;
			for(Integer i:lotto) {
				if(i%2 ==1)odd++;
				else even++;
			}
//			System.out.printf("%s : (%s홀, %s짝)\n",lotto,odd,even);
		}
	}

}
