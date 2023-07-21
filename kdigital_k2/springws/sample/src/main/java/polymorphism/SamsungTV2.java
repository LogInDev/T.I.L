package polymorphism;

public class SamsungTV2 implements TV{
	
	public void initMethod() {
		System.out.println("initMethod() 호출");
	}
	
	public void destoryMethod() {
		System.out.println("destoryMethod() 호출");
	}
	
	public SamsungTV2() {
		System.out.println("Spring SamsungTV2 객체 생성");
	}
	
	public void powerOn() {
		System.out.println("SS - Power On");
	}
	
	public void powerOff() {
		System.out.println("SS - Power Off");
	}
	
	public void volumeUp() {
		System.out.println("SS - Volume Up");
	}
	
	public void volumeDown() {
		System.out.println("SS - Volume Down");
	}
}
