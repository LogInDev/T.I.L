<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String str1 = "JSP";
    String str2 = "Hello!!";
    %>
   <!-- '!'메소드나 변수를 선언할 때 사용 - java문법사용(only 선언만) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h1>index.jsp</h1>
<span><%out.print(str1); %></span> <span><%=str2 %></span>
</body>
</html>