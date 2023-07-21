<%@page import="membership.CaDAO"%>
<%@page import="membership.CaDTO"%>
<%@page import="membership.MemberDAO"%>
<%@page import="membership.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../08Board/IsLoggedIn.jsp"%>
<% 
//request
String id = request.getParameter("id");
String content = request.getParameter("content");
CaDTO dto = new CaDTO();
dto.setId(id);
dto.setContent(content);
%>
<%= id%> / <%= content%> /
<%
//DAO 
CaDAO dao = new CaDAO(application);
int rs = dao.insertWrite(dto);
%>
<script >
	alert(<%=rs%> + '건 입력 성공');
	location.href="CAList.jsp?";
</script>
