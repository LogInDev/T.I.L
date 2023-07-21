<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage ="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IsErrorPage.jsp</title>
</head>
<body>
<h1>서비스 중 일시적인 오류가 발생했습니다.</h1>
<p>
오류명 : <%=exception.getClass().getName() %><br>
오류메세지 : <%=exception.getMessage() %>
</p>
</body>
</html>