<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//JdbcConn.jsp
String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "musthave";
String pwd = "1234";
Connection conn = null;

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url, id, pwd);
	out.print("conn 성공");
}catch(Exception e){
	out.print(e.getMessage());
}finally{
	if(conn != null) conn.close();
}
%>