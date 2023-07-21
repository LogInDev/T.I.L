<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book/create.jsp</title>
</head>
<body>
<h1>책 생성하기</h1>
<form method="post" action="/book/create">
<p>title : <input type="text" name="title"></p>
<p>category : <input type="text" name="category"></p>
<p>price : <input type="text" name="price"></p>
<p><input type="submit" value="submit"></p>
</form>
</body>
</html>