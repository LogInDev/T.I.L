<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Today</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<style type="text/css">
input.btn-image {
	margin: 0px 0px 0px 610px;
	border: 0px  #9adaca;
</style>
<script type="text/javascript">
function insert(){
	$.ajax({
		type: 'GET',
		url:'/check/insertJson',
		data : {
			"name" : $("#name").val(),
			"pass" : $('#pass').val(),
			"content" : $('#content').val()
		},
		dataType: 'json',
		success: function(data){
			if(data == 1){
				$('input').val('');
				$('#content').val('');
			}
		},
		error: function(request,status, error){
			console.log(request, status, error)
		}
	})
}
function selectList(){
	$.ajax({
		type: 'GET',
		url:'/check/selectJson',
		dataType: 'json',
		success: function(data){
			let tr;
			for(list of data){
			console.log(list.regdate);			
				tr+='<tr><th align="left" width="50px">성명</th><td align="left">'+list.name;
				tr+='</td><th width="20px">hit</th><td align="left" width="200px">'+list.hit;
				tr+='</td><th align="right" width="200px">입력날짜</th><td align="right">'+list.regdate+'</td></tr>';
				tr+='<tr><td colspan="6" width="900px"> <textarea rows="10" cols="100">'+list.content+'</textarea></td></tr>';
			
			}
			$('#area').html(tr);
		},
		error: function(request,status, error){
			console.log(request, status, error)
		}
	})
}
$(function(){
	selectList();
	$('#insertbtn').on('click', function () {
		insert();
	} );
});
</script>
</head>
<body>
<fieldset style="width:100px" >
<legend ><h1> Today &nbsp;</h1></legend>
		성명 : 
		 <input type="text" name="name" id="name" style="margin:0px 50px 0px 0px" >
		비밀번호 :
		<input type="password" name="pass" id="pass">
		<p><textarea rows="10" cols="100" id="content"></textarea></p>
		<input type="image" id="insertbtn" class="btn-image" src="../../resources/images/출석체크버튼.png">
</fieldset>

<fieldset  style="width:100px">
<legend ><h1> 오늘의 출첵!! #__# &nbsp;</h1></legend>
<table  width="100px" id="area">
	<tr>
		<th align="left" width="50px">성명</th>
		<td align="left">sss</td>
		<th width="20px">hit</th>
		<td align="left" width="200px">1</td>
		<th align="right" width="200px">입력날짜</th>
		<td align="right">2023.03.29</td>
	</tr>
	<tr >
		<td colspan="6" width="900px"> <textarea rows="10" cols="100">content</textarea> </td>
	</tr>
</table>
</fieldset>
</body>
</html>