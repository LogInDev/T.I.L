<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
//.equalsIgnoreCase()대소문자 구분없이 비교해줌
if(id.equalsIgnoreCase("hong") && pwd.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseWelcome.jsp");//location.href="";와 같은 의미 - 둘다 GET방식으로 보냄
}else{
	//response.sendRedirect("ResponseMain.jsp?loginErr=1");//location.href="";와 같은 의미
	request.setAttribute("error", "1");//.setAttribute(속성, 값)
	request.getRequestDispatcher("ResponseMain.jsp").forward(request,response);	
}
%>

