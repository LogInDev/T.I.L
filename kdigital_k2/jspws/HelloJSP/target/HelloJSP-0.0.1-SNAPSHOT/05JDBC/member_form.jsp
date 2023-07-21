<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_form.jsp</title>
</head>
<body>
	<h1>Member Insert Form</h1>
	<form action="ExeUpdate.jsp" method="post">
	id: <input type="text" name="id"> <br>
	pw: <input type="text" name="pass"> <br>
	name: <input type="text" name="name"> <br>
	<input type="submit" value="member insert">
	</form>
</body>
</html>