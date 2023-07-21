package polymorphism;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV2 implements TV{
//	@Autowired
//	@Qualifier("apple")
	@Resource(name="apple")
	private Speaker speaker;
	
	public LgTV2() {
		System.out.println("LgTV2 자동생성");
	}
	
	public void powerOn() {
		System.out.println("LG - Power On");
	}
	
	public void powerOff() {
		System.out.println("LG - Power Off");
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}
}
