<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> lists = (List<String>)session.getAttribute("animal");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionContextLocation.jsp</title>
</head>
<body>
<h1>SessionContextLocation Scope</h1>
<ul>
<!-- <%for(String list:lists) { %>
<li><%=list %></li>
<%} %> -->
<li><%=session.getAttribute("pageInteger") %></li>
<li><%=session.getAttribute("pageString") %></li>
<li><%=session.getAttribute("pagePerson") %></li>
</ul>
</body>
</html>