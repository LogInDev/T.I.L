<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "천자문");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageContextMain.jsp</title>
</head>
<body>
<h1>PageContext Scope</h1>
<ul>
<li><%=pageContext.getAttribute("pageInteger") %></li>
<li><%=pageContext.getAttribute("pageString") %></li>
<li><%=pageContext.getAttribute("pagePerson") %></li>
</ul>
<a href="PageContextLocation.jsp">PageContextLocation.jsp</a><hr>
<%@include file = "PageInclude.jsp" %>
</body>
</html>