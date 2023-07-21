<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>getBoardView.jsp</title>
</head>
<body>
<a href="index.do">INDEX</a> <hr>
<table border="1">
	<tr>
		<th width="10%">번호</th>
		<td  width="10%">${vo.seq }</td>
			<th>등록일</th>
			<td>${vo.regDate }</td>
			<th>조회수</th>
			<td>${vo.cnt}</td>
	</tr>
	<tr>
	<th >제목</th>
			<td colspan="3">${vo.title }</td>	
			<th>작가</th>
	<td>${vo.writer }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td colspan="5"> <textarea rows="5" cols="50">${vo.content}</textarea></td>
	</tr>
	<tr>
	<td colspan="6">
		<a href="/jspajax/updateBoard.go?seq=${vo.seq }" class="btn btn-secondary">수정
	</a></td>
	</tr>
</table>
</body>
</html>