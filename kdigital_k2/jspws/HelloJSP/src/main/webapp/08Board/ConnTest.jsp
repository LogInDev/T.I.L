<%@page import="model1.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDAO dao = new BoardDAO(application);
	int totalCount = dao.selectCount();
	List<BoardDTO> bbs = dao.selectList();
%>
<%=totalCount %> / <br>
 <%for(BoardDTO dto : bbs){%>
	 <%=dto%> <br>
 <%} %>