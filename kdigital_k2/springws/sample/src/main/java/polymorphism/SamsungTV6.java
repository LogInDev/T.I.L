package polymorphism;

public class SamsungTV6 implements TV{
	
	private Speaker speaker;
	private int price;
	
	public SamsungTV6() {
		System.out.println("Spring SamsungTV6 객체 생성");
	}
	
	public SamsungTV6(Speaker speaker) {
		System.out.println("Spring SamsungTV6 객체 생성");
		this.speaker = speaker;
	}
	public SamsungTV6(Speaker speaker, int price) {
		System.out.println("Spring SamsungTV6 객체 생성");
		this.speaker = speaker;
		this.price = price;
		System.out.println("price="+this.price);
	}
	

	public void powerOn() {
		System.out.println("SS - Power On");
	}
	
	public void powerOff() {
		System.out.println("SS - Power Off");
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}
}
