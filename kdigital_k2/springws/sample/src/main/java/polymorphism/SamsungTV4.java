package polymorphism;

public class SamsungTV4 implements TV{
	//null대신 new SonySpeaker();있지만 일반적으로는 멤버변수선언시 바로 생성하지 않음
	private SonySpeaker speaker;

	public SamsungTV4() {
		System.out.println("Spring SamsungTV4 객체 생성");
	}
	
	public SamsungTV4(SonySpeaker speaker) {
		System.out.println("Spring SamsungTV4 객체 생성");
		this.speaker = speaker;
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
