<%@page import="membership.CaDAO"%>
<%@page import="membership.MemberDAO"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../08Board/IsLoggedIn.jsp"%> <!--로그인 확인-->   
<%
//request, dto
int num = Integer.parseInt(request.getParameter("num"));
%>
<%=num %>
<%
// DAO : db insert
CaDAO dao = new CaDAO();
int iResult = dao.deletePost(num);

//성공 or 실패? 
if (iResult == 1) {
 JSFunction.alertLocation("삭제되었습니다.", "CAList.jsp", out);
} else {
 JSFunction.alertBack("삭제에 실패하였습니다.", out);
}

%>