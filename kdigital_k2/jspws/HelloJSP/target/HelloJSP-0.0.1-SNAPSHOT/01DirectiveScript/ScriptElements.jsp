<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!//선언부(메소드 선언)
    public int add(int num1, int num2) {
    	return num1 + num2;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScriptElements.jsp</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<%
	int result = add(10,20);
%>
덧셈 결과1 : <%=result %><br>
덧셈 결과2 : <%=add(100,200) %>
</body>
</html>