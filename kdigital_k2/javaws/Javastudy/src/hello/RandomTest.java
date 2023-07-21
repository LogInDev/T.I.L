package hello;

public class RandomTest {

	public static void main(String[] args) {
		//0.26897067232305716
		//0.5161925949386753
		//0.8596487600350873
		double d = Math.random();
		int i = (int)(d*3)+1;
		String sCom ="";
		if(i==1) {
			sCom = "가위";
		} else if(i==2) {
			sCom = "바위";
		} else  {
			sCom = "보";
		}
		System.out.println(sCom);
	}

}
