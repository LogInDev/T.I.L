<%@page import="javax.sql.DataSource"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
int num = Integer.parseInt(request.getParameter("num"));

BoardDAO dao = new BoardDAO(application);

dao.updateVisitCount(num);
BoardDTO dto = new BoardDTO();
dto = dao.selectView(num);
dao.close();
//특수 문자여서 jstl에 직접 넣으면 오류가 떠서 변수로 변환해서 사용
pageContext.setAttribute("CRLF", "\r\n"); //window운영체제
pageContext.setAttribute("LF", "\n"); //mac운영체제
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
<h2>회원제 게시판 - 상세 보기(View)</h2>
<form name="writeFrm">
    <input type="hidden" name="num" value="<%= num %>" />  <!-- 공통 링크 -->
    <c:set var="dto" value="<%=dto %>" />
    <table border="1" width="90%">
        <tr>
            <td>번호</td>
            <td>${dto.num}</td>
            <td>작성자</td>
            <td>${dto.name}</td>
        </tr>
        <tr>
            <td>작성일</td>
            <td>${dto.postdate}%</td>
            <td>조회수</td>
            <td>${ dto.visitcount}%</td>
        </tr>
        <tr>
            <td>제목</td>
            <td colspan="3">${dto.title} </td>
        </tr>
      
        <tr>
            <td>내용</td>
            <td colspan="3" height="100">
            <c:set var="content" value="${dto.content }" />
         		<c:set var="content" value="${fn:replace(dto.content, CRLF, '<br>')}" />
         		${content}
             </td> 
        </tr>
        <tr>
            <td colspan="4" align="center">
            <%
            //if (session.getAttribute("UserId") != null
               // && session.getAttribute("UserId").equals(dto.getId())) {
            %>
            <c:if test="${sessionScope.UserId } != null && ${sessionScope.UserId } eq 'musthave'">
                <button type="button" onclick="location.href='Edit.jsp?num=${ dto.num}'">수정하기</button>
                <button type="button" onclick="deletePost();">삭제하기</button> 
           </c:if>
            <%
           // }
            %>
                <button type="button" onclick="location.href='List.jsp';">
                    목록 보기
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>