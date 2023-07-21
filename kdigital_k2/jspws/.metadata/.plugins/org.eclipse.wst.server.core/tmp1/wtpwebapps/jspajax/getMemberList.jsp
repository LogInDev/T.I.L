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
<script type="text/javascript">
function getMemberJson(){
	//let param = {mList:'mList'};
	//.ajax함수 안에 javascript의 object{k:v}를 넣어줌
	$.ajax({
		type: 'GET',
		url: 'getMemberListJson.do',
		//키값이 없을 때에는 data필요 없음
		//data: param, //url: 'getMemberJson.do?id='+param과 같음
		dataType: 'json',
		//html은 동기여서 언제 error가 날지 success할지 모르니 ajax에서 jquery가 collback함수로 확인해줌
		//success의 함수안에 파라미터값이 json의 값
		success: function(data){
			let tr;
			for(member of data){
			 tr +='<tr><td>ID : ' + member.id + '</td><td>NAME : ' + member.name  + '</td></tr>';
		}
			$('#area').html(tr);
		
		},
		error: function(request, status, error){
			console.log(request, status, error)
		}
	});
	
}

//.onload 상태
$(function(){
	//파라미터로 넣을때는 함수이름만 넣기 ()로 함수 호출 X
	//일반적으로는 파라미터에 function(){ getMemberJson();}으로 사용
	$('#btn').on('click',getMemberJson);
});

</script>
</head>
<body>
<h1>getMember</h1>
<h2>
<a href="index.do">INDEX</a> <hr>
<table id="area">

</table>
<hr>
<table>
<c:forEach items="${mList }" var="dto">
<tr>
	<td>ID : ${dto.id }</td>
	<td>NAME : ${dto.name }</td>
	</tr>
	</c:forEach>
</table>
<button type="button" id="btn">getMember</button>

</h2>
</body>
</html>