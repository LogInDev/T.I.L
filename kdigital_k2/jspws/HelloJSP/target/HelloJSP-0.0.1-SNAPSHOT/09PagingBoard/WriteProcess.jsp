<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./IsLoggedIn.jsp"%>
<% 
//request
String title = request.getParameter("title");
String content = request.getParameter("content");
String id =(String)session.getAttribute("UserId");
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId(id);
%>
<%= title%> / <%= content%> / <%=id%>
<%
//DAO 
BoardDAO dao = new BoardDAO(application);
int rs = dao.insertWrite(dto);
%>
<script >
	alert(<%=rs%> + '건 입력 성공');
	location.href="List.jsp";
</script>
