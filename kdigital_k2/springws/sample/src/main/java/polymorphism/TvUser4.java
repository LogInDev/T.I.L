package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TvUser4 {

	public static void main(String[] args) {
		//xml을 읽어서 Spring 만드는 것 - 경로가 없어서 읽어줌
		AbstractApplicationContext factory = new GenericXmlApplicationContext("appContext.xml");
		//appContext.xml설정파일에 id값이 들어감 - Spring이 객체 생성함
		TV tv1 = (TV)factory.getBean("tv");
		TV tv2 = (TV)factory.getBean("tv");
		TV tv3 = (TV)factory.getBean("tv");
		//tv1,2,3의 메모리 생성 주소가 다 같음 - default는 Singleton으로 만듦.
		System.out.println(tv1);
		System.out.println(tv2);
		System.out.println(tv3);
//		tv.powerOn();
//		tv.volumeUp();
//		tv.volumeDown();
//		tv.powerOff();
		factory.close();
	}

}
