<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageContextLocation.jsp</title>
</head>
<body>
<h1>PageContextLocation Scope</h1>
<ul>
<li><%=pageContext.getAttribute("pageInteger") %></li>
<li><%=pageContext.getAttribute("pageString") %></li>
<li><%=pageContext.getAttribute("pagePerson") %></li>
</ul>
</body>
</html>