package JavaPractice;

import java.awt.Toolkit;

class BeepPrintExample {
	
	public static void main(String[] args) {
		//threa실행
		Thread thread = new Thread(new Runnable() {

			@Override
			public void run() {
				//작업 1
				Toolkit toolkit = Toolkit.getDefaultToolkit();
				for(int i=0;i<5;i++) {
					toolkit.beep();
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				
			}
			
		});
		thread.start();
		
		//작업 2
		/*for(int i=0;i<5;i++) {
			System.out.println("띵");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}*/
		Thread thread2 = new Thread(new PrintThread());
		thread2.start();
		
	}
}