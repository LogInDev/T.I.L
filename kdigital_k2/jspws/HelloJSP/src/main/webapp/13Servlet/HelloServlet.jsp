<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloServlet.jsp</title>
</head>
<body>
<h1>web.xml 매핑</h1>
<a 	href="/hi?name=hong">hi?name=</a>
<h1>Annotation</h1>
<a 	href="/hello?name=hong">/hello</a>
<h1>Annotation</h1>
<a 	href="/test/hello.jsp?name=hong">hello.jsp</a>
<form action="/hello2" method="post">
ID : <input type="text" name="id">
<input type="submit" value="dopost">
</form>
</body>
</html>