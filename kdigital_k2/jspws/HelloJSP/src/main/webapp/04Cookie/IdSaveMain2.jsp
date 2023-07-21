<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
boolean isCheck = false;//쿠키값이 없을 때 
Cookie[] cookies = request.getCookies();
String userId = "";
if (cookies != null) {
	for (Cookie c : cookies) {
		String cName = c.getName();
		String cValue = c.getValue();
		if (cName.equals("userId")) {
			isCheck = true;
			userId = cValue;
		}
	}
}
String checked = "";
if (isCheck) {
	checked = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdSaveMain.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function() {
	$('#LoginBtn').click(function() {
		if($('#user_id').val().length===0){
			alert('ID는 필수');
			$('#user_id').focus();
			return;
		}
		if($('#user_pw').val().length===0){
			alert('PW는 필수');
			$('#user_pw').focus();
			return;
		}
		//$('#LoginForm').attr('action','IDSaveProcess.jsp')
		$('#LoginForm').submit();
	});
});
</script>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form id="LoginForm" action="IdSaveProcess.jsp" method="post">
		아이디 : <input type="text" name="user_id" id="user_id"
			value="<%=userId%>"> <input type="checkbox" name="save_check"
			id="save_check" value="Y" <%=checked%>> 아이디 저장하기 <br>
		패스워드 : <input type="text" id="user_pw" name="user_pw"> <br> <input
			type="button" id="LoginBtn" value="로그인하기">
	</form>
</body>
</html>