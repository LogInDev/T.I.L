package polymorphism;

public class SamsungTV3 implements TV{
	private SonySpeaker speaker = null;
	
	public SamsungTV3() {
		
		System.out.println("Spring SamsungTV3 객체 생성");
	}
	
	public void powerOn() {
		System.out.println("SS - Power On");
	}
	
	public void powerOff() {
		System.out.println("SS - Power Off");
	}
	
	public void volumeUp() {
		speaker = new SonySpeaker();
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker = new SonySpeaker();
		speaker.volumeDown();
	}
}
