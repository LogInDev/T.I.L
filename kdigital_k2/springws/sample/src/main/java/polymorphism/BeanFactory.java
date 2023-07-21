package polymorphism;

public class BeanFactory {
	public Object getBean(String beanName) {
		if(beanName.equals("ss")) {
			return new SamsungTV2();
		}else if(beanName.equals("lg")) {
			return new LgTV2();
		}
		return null;
	}
}
