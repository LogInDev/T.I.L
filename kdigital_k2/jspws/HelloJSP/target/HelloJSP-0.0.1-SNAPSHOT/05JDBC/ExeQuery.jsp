<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="membership.MemberDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<%@include file="menu.jsp"%>
<h2>회원 목록보기 해보기</h2>
<%
request.setCharacterEncoding("utf-8");
ResultSet rs = null;
JDBConnect jdbc = new JDBConnect();
String sql = "select id, pass, name, regidate from member ";
//Statement stmt = jdbc.con.createStatement();
//rs = stmt.executeQuery(sql);
//sql구문 넣는 위치가 다름(Statement는 '?'사용 안할때 사용)
PreparedStatement pstmt = jdbc.con.prepareStatement(sql);
rs = pstmt.executeQuery();
List<MemberDTO> members = new ArrayList<MemberDTO>();
while(rs.next()){
	String id = rs.getString("id");
	String pw = rs.getString("pass");
	String name = rs.getString("name");
	String regidate = rs.getString("regidate");
	//MemberVO 생성가능
	MemberDTO dto = new MemberDTO(id, pw, name, regidate); 
				members.add(dto);
	System.out.printf("%s, %s, %s, %s", id, pw, name, regidate + "<br>");
}
jdbc.close();
%>
</body>
</html>