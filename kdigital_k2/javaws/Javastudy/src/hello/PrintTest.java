package hello;

import java.util.Arrays;

public class PrintTest {

	static void paint(String color) {
		System.out.println(color +" 칠합니다.");
	}
	
	public static void main(String[] args) {
		String red = "red";
		//class로 적용할 경우
		Color cRed = new Color();
		cRed.color = "red";
		
		String yellow = "yellow";
		
		Color cYellow = new Color();
		cYellow.color = "yellow";
		
	}

}
