<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- menu.jsp -->
<%
Date today = new Date();
SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd");
String todayStr = dFormat.format(today);
//out.print(todayStr+"<br>");
%>
오늘 날짜 : <%=todayStr %><br>
<hr>
<ul>
<li><a href="/">Home</a></li>
<li><a href="member_form.jsp">Member Insert Form</a></li>
<li><a href="ExeQuery.jsp">ExeQyery</a></li>
<li><a href="#"></a></li>
</ul><hr>