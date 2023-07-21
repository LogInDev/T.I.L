package JavaPractice;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class ComparableExample {
	public static void main(String [] args) {
//		TreeSet<Person> treeSet = new TreeSet<Person>();
//		
//		treeSet.add(new Person("홍길동", 45));
//		treeSet.add(new Person("김자바", 15));
//		treeSet.add(new Person("박지원", 65));
//		treeSet.add(new Person("홍길순", 22));
//		
//		for(Person p:treeSet) {
//			System.out.println(p.name+"/"+p.age);
//		}
		TreeMap<Person, String> treeMap = new TreeMap<Person, String>();
		treeMap.put(new Person("홍길동", 45), "목수");
		treeMap.put(new Person("김자바", 15), "도적");
		treeMap.put(new Person("박지원", 65), "학생");
		treeMap.put(new Person("홍길순", 22), "목사");
		System.out.println(treeMap.size());
		
		Set<Person> keySet = treeMap.keySet();
		Iterator<Person> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {
			Person key= keyIterator.next();
			String value = treeMap.get(key);
			System.out.println(key.toString()+" : "+value);
		}
		
		Set<Entry<Person, String>> entrySet = treeMap.entrySet();
		Iterator<Entry<Person, String>> entryIterator = entrySet.iterator();
		while (entryIterator.hasNext()) {
			Entry<Person, String> entry = entryIterator.next();
			System.out.println(entry.getKey()+":"+entry.getValue());
			
		}
		Person p = new Person("홍길순",22);
		
		treeMap.remove(p);
				System.out.println(treeMap.toString());
				System.out.println(treeMap.size());
		
	}
}
