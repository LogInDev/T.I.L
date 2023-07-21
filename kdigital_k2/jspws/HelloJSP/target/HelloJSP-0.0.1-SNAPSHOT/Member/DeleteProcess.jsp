<%@page import="membership.MemberDAO"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../08Board/IsLoggedIn.jsp"%> <!--로그인 확인-->   
<%
//request, dto
String id = request.getParameter("id");
%>

<%
// DAO : db insert
MemberDAO dao = new MemberDAO();
int iResult = dao.deletePost(id);

//성공 or 실패? 
if (iResult == 1) {
 JSFunction.alertLocation(id + "가 삭제되었습니다.", "List.jsp", out);
} else {
 JSFunction.alertBack("회원 삭제에 실패하였습니다.", out);
}

%>