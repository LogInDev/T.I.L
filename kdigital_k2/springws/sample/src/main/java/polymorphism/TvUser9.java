package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TvUser9 {

	public static void main(String[] args) {
//		AbstractApplicationContext factory1 = new GenericXmlApplicationContext("appContext.xml");
		AbstractApplicationContext factory = new GenericXmlApplicationContext("appContextAnno.xml");
//		LgTV tv = (LgTV)factory1.getBean("lgTV");
		TV tv1 = (TV)factory.getBean("tv");
		tv1.powerOn();
		tv1.volumeUp();
		tv1.volumeDown();
		tv1.powerOff();
		factory.close();
	}

}
