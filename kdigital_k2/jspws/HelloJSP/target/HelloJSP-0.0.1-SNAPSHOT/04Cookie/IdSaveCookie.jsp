<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("chkVal");
String userId = request.getParameter("userId");
if(chkVal.equals("Y")){
	Cookie cookie = new Cookie("userId", userId);
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
	out.println("쿠키 :아이디 저장");
}else{
	Cookie cookie = new Cookie("userId", "");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(0);//유지 시간 0 ->쿠키 없애기
	response.addCookie(cookie);
	out.println("쿠키:삭제");
}
%>