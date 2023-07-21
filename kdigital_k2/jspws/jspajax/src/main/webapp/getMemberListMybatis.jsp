<%@page import="java.util.List"%>
<%@page import="membership.MemberDTO"%>
<%@page import="mem.mybatis.OracleSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMemberListMybatis.jsp</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>

</head>
<body>
<h1>member - MemberList</h1>
<hr>
<a href="index.do">INDEX</a> <hr>
<table border="1">
<tr>
	<th>ID</th>
	<th>NAME</th>
	<th>PASS</th>
	<th>EMAIL</th>
	<th>TEL</th>
	<th>REGIDATE</th>
</tr>
<c:forEach items="${list }" var="dto">
<tr>
	<td><a href="getMemberMybatis.do?id=${dto.id}">${dto.id}</td>
	<td>${dto.name}</td>
	<td>${dto.pass}</td>
	<td>${dto.email}</td>
	<td>${dto.tel}</td>
	<td>${dto.regidate}</td>
</tr>	
	</c:forEach>
</table>
</body>
</html>