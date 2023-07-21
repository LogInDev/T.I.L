<%@page import="membership.MemberDAO"%>
<%@page import="membership.MemberDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
<%= id%> / <%= pw%> / <%=name%> / <%=email%> / <%=tel%>
<%
//DAO 
MemberDAO dao = new MemberDAO(application);
int rs = dao.insertWrite(dto);
//가입전 아이디 중복 체크


%>
<script >
	alert(<%=rs%> + '건 입력 성공');
	location.href="List.jsp";
</script>
