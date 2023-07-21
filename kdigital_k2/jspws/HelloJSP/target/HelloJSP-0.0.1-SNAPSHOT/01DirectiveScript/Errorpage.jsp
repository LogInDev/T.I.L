<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="IsErrorPage2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01/Error500.jsp</title>
</head>
<body>
<%
	int myAge = Integer.parseInt(request.getParameter("age"))+10;
	out.print("10년후 나이는"+ myAge);
%>
</body>
</html>