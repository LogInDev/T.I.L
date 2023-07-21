<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestHeader.jsp</title>
</head>
<body>
<%
Enumeration<String> headers = request.getHeaderNames();
while(headers.hasMoreElements()){
	String headerName = headers.nextElement();
	String headerValue = request.getHeader(headerName);
%>
<%=headerName %>: <%=headerValue %> <br>
<%} %>

<%if(request.getHeader("referer")==null){ %>
<script type="text/javascript">
	alert('비정상적인 접근입니다.');
	location.href="/";
</script>
<%} %>
</body>
</html>