<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int pageSize = 10;
int blockPage = 10;
int pageNum = 1; //바꿔가면서 테스트
if(request.getParameter("pageNum") != null){
	pageNum = Integer.parseInt(request.getParameter("pageNum"));
}
int totalPage = 55;// 총 게시물 /10
int pageTemp = ((pageNum-1)/blockPage)*blockPage +1;
int blockCount = 1;

if(pageTemp !=1){%>
<a href="PagingTest.jsp?pageNum=1">[|First|]</a>
<a href="PagingTest.jsp?pageNum=<%=pageTemp-1 %>">[|Prev|]</a>
<%} %>
<%while(blockCount <= blockPage && pageTemp<=totalPage){ 
	if(pageTemp == pageNum){
%>
[<%=pageTemp%>]
<%}else{ %>
<a href="PagingTest.jsp?pageNum=<%=pageTemp%>">[<%=pageTemp%>]</a>
<%}
pageTemp++;
blockCount++;
} 
if(pageTemp <= totalPage){%>
<a href="PagingTest.jsp?pageNum=<%=pageTemp %>">[|Next|]</a>
<a href="PagingTest.jsp?pageNum=<%=totalPage%>">[|End|]</a>
<%} %>

