package helloAPI;

public class MyCalendarTest {

	public static void main(String[] args) {
		MyCalendar mc = MyCalendar.getInstance();
		
		System.out.println(mc);
		System.out.print(mc.getYMD(MyCalendar.YEAR)+"년");
		System.out.print(mc.getYMD(MyCalendar.MONTH)+"월");
		System.out.print(mc.getYMD(MyCalendar.DATE)+"일  ");
		System.out.print(mc.getYMD(MyCalendar.HOUR)+"시");
		System.out.print(mc.getYMD(MyCalendar.MIN)+"분");
		System.out.print(mc.getYMD(MyCalendar.SEC)+"초");
	}

}
