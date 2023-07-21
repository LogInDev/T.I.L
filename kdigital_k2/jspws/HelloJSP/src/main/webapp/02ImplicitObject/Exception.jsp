<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception.jsp</title>
</head>
<body>
<%
	int status = response.getStatus();
	if(status == 404){
		out.println("404 Error");
	}else if(status == 405){
		out.println("405 Error");
	}else if(status == 500){
		out.println("500 Error");
	}else{
		out.println("Etc Error");
	}
%>
</body>
</html>