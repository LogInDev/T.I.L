<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForEachDTO.jsp</title>
</head>
<body>
<h2>Board List</h2>
<%
	BoardDAO dao = new BoardDAO();
	Map<String, Object> map = new HashMap<>();
	List<BoardDTO> lists = dao.selectList();
	
%>
<c:set var="lists" value="<%= lists%>" />
<ul>
<c:forEach items="${lists}" var="dto">
	<li>${dto.num} || ${dto.title} || ${dto.content}
|| ${dto.id} || ${dto.postdate} || ${dto.visitcount}</li>
</c:forEach>
</ul>

<c:import url="https://goldenrabbit.co.kr/" />

</body>
</html>