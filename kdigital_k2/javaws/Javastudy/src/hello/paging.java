package hello;

import java.util.Arrays;
import java.util.List;

public class paging {

	public static void main(String[] args) {
		String page = "3";
		String offset = "0";
		String sql = " select * from film f ";
		sql += " order by film_id asc ";
		sql += " limit 10 offset ";
		offset = ""+((Integer.parseInt(page)-1)*10);
		sql+=offset;
		
		
		System.out.println(sql);
	}

}
