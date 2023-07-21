package ch13.sec01;



public class GenericExample {

	public static void main(String[] args) {
		Pair<String, Integer> pair = new Pair<>("홍길동", 35);
		Integer age = Util.getValue(pair, "홍길동");
		System.out.println(age);
		
		ChildPair<String, Integer> childpair = new ChildPair<>("홍삼원",20);
		Integer childAge = Util.getValue(childpair, "홍삼순");
		System.out.println(childAge);
	}
	
}

class Util{
	
	static <K,V> V getValue(Pair<K,V> p, K k) {
		if(k==p.getKey()) return p.getValue();
		else return null;
		
	}
}

class Pair<K, V>{
	private K key;
	private V value;
	
	public Pair(K key, V value) {
		this.key = key;
		this.value = value;
	}
	
	public K getKey() {return key;}
	public V getValue() {return value;}
}

class ChildPair<K,V>extends Pair<K,V>{
	public ChildPair(K k, V v) {
		super(k,v);
	}
}

class OtherPair<K, V>{
	private K key;
	private V value;
	
	public OtherPair(K key, V value) {
		this.key = key;
		this.value = value;
	}
	
	public K getKey() {return key;}
	public V getValue() {return value;}
}