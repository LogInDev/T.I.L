<%@page import="membership.MemberDAO"%>
<%@page import="membership.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../08Board/IsLoggedIn.jsp"%>
<% 
//request
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String tel = request.getParameter("tel");
MemberDTO dto = new MemberDTO();
dto.setId(id);
dto.setPass(pw);
dto.setName(name);
dto.setEmail(email);
dto.setTel(tel);
%>
<%= id%> / <%= pw%> / <%=name%> / <%=email%> <%=tel%>
<%
//DAO 
MemberDAO dao = new MemberDAO(application);
int rs = dao.updateEdit(dto);
%>
<script >
	alert(<%=rs%> + '건 입력 성공');
	location.href="View.jsp?id=<%=id%>";
</script>
