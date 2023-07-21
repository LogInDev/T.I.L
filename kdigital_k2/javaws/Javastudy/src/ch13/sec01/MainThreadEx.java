package ch13.sec01;

public class MainThreadEx {

	public static void main(String[] args) {
		System.out.println("시작");
		
		Thread currThread = Thread.currentThread();
		
		
		System.out.println("종료");
	}

}
