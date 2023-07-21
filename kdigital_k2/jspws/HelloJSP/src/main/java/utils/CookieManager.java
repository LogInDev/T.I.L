package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CookieManager {
//setCookie
	public static void makeCookie(HttpServletResponse response
			, String cName, String cValue, int cTime) {
		Cookie cookie = new Cookie(cName, cValue);
		cookie.setPath("/");
		cookie.setMaxAge(cTime);
		response.addCookie(cookie);
	}
//getCookie	
	public static String readCookie(HttpServletRequest request, String cName) {
		String cValue = "";
		Cookie[] cookies = request.getCookies();//쿠키 가져오기
		if(cookies !=null){
			for(Cookie c : cookies){
				String cookieName = c.getName();//쿠키 이름
				String cookieValue = c.getValue();//쿠키 값
				if(cookieName.equals(cName)) {
					cValue = cookieValue;
				}
			}
		}
		return cValue;
	}
	
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response, cName, "", 0);
	}
}
