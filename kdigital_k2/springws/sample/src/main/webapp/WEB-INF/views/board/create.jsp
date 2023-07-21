<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/create.jsp</title>
</head>
<body>
<h1>책 생성하기</h1>
<form method="post" action="/board/create">
<p>title : <input type="text" name="title"></p>
<p>writer : <input type="text" name="writer"></p>
<p>content : <input type="text" name="content"></p>
<p><input type="submit" value="submit"></p>
</form>
</body>
</html>