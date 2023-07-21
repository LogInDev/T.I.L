<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");

MemberDAO dao = new MemberDAO(application);

MemberDTO dto = new MemberDTO();
dto = dao.selectView(id);
%>
<%=dto %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View.jsp</title>
<script>
function deletePost() {
    var confirmed = confirm("정말로 삭제하겠습니까?"); 
    if (confirmed) {
        var form = document.writeFrm;       // 이름(name)이 "writeFrm"인 폼 선택
        form.method = "post";               // 전송 방식 
        form.action = "DeleteProcess.jsp";  // 전송 경로
        form.submit();                      // 폼값 전송
    }
}
</script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>회원 상세 보기</h2>
<form name="writeFrm">
    <input type="hidden" name="id" value="<%= id %>" />  <!-- 공통 링크 -->

    <table border="1" width="90%">
        <tr>
            <td width="15%">ID</td>
            <td><%= dto.getId() %></td>
            <td width="15%">PW</td>
            <td><%= dto.getPass() %></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><%= dto.getName() %></td>
            <td>Tel</td>
            <td ><%= dto.getTel() %></td>
        </tr>
        <tr>
            <td>Email</td>
            <td ><%= dto.getEmail()%></td>
            <td>등록일자</td>
            <td><%= dto.getRegidate() %></td>
        </tr>
      
        <tr>
            <td colspan="4" align="center">
            <%
            if (session.getAttribute("UserId") != null
                && (session.getAttribute("UserId").equals(dto.getId()) || session.getAttribute("UserId").equals("musthave"))) {
            %>
                <button type="button" onclick="location.href='Edit.jsp?id=<%=dto.getId()%>'">수정하기</button>
                <button type="button" onclick="deletePost();">삭제하기</button> 
            <%
            }
            %>
                <button type="button" onclick="location.href='List.jsp';">
                    회원 목록
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>