package polymorphism;

import org.springframework.stereotype.Component;


public class LgTV {
	
	public LgTV() {
		System.out.println("Spring Field LgTV 자동 생성");
	}
	
	public void turnOn() {
		System.out.println("LG - Turn On");
	}
	
	public void turnOff() {
		System.out.println("LG - Turn Off");
	}
	
	public void soundUp() {
		System.out.println("LG - Sound Up");
	}
	
	public void soundDown() {
		System.out.println("LG - Sound Down");
	}
}
