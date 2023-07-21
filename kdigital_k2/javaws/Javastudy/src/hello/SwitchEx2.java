package hello;

public class SwitchEx2 {

	public static void main(String[] args) {

		int number = 3;
		
		switch(number) {
		case 1:
			System.out.println("1번");
			break;
		case 2:
			System.out.println("2번");
			break;
		case 3:
			System.out.println("3번");
			break;
		case 4:
			System.out.println("4번");
			break;
		case 5:
			System.out.println("5번");
			break;
		default:
			System.out.println("6번");
			break;
		}
		
		if(number==1) {
			System.out.println("1번");
		} else if(number ==2) {
			System.out.println("2번");
		} else if(number ==3) {
			System.out.println("3번");
		} else if(number ==4) {
			System.out.println("4번");
		} else if(number ==5) {
			System.out.println("5번");
		} else{
			System.out.println("6번");
		}

	}

}
