<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 Cookie[] cookies = request.getCookies();
 String userId = "";
 if (cookies != null) {
 	for (Cookie c : cookies) {
 		String cName = c.getName();
 		String cValue = c.getValue();
 		if (cName.equals("userId")) {
 			userId = cValue;
 		}
 	}
 }
 %>
 <%=userId %>
<%if(userId == ""){%>
<script >
<%
JSFunction.alertLocation("비정상적인 접근", "IdSaveMain2.jsp",out);
%>
//alert("비정상적인 접근");
//location.href="IdSaveMain2.jsp";
</script>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TopSecret.jsp</title>
</head>
<body>
굉장해 엄청나~!~!~!~!

</body>
</html>