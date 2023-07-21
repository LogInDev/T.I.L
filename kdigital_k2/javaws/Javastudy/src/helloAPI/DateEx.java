package helloAPI;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateEx {

	public static void main(String[] args) {
		Date now = new Date();
		System.out.println(now);
		String pattern = "yyyy-MM-dd HH:mm:ss";
		SimpleDateFormat sf= new SimpleDateFormat(pattern);
		System.out.println(sf.format(now));
		
//		Calendar cal = Calendar.getInstance();// 싱글톤
//		Date d = new Date(cal.getTimeInMillis());
//		System.out.println(sf.format(d));
		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());
		System.out.println(sf.format(d));
		System.out.println(today.get(Calendar.YEAR));
		System.out.println(today.get(Calendar.MONTH)+1+"월");
		System.out.println(today.get(Calendar.WEEK_OF_YEAR));
		System.out.println(today.get(Calendar.DAY_OF_WEEK)+"요일");
		String [] arr = {"일", "월","화","수","목","금","토"};
		String[] dArr = new String[7];
		int a = today.get(Calendar.DAY_OF_WEEK);
		
		
		
	}


}
