<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/book/update.jsp</title>
</head>
<body>
<h1>Update</h1>
<form action="update" method="post">
<table border="1">
<input type="hidden" name="book_id" value="${map.book_id}" >
<tr>
	<th>book_id</th>
	<td>${map.book_id}</td>
</tr>
<tr>
	<th>title</th>
	<td> <input type="text" name="title" value="${map.title }"></td>
</tr>
<tr>
	<th>category</th>
	<td> <input type="text" name="category" value="${map.category }"></td>
</tr>
<tr>
	<th>price</th>
	<td><input type="text" name="price" value="${map.price }"></td>
</tr>
<tr>
	<th>insert_date</th>
	<td>${map.insert_date}</td>
</tr>

</table>
<input type="submit" value="수정">
</form>
</body>
</html>