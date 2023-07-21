package helloAPI;

import java.util.Calendar;
import java.util.Date;

public class CalendarEx4 {

	
	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		int sYear = 2022;
		int sMonth = 12;
		int sDay = 29;

		int eYear = 2023;
		int eMonth = 12;
		int eDay = 29;
		
		Calendar sCal = Calendar.getInstance();
		Calendar eCal = Calendar.getInstance();
		sCal.set(sYear,sMonth, sDay);
		eCal.set(eYear,eMonth, eDay);
		
		long st = sCal.getTimeInMillis();//timestamp
		long et = eCal.getTimeInMillis();//timestamp
		long ft = (et-st)/(1000*60*60*24);
		System.out.println(ft);
		
		
		
		//두 날짜의 차이
//		Date sd = new Date();
//		Date ed = new Date();
//		
//		sd.setYear(sYear);
//		sd.setMonth(sMonth-1);//12월 month 0~11이여서(0부터 시작)
//		sd.setDate(sDay);
//
//		ed.setYear(eYear);
//		ed.setMonth(eMonth-1);
//		ed.setDate(eDay);
//		long et = ed.getTime();//timestamp - milliseconds
//		long st = sd.getTime();
//		long ft = (et-st)/(1000*60*60*24);
//		System.out.println(ft);
	}

}
