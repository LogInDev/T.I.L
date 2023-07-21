<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestParameter.jsp</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");//한글 깨질때 사용하는 메소드
String id = request.getParameter("id");
String sex = request.getParameter("sex");
//하나의 name에 value가 여러개인 경우 배열로 만들어줌
String[] favo = request.getParameterValues("favo");
String intro = request.getParameter("intro").replace("\r\n", "<br>");
%>
<ul>
<li>ID: <%=id %></li>
<li>성별: <%=sex %></li>
<%for(String f :favo){%>
<li>관심사항: <%=f %></li>
<% }%>
<li>자기소개: <%=intro %></li>
</ul>
</body>
</html>