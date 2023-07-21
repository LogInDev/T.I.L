<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//PageInclude.jsp
%>
<h1>PageInclude Scope</h1>
<ul>
<li><%=request.getAttribute("pageInteger") %></li>
<li><%=request.getAttribute("pageString") %></li>
<li><%=request.getAttribute("pagePerson") %></li>
</ul>