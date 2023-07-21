<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestWebInfo.jsp</title>
</head>
<body>
<h2>C/S 환경정보 읽기</h2>
<ul>
<!-- request.getMethod() : 사용자가 요청을 GET/POST중 어떤걸로 했는지 알 수 있음 -->
<li>GET/POST : <%=request.getMethod() %></li>
<!-- 전체 URL -->
<li>URL : <%=request.getRequestURL() %></li>
<li>URI : <%=request.getRequestURI() %></li>
<!-- 무전기 버전 -->
<li>PROTOCOL : <%=request.getProtocol() %></li>
<li>SeverName : <%=request.getServerName() %></li>
<!-- 8080포트는 보안이 없는 http포트번호임. 보안상 https를 사용해야함. -->
<li>SeverPort : <%=request.getServerPort() %></li>
<li>Client IP : <%=request.getRemoteAddr() %></li>
<li>QueryString : <%=request.getQueryString() %></li>
<li>eng : <%=request.getParameter("eng") %></li>
<li>han : <%=request.getParameter("han") %></li>
</ul>
<%
	String han = request.getParameter("han");

	out.print("안녕<br>");
	
	
%>
</body>
</html>