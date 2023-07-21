<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/detail.jsp</title>
</head>
<body>
<h1>Detail @ㅠ@</h1>
<table border="1">
<tr>
	<th>title</th>
	<td>${map.title }</td>
	<th>writer</th>
	<td>${map.writer }</td>
</tr>
<tr>
	<th>regdate</th>
	<td>${map.regdate}</td>
	<th>cnt</th>
	<td>${map.cnt}</td>
</tr>
<tr >
	<th >content</th>
	<td colspan="3" height="100px">${map.content }</td>
</tr>
</table>
<p> <a href="list">List</a> 
 <a href="create">Create</a> 
 <a href="update?seq=${map.seq }">Update</a> 
 <a href="delete?seq=${map.seq }">Delete</a> </p>
</body>
</html>