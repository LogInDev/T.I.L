<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UseBeanAction.jsp</title>
</head>
<body>
<h3>액션 태그 폼값 한 번에 받기</h3>
<jsp:useBean id="person" class="common.Person" />
<jsp:setProperty property="*" name="person"/>
<ul>
	<li>이름 : <jsp:getProperty property="name" name="person"/></li>
	<li>나이 : <jsp:getProperty property="age" name="person"/></li>
</ul>
<jsp:useBean id="dto" class="membership.MemberDTO" />
<jsp:setProperty property="*" name="dto"/>
<ul>
	<li>ID : <jsp:getProperty property="id" name="dto"/></li>
	<li>PW : <jsp:getProperty property="pass" name="dto"/></li>
	<li>이름 : <jsp:getProperty property="name" name="dto"/></li>
	<li>생성일자 : <jsp:getProperty property="regidate" name="dto"/></li>
</ul>
</body>
</html>