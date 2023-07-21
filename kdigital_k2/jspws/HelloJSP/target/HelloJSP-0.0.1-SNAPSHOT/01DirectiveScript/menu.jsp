<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- menu.jsp -->
<%
Date today = new Date();
SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd");
String todayStr = dFormat.format(today);
out.print(todayStr+"<br>");
%>
오늘 날짜 : <%=todayStr %><br>
<hr>
<ul>
<li><a href="/">Home</a></li>
<li><a href="Error500.jsp">Error500-try-catch</a></li>
<li><a href="Errorpage.jsp?age=30">Errorpage</a></li>
<li><a href="ScriptElements.jsp">ScriptElement</a></li>
</ul><hr>