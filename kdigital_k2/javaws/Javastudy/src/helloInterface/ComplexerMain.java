package helloInterface;

public class ComplexerMain {

	public static void main(String[] args) {

		Fax fax = new Fax() {
			
			@Override
			public void send(String tel) {
				System.out.println("send()");
				
			}
			
			@Override
			public void receive(String tel) {
				System.out.println("receive()");
				
			}
		};
			
		fax.send("234l");
		fax.receive("5678");
		 
		ComplexerInterface ci = new ComplexerInterface() {
			
			@Override
			public void send(String tel) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void receive(String tel) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void scan() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void print() {
				// TODO Auto-generated method stub
				
			}
		};

	}

}
