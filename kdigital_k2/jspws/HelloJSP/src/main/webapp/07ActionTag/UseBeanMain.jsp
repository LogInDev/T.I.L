<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Person person2 = new Person();
person2.setName("임꺽정2");
person2.setAge(42);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UseBeanMain.jsp</title>
</head>
<body>
<h2>useBean 액션 태그</h2>
<h3>자바빈즈 생성하기</h3>
<jsp:useBean id="person" class="common.Person" scope="request" />

<h3>setProperty 액션 태그로 자바빈즈 속성 지정하기</h3>
<jsp:setProperty name="person" property="name" value="임꺽정" />
<jsp:setProperty name="person" property="age" value="41" />

<h3>getProperty 액션 태그로 자바빈즈 속성 읽기</h3>
<ul>
	<li>이름 : <jsp:getProperty property="name" name="person"/></li>
	<li>나이 : <jsp:getProperty property="age" name="person"/></li>
	<li>이름 : <%=person2.getName() %></li>
	<li>나이 : <%=person2.getAge() %></li>
</ul>
</body>
</html>