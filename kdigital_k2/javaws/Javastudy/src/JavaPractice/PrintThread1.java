package JavaPractice;

public class PrintThread1 extends Thread{
	@Override
	public void run() {
	
			while(true) {
				System.out.println("실행중...");
//				Thread.sleep(1);
				if(isInterrupted()) {
					break;
				}
			}
		
		System.out.println("리소스 정리");
		System.out.println("실행 종료");
	}
}
