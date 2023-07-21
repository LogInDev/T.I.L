<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../08Board/IsLoggedIn.jsp" %><!-- 로그인 확인 -->
<%
String id =request.getParameter("id");

MemberDAO dao = new MemberDAO(application);

MemberDTO dto = new MemberDTO();
dto = dao.selectView(id);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit.jsp</title>
<script type="text/javascript">
function validateForm(form) {
	if(form.id.value =="") {
		alert("ID를 입력하세요.");
		form.title.focus();
		return false;
	}
	if(form.content.value ==""){
		alert("이름을 입력하세요.");
		form.content.focus();
		return false;
	}
	if(form.content.value ==""){
		alert("이름을 입력하세요.");
		form.content.focus();
		return false;
	}
}
</script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>회원 정 수정하기(Edit)</h2>
<form action="EditProcess.jsp" name="writeFrm" method="post"
	onsubmit="return validateForm(this);">
	<input type="hidden" name="id" value="<%=id%>" />
	<table border="1" width="90%">
		<tr>
			<td>ID</td>
			<td name="id" value="<%=dto.getId() %>">
				<%=dto.getId() %>
			</td>
			<td>PW</td>
			<td>
				<input type="text" name="pw" style="width:50%;" 
					value="<%=dto.getPass() %>">
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td colspan="3">
				<input type="text" name="name" style="width:95%;" 
					value="<%=dto.getName() %>">
			</td>
			
		</tr>
		<tr>
			<td>Email</td>
			<td>
				<input type="text" name="email" style="width:50%;" 
					value="<%=dto.getEmail() %>">
			</td>
			<td>Tel.</td>
			<td>
				<input type="text" name="tel" style="width:50%;" 
					value="<%=dto.getTel() %>">
			</td>
		
		</tr>
		<tr>
			<td colspan="4" align="center">
				<button type="submit">작성 완료</button>
				<button type="reset">다시 입력</button>
				<button type="button" onclick="location.href='List.jsp';">
					목록 보기</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>