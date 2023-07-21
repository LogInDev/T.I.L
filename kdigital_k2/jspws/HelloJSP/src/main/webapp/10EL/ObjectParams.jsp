<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@page import="membership.CaDTO"%>
<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어(EL) - 객체 매개변수</title>
</head>
<body>
	<%
	request.setAttribute("personObj", new Person("홍길동", 33));
	request.setAttribute("caObj", new CaDTO("3", "soo", "dkddkdk"));
	request.setAttribute("stringObj", "나는 문자열");
	request.setAttribute("integerObj", new Integer(99));
	MemberDTO dto = new MemberDTO("sss", "12454");
	MemberDAO dao = new MemberDAO();
	dao.selectView(dto.getId());
	request.setAttribute("mdto", dto);
	%>
	<jsp:forward page="ObjectResult.jsp">
		<jsp:param value="10" name="firstNum"/>
		<jsp:param value="20" name="secondNum"/>
	</jsp:forward>
</body>
</html>