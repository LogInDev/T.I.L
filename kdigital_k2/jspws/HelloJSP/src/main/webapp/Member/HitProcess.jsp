<%@page import="membership.CaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String num = request.getParameter("num");
CaDAO dao = new CaDAO();
int rs =0;
rs = dao.updateGoodCount(num);
System.out.println("rs="+rs);
if(rs!=0){
	response.sendRedirect("CAList.jsp");
}
%>