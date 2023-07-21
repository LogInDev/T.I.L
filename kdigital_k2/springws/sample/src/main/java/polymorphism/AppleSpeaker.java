package polymorphism;

import org.springframework.stereotype.Component;

@Component("apple")
public class AppleSpeaker implements Speaker{
	
	public AppleSpeaker() {
		System.out.println("AppleSpeaker 생성");
	}
	
	public void volumeUp() {
		System.out.println("Apple - Volume Up");
	}
	
	public void volumeDown() {
		System.out.println("Apple - Volume Down");
	}
}
