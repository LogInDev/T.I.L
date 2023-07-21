package helloGeneric;

public class Generic<T> {
	T[]v;
	void set(T[] n) {
		v=n;
	}
	
	T[] get(){
		return v;
	}
	
	void print() {
		for(T o:v) {
			System.out.print(o+" ");
		}
		System.out.println();
	}
	

}
