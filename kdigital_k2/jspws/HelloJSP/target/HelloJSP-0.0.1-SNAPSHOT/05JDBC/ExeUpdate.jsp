<%@page import="common.JDBConnect"%>
<%@page import="oracle.sql.converter.JdbcCharacterConverters"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeUpdate.jsp</title>
</head>
<body>
<h2>회원 추가 해보기</h2>
<%
request.setCharacterEncoding("utf-8");//한글처리
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name=request.getParameter("name");
%>
<!-- 꼭 찍어보기!!!--> <%=id %>/<%=pass %>/<%=name %><br>
<%
JDBConnect jdbc = new JDBConnect(); 
//String sql = "insert into member values(?, ?, ?, sysdate)";
String sql = "insert into member (id, pass, name) values(?, ?, ?)";
//sysdate는 default값
PreparedStatement pstmt = jdbc.con.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
int inResult = pstmt.executeUpdate();
out.print(inResult + "행이 입력되었습니다.<br>");

jdbc.close();
//response.sendRedirect("ExeQuery.jsp");
%>
<script type="text/javascript">
alert('회원가입 완료!!');
location.href='ExeQuery.jsp';
</script>
<a href="ExeQuery.jsp">Member List</a>
</body>
</html>