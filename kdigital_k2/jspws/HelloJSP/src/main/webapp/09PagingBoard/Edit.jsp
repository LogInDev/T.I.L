<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %><!-- 로그인 확인 -->
<%
int num = Integer.parseInt(request.getParameter("num"));

BoardDAO dao = new BoardDAO(application);

BoardDTO dto = new BoardDTO();
dto = dao.selectView(num);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit.jsp</title>
<script type="text/javascript">
function validateForm(form) {
	if(form.title.value =="") {
		alert("제목을 입력하세요.");
		form.title.focus();
		return false;
	}
	if(form.content.value ==""){
		alert("내용을 입력하세요.");
		form.content.focus();
		return false;
	}
}
</script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>회원제 게시판 - 수정하기(Edit)</h2>
<form action="EditProcess.jsp" name="writeFrm" method="post"
	onsubmit="return validateForm(this);">
	<input type="text" name="num" value="<%=num%>" />
	<table border="1" width="90%">
		<tr>
			<td>제목</td>
			<td>
				<input type="text" name="title" style="width:90%;" 
					value="<%=dto.getTitle() %>">
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>
				<textarea name="content" style="width:90%; height : 100px;"
					><%=dto.getContent()%></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">작성 완료</button>
				<button type="reset">다시 입력</button>
				<button type="button" onclick="location.href='/08Board/List.jsp';">
					목록 보기</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>