<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("pageInteger", 1000);
request.setAttribute("pageString", "천자문");
request.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestContextMain.jsp</title>
</head>
<body>
<h1>RequestContext Scope</h1>
<ul>
<li><%=request.getAttribute("pageInteger") %></li>
<li><%=request.getAttribute("pageString") %></li>
<li><%=request.getAttribute("pagePerson") %></li>
</ul>
<a href="RequestContextLocation.jsp">RequestContextLocation.jsp</a><hr>
<!-- 자동으로 location에 바로 이동 -->
<%//request.getRequestDispatcher("RequestContextLocation.jsp").forward(request, response); %>
<!-- request가 page보다 큰범위여서 불러올 수 있음 -->
<%@include file = "PageInclude.jsp" %>
</body>
</html>