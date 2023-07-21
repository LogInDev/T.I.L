<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<String> lists = new ArrayList<String>();
lists.add("강아지");
lists.add("송아지");
lists.add("망아지");
session.setAttribute("animal", lists);
session.setAttribute("pageInteger", 1000);
session.setAttribute("pageString", "천자문");
session.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionContextMain.jsp</title>
</head>
<body>
<h1>SessionContext Scope</h1>
<ul>
<li><%=session.getAttribute("pageInteger") %></li>
<li><%=session.getAttribute("pageString") %></li>
<li><%=session.getAttribute("pagePerson") %></li>
</ul>
<a href="SessionContextLocation.jsp">SessionContextLocation.jsp</a><hr>
<!-- 자동으로 location에 바로 이동 -->
<!--  <%//request.getRequestDispatcher("SessionContextLocation.jsp").forward(request, response); %>
request가 page보다 큰범위여서 불러올 수 있음-->
<%@include file = "PageInclude.jsp" %>
</body>
</html>