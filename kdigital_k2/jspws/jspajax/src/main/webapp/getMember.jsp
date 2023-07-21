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
	let param = {id:'park'};
	//.ajax함수 안에 javascript의 object{k:v}를 넣어줌
	$.ajax({
		type: 'GET',
		url: 'getMemberJson.do',
		data: param, //url: 'getMemberJson.do?id='+param과 같음
		dataType: 'json',
		//html은 비동기여서 언제 error가 날지 success할지 모르니 ajax에서 jquery가 collback함수로 확인해줌
		//success의 함수안에 파라미터값이 json의 값
		success: function(response){
			console.log(response);
			let li='<li>ID : ' + response['id'] + '</li>\n';
			li +='<li>NAME : ' + response['name'] + '</li>'
			console.log(li);
			$('#area').html(li);
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

<ul>
	<li>ID : ${dto.id }</li>
	<li>NAME : ${dto.name }</li>
</ul>
<button type="button" id="btn">getMember</button>
<ul id="area">

</ul>
</h2>
</body>
</html>