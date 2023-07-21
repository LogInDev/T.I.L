<%@page import="membership.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMember.jsp</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>

</head>
<body>
<h1>getMember</h1>
<hr>
<h2>
<a href="index.do">INDEX</a> <hr>
<table border="1">
<tr>
	<th>SEQ</th>
	<th>TITLE</th>
	<th>WRITER</th>
	<th>REGDATE</th>
	<th>CNT</th>
</tr>
<c:forEach items="${list }" var="vo">
	<tr align="center">
	<td align="center"><a href="getBoard.go?seq=${vo.seq}">${vo.seq }</td>
	<td align="center">${vo.title }</td>
	<td align="center">${vo.writer }</td>
	<td align="center">${vo.regDate }</td>
	<td align="center">${vo.cnt }</td>
	</tr>
	</c:forEach>
</table>

</h2>
</body>
</html>