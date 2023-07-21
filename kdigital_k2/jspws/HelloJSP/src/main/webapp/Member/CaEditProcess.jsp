<%@page import="membership.CaDTO"%>
<%@page import="membership.CaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../08Board/IsLoggedIn.jsp" %><!-- 로그인 확인 -->
<%
String id =request.getParameter("id");
String content = request.getParameter("content");

CaDAO dao = new CaDAO(application);

CaDTO dto = new CaDTO();
dto.setId(id);
dto.setContent(content);
int rs = dao.updateEdit(dto);
System.out.println("rs="+rs);

if(rs ==1){
	JSFunction.alertLocation("수정 완료!!", "CAList.jsp", out);
}
%>

