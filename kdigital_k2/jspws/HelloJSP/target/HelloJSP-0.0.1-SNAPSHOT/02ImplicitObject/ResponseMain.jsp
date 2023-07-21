<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String error = (String)request.getAttribute("error");
//.setAttribute(속성, 값)에서 값을 전달해줌. 이때 값의 자료형이 뭔지 몰라 항상 object타입으로 전달해줌
String loginError = request.getParameter("loginErr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseMain.jsp</title>
</head>
<body>
<h2>Error : <%=error %> / LoginError : <%=loginError %></h2>
<form action="ResponseLogin.jsp" method="post">
ID: <input type="text" name="user_id"> <br>
PW: <input type="text" name="user_pwd"> <br>
<input type="submit" value="LogIn"> <br>
</form>
</body>
</html>