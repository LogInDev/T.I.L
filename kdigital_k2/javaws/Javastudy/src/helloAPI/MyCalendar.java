package helloAPI;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyCalendar {
	private String date;
	public static final int YEAR = 1;
	public static final int MONTH = 2;
	public static final int DATE = 3;
	public static final int HOUR = 4;
	public static final int MIN = 5;
	public static final int SEC = 6;
	//싱글톤
	private MyCalendar() {
		String pattern = "yyyy-MM-dd HH:mm:ss";
		SimpleDateFormat sf = new SimpleDateFormat(pattern);
		this.date = sf.format(new Date());//오늘 날짜를 우리나라 pattern으로 생성
	}

	public static MyCalendar getInstance() {
		return new MyCalendar();
	}

	//숫자로 년, 월, 일을 리턴하기 위한 메소드
	public int getYMD(int opt) {
		int rs = 0;
		String sRs = "0";

		String[] dArr = this.date.split(" ");
		String ymd = dArr[0];
		String hms = dArr[1];
		
		//Date
		String[] ymdArr = ymd.split("-");
		if(opt==YEAR) sRs = ymdArr[0];
		else if(opt==MONTH) sRs = ymdArr[1];
		else if(opt==DATE) sRs = ymdArr[2];
		//Time
		String [] hmsArr = hms.split(":");
		if(opt==HOUR) sRs = hmsArr[0];
		else if(opt==MIN) sRs = hmsArr[1];
		else if(opt==SEC) sRs = hmsArr[2];
		rs = Integer.parseInt(sRs);
		return rs;

	}



	void set(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return this.date;
	}
}
