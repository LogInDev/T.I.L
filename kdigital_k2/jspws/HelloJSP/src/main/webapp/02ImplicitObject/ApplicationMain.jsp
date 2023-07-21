<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
application.setAttribute("count", 1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationMain.jsp</title>
</head>
<body>
<%@include file="menu.jsp"%>
Count : <%=application.getAttribute("count") %> <br>
<!-- getInitParameter - context-param과연결 -->
<%=application.getInitParameter("INIT_PARAM") %> /
<%=application.getInitParameter("user_name") %> <br>
<%=this.getServletContext().getRealPath("/02ImplicitObject") %>
</body>
</html>