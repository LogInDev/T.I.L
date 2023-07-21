package JavaPractice;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class ComparableExample2 {

	public static void main(String[] args) {
//		TreeSet<Fruit> treeSet = new TreeSet<Fruit>(new FruitComparator());
//		
//		treeSet.add(new Fruit("포도",20000));
//		treeSet.add(new Fruit("사과",15000));
//		treeSet.add(new Fruit("한라봉",45000));
//		treeSet.add(new Fruit("샤인 머스켓",80000));
//		
//		for(Fruit f:treeSet) {
//			System.out.println(f.name + ":"+f.price);
//		}
		
		TreeMap<Fruit, Integer> treeMap = new TreeMap<Fruit, Integer>(new FruitComparator()	);
		
		treeMap.put(new Fruit("포도",20000), 5);
		treeMap.put(new Fruit("사과",15000), 2);
		treeMap.put(new Fruit("한라봉",45000), 11);
		treeMap.put(new Fruit("샤인 머스켓",80000), 3);
		
		Set<Fruit> keySet = treeMap.keySet();
		Iterator<Fruit> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {
			Fruit fruit = keyIterator.next();
			System.out.println(fruit.name+fruit.price+treeMap.get(fruit));
			
		}
		
		Set<Entry<Fruit, Integer>> entrySet = treeMap.entrySet();
		Iterator<Entry<Fruit, Integer>> entryIterator = entrySet.iterator();
		while (entryIterator.hasNext()) {
			 Entry<Fruit, Integer> entry =  entryIterator.next();
			System.out.println(entry.getKey()+":"+entry.getValue());
		}
		Fruit f = new Fruit("포도",20000);
		treeMap.remove(f);
		System.out.println(treeMap.toString());
	System.out.println(treeMap.size());
	}

}
