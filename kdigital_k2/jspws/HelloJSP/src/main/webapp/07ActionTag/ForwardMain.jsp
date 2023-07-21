<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("pAttr", "김유신");
request.setAttribute("rAttr", "계백");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForwardMain.jsp</title>
</head>
<body>
<h2>액션 태그를 이용한 포워딩</h2>
<jsp:forward page="/07ActionTag/ForwardSub.jsp"></jsp:forward>
</body>
</html>