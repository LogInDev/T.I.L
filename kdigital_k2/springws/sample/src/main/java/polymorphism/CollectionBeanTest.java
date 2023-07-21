package polymorphism;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanTest {

	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("appContext.xml");
		CollectionBean bean = (CollectionBean)factory.getBean("collectionBean");
		List<String> addressList =  bean.getAddressList();
		Set<String> addressSet =  bean.getAddressSet();
		Map<String, String> addressMap =  bean.getAddressMap();
		Properties addressPro =  bean.getAddressPro();

		for(String a : addressList) {
			System.out.println(a);
		}
		for(String a : addressSet) {
			System.out.println(a);
		}
		System.out.println(addressMap.get("고구려"));
		Set<Entry<String, String>> set = addressMap.entrySet();
		Iterator<Entry<String, String>> it = set.iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> e = it.next();
			System.out.println("나라: "+e.getKey()+"/"+"수도: "+e.getValue());
		}
		
		
		System.out.println(addressPro.getProperty("고구려"));
		Enumeration<?> e = addressPro.propertyNames();
		while(e.hasMoreElements()) {
			String country = (String)e.nextElement();
			System.out.println("나라: "+country+"/"+"수도: "+addressPro.getProperty(country));
		}
		
		factory.close();
	}

}

