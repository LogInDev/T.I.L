<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm.jsp</title>
<script >
function validateForm(form) {
	if (form.user_id.value.length === 0) {
		alert("아이디를 입력하세요.");
		return false;
	}
	if (form.user_pw.value == "") {
		alert("패스워드를 입력하세요.");
		return false;
	}
}
</script>
</head>
<body>
<!-- jsp는 톰캣이 처리(HTML X) -->
<jsp:include page="../common/Link.jsp" />
<h2>로그인 페이지</h2>
<hr>
<span style="color: red; font-size: 1.2em;">
	<%= request.getAttribute("LoginErrMsg") == null ?
			"" : request.getAttribute("LoginErrMsg")%>
</span>
<%
if (session.getAttribute("UserId") == null){
%>
<form action="LoginProcess.jsp" method="post" name="loginFrm"
	onsubmit="return validateForm(this);">
<!--  <form action="LoginProcess.jsp" method="post" name="loginFrm">
	submit은 button과 달리 form에서 onsubmit으로 함수를 걸어야함.(true일 경우만 실행)-->
	아이디 : <input type="text" name="user_id" /> <br>
	패스워드 : <input type="password" name="user_pw" /> <br>
	<input type="submit" value="로그인하기"  />	
</form>
<%
} else{
%>
	<%= session.getAttribute("UserName") %>
	(<%= session.getAttribute("UserId") %>)
	회원님, 로그인 하셨습니다.<br>
	<a href = "Logout.jsp">[로그아웃]</a>
<%} %>
</body>
</html>