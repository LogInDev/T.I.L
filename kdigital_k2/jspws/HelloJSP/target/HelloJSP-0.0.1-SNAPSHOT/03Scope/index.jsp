<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03Scope/index.jsp</title>
</head>
<body>
<%@include file="menu.jsp"%>
Count : <%=application.getAttribute("count") %> <br>
</body>
</html>