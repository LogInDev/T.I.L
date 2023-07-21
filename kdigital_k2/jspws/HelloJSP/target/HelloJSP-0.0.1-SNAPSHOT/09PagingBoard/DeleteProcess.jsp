<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%> <!--로그인 확인-->   
<%
//request, dto
int num = Integer.parseInt(request.getParameter("num"));
%>

<%
// DAO : db insert
BoardDAO dao = new BoardDAO();
int iResult = dao.deletePost(num);

//성공 or 실패? 
if (iResult == 1) {
 response.sendRedirect("List.jsp");
} else {
 JSFunction.alertBack("글삭제에 실패하였습니다.", out);
}

%>