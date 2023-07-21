<%@page import="utils.JSFunction"%>
<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
MemberDAO dao = new MemberDAO(application);
MemberDTO dto = new MemberDTO();
dto = dao.selectView(id);
dao.close();
//out.print(id);
//out.print(dto.getId());
//request.getRequestDispatcher("Join.jsp?id="+dto.getId()).forward(request, response);
String json = "{\"status\": false}";
if(dto.getId() != null){
	json = "{\"status\": true}";
}
%>
<%=json %>


