package polymorphism;

public class SamsungTV5 implements TV{
	
	private SonySpeaker speaker;
	private int price;
	
	public SamsungTV5() {
		System.out.println("Spring SamsungTV5 객체 생성");
	}
	
	public SamsungTV5(SonySpeaker speaker) {
		System.out.println("Spring SamsungTV5 객체 생성");
		this.speaker = speaker;
	}
	public SamsungTV5(SonySpeaker speaker, int price) {
		System.out.println("Spring SamsungTV5 객체 생성");
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
