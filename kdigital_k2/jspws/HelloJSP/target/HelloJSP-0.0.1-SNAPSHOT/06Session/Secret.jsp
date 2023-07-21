<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//session 값 중 user_id확인
if(session.getAttribute("UserId") == null){
	response.sendRedirect("LoginForm.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Secret.jsp</title>
</head>
<body>
<h1> VIP Page</h1>
<h2>VIP Name : <%= session.getAttribute("UserName") %></h2>
</body>
</html>