<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book/list.jsp</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<script type="text/javascript">
function searchList(){
	$.ajax({
		type: 'GET',
		url:'/boardapi/getList',
		data : {
			"book" : $("select[name=book]").val(),
			"text" : $('#text').val()
		},
		dataType: 'json',
		success: function(data){
			let tr;
			console.log(data);
			for(list of data){
				tr+='<tr><td>'+list.seq+'</td><td width="150px"><a href="/board/detail?seq='+list.seq+'">'+ list.title+'</td><td>'+list.writer;
				tr+='</td><td>'+list.regdate+'</td><td  align="center">'+list.cnt +'</td>';
			}
			console.log(tr);
			$('#area').html(tr);
			
		},
		error: function(request,status, error){
			console.log(request, status, error)
		}
	})
}

function deletebtn() {
    let selectedBoard = [];
    $("input[name=seq]:checked").each(function () {
       let seq = $(this).val();
       selectedBoard.push({seq: seq});

    });

    $.ajax({
                type: 'POST',
                url: '/board/deletebtn',
                data: JSON.stringify(selectedBoard),
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                success: function (data) {
                	if(data == 1){
    					alert("삭제가 완료가 확인 되었습니다.");
    					document.location.reload(true);
    				}else{
    					window.alert(data.message);
    				}
                },
                error: function(request,status, error){
        			console.log(request, status, error)
        		}
                
     });
        
}

$(function(){
	$('#searchbtn').on('click', function () {
		searchList();
	} );
	$('#deletebtn').on('click', function () {
		deletebtn();
	} );
});
</script>
</head>
<body>
	<h1>List *----*</h1>
	<table border="1">
		<thead>
			<tr>
				<th colspan="2">seq</th>
				<th>title</th>
				<th>writer</th>
				<th>regdate</th>
				<th>cnt</th>
			</tr>
		</thead>
		<tbody id="area">
			<c:forEach items="${data}" var="row">
				<tr>
					<td align="center"><input type="checkbox" id="seq" name="seq"
						value="${row.seq }"></td>
					<td align="center">${row.seq }</td>
					<td width="150px"><a href="/board/detail?seq=${row.seq }">${row.title }</a></td>
					<td>${row.writer }</td>
					<td>${row.regdate }</td>
					<td align="center">${row.cnt }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<table>
		<tr>

			<td><select name="book" class="search">
					<option value="title">제목</option>
					<option value="writer">글쓴이</option>
			</select></td>
			<td><input type="text" name="text" id="text"></td>
			<td><input type="button" id="searchbtn" value="검색"></td>
			<td><input type="button" id="deletebtn" value="삭제"></td>
		</tr>
	</table>
	<p>
		<a href="/">Index</a>
	</p>
	<p>
		<a href="create">Create</a>
	</p>
</body>
</html>