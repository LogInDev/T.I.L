<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book/detail.jsp</title>
</head>
<body>
<h1>Detail @ㅠ@</h1>
<table border="1">
<tr>
	<th>book_id</th>
	<td>${map.book_id}</td>
</tr>
<tr>
	<th>title</th>
	<td>${map.title }</td>
</tr>
<tr>
	<th>category</th>
	<td>${map.category }</td>
</tr>
<tr>
	<th>price</th>
	<td>${map.price }</td>
</tr>
<tr>
	<th>insert_date</th>
	<td>${map.insert_date}</td>
</tr>
</table>
<p> <a href="list">List</a> 
 <a href="create">Create</a> 
 <a href="update?book_id=${map.book_id }">Update</a> 
 <a href="delete?book_id=${map.book_id }">Delete</a> </p>
</body>
</html>