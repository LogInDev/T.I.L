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
<input type="hidden" name="seq" value="${map.seq}" >
<tr>
	<th>title</th>
	<td> <input type="text" name="title" value="${map.title }"></td>
	<th>writer</th>
	<td> <input type="text" name="writer" value="${map.writer }"></td>
</tr>
<tr>
	<th>regdate</th>
	<td>${map.regdate}</td>
	<th>cnt</th>
	<td>${map.cnt}</td>
</tr>
<tr>
	<th>content</th>
	<td colspan="3"><textarea rows="10" cols="50" name="content" >${map.content }</textarea></td>
</tr>

</table>
<input type="submit" value="수정">
</form>
</body>
</html>