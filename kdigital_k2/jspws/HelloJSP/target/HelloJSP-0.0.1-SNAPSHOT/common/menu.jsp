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
오늘 날짜 : <%=todayStr %><hr>
<table>
<tr><td>
<ul>
<li><a href="/">Home</a></li>
<li><a href="/01DirectiveScript">01DirectiveScript</a></li>
<li><a href="/02ImplicitObject">02ImplicitObject</a></li>
<li><a href="/03Scope">03Scope</a></li>
<li><a href="/04Cookie">04Cookie</a></li>
<li><a href="/05JDBC">05JDBC</a></li>
<li><a href="/06Session">06Session</a></li>
</ul></td>
<td>
<ul>
<%if(session.getAttribute("UserId") == null){ %>
<li><a href="/06Session/LoginForm.jsp">로그인</a></li>
<%} else{ %>
<li><a href="/06Session/Logout.jsp">로그아웃</a></li>
<%} %>
<li><a href="/08Board/List.jsp">게시판(페이징X)</a></li>
<li><a href="/09PagingBoard/List.jsp">게시판(페이징O)</a></li>
</ul></td>
</table>