<%@page import="common.DBConnPool"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ConnTest.jsp</title>
</head>
<body>
<h2>JDBC Con Test1</h2>
<%
	JDBConnect jdbc1 = new JDBConnect();
 	jdbc1.close();
%>
<h2>JDBC Con Test2</h2>
<%
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleUrl");
	String id = application.getInitParameter("OracleId");
	String pwd = application.getInitParameter("OraclePwd");
	
	JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
 	jdbc2.close();
%>
<h2>JDBC Con Test3</h2>
<%
		
	JDBConnect jdbc3 = new JDBConnect(application);
 	jdbc3.close();
%>
<h2>JDBC Con Test4</h2>
<%
		
	DBConnPool pool = new DBConnPool();
	pool.close();
%>
<!--  <%=driver %> <br>
<%=url %> <br>
<%=id %> <br>
<%=pwd %> <br>
-->
</body>
</html>