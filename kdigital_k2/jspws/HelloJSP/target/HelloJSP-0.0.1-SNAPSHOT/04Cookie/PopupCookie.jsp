<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("inactiveToday");

if(chkVal != null && chkVal.equals("1")) {
	Cookie cookie = new Cookie("Popupclose", "on");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(0);
	response.addCookie(cookie);
	out.println("쿠키 : 하루 동안 열지 않음");
}
%>