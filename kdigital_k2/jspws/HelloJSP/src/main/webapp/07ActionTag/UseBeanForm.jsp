<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UseBeanForm.jsp</title>
</head>
<body>
<h2>액션 태그로 폼값 한 번에 받기</h2>
<form action="UseBeanAction.jsp" method="post">
	이름 : <input type="text" name="name" /> <br />
	나이 : <input type="text" name="age" /> <br />
	<input type="submit" value="폼값 전송">
</form>
<form action="UseBeanAction.jsp" method="post">
	ID : <input type="text" name="id" /> <br />
	PW : <input type="text" name="pass" /> <br />
	이름 : <input type="text" name="name" /> <br />
	생성일자 : <input type="text" name="regidate" /> <br />
	<input type="submit" value="폼값 전송">
</form>
</body>
</html>