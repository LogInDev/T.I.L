package polymorphism;

import org.springframework.stereotype.Component;

@Component("sony")
public class SonySpeaker implements Speaker{
	
	public SonySpeaker() {
		System.out.println("SonySpeaker 생성");
	}
	
	public void volumeUp() {
		System.out.println("Sony - Volume Up");
	}
	
	public void volumeDown() {
		System.out.println("Sony - Volume Down");
	}
}
