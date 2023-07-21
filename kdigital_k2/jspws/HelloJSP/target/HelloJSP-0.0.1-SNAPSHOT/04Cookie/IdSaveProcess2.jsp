<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//1. 값 받기 ->출력해서 꼭 확인해 보기
String userId = request.getParameter("user_id");
String userPw = request.getParameter("user_pw");
String chkVal = request.getParameter("save_check");
%>
<%=userId%>/<%=userPw%>/<%=chkVal%>
<%
if(chkVal.equals("Y")){
	CookieManager.makeCookie(response, "userId", "userPw", 60*60);
}else{
	CookieManager.deleteCookie(response, "userId");
}
if(userId.equals("hong")&& userPw.equals("1111")){
	out.println("로그인 성공");
	CookieManager.makeCookie(response, "userId", "userPw", 60*60*24);
	response.sendRedirect("TopSecret.jsp");
}else{
	out.println("쿠키 생성 / 로그인 실패");
	response.sendRedirect("IdSaveMain.jsp");
}


%>