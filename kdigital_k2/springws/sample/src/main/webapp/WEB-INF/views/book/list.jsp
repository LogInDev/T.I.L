<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book/list.jsp</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script type="text/javascript">
function searchList(){
	$.ajax({
		type: 'GET',
		url:'/book/listJsonMap',
		data : {
			"book" : $("select[name=book]").val(),
			"text" : $('#text').val()
		},
		dataType: 'json',
		success: function(data){
			console.log(data);
			let tr;
			for(list of data){
				tr+='<tr><td>'+ list.title+'</td><td>'+list.category+'</td><td>'+list.price+'</td></tr>';
			}
			$('#area').html(tr);
			
		},
		error: function(request,status, error){
			console.log(request, status, error)
		}
	})
}
$(function(){
	$('#searchbtn').on('click', function () {
		searchList();
	} );
});
</script>
</head>
<body>
<h1>List *----*</h1>
<table border="1">
	<thead>
		<tr>
			<th>title</th>
			<th>category</th>
			<th>price</th>
		</tr>
	</thead>
	<tbody id="area">
	<c:forEach items="${data}" var="row">
	<tr>
			<td> <a href="detailMap?book_id=${row.book_id }">${row.title }</a></td>
			<td>${row.category }</td>
			<td>${row.price }</td>
			</tr>
	</c:forEach>
	</tbody>
	<tr>
		<td> <select name="book" class="search" >
			<option  value="title">제목</option>
			<option value="category">카테고리</option>
		  </select> </td>
		  <td> <input type="text" name="text" id="text"> </td>
		  <td> <input type="button"  id="searchbtn" value="검색"></td>
	</tr>
</table>
<p> <a href="create">Create</a> </p>
</body>
</html>