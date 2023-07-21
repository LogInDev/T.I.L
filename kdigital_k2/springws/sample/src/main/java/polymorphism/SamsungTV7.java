package polymorphism;

public class SamsungTV7 implements TV{
	
	private Speaker speaker;
	private int price;
	
	public SamsungTV7() {
		System.out.println("Spring SamsungTV7 객체 생성");
	}
	

	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}

	public void setPrice(int price) {
		this.price = price;
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
