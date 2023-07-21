<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestContextLocation.jsp</title>
</head>
<body>
<h1>RequestContextLocation Scope</h1>
<ul>
<li><%=request.getAttribute("pageInteger") %></li>
<li><%=request.getAttribute("pageString") %></li>
<li><%=request.getAttribute("pagePerson") %></li>
</ul>
</body>
</html>