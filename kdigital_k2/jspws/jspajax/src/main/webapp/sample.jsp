<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.mvcboard.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.mvcboard.mybatis.SqlSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sample.jsp</title>
</head>
<body>
<%
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
%>
<h1>boardList - BoardVO</h1>
<%
//BoardDAO dao = new BoardDAO();
//List<BoardVO> boardList = dao.selectList();
//처음 넣어야하는건 namespace
//전체여서 selectList로 부름
List<BoardVO> boardList = sqlSession.selectList("sample.getBoardListVO");
%>
<%for(BoardVO vo : boardList){ %>
<%=vo %><br>
<%} %>

<h1>boardList - HashMap</h1>
<%
//BoardDAO dao = new BoardDAO();
//List<BoardVO> boardList = dao.selectList();
//처음 넣어야하는건 namespace
List<HashMap> boardListMap = sqlSession.selectList("sample.getBoardListMap");
%>
<%for(HashMap vo : boardListMap){ %>
<%=vo %><br>
<%} %>

<h1>board - BoarVO</h1>
<%
//'selectOne(select의 id값, parameter값)' : 한개만 가져오는것
BoardVO vo = sqlSession.selectOne("sample.getBoardVO", 1);
BoardVO vo2 = sqlSession.selectOne("sample.getBoardVO", 2);
%>
<%=vo %><br>
<%=vo2 %><br>

<h1>board - HashMap</h1>
<%
//'selectOne(select의 id값, parameter값)' : 한개만 가져오는것
HashMap voMap = sqlSession.selectOne("sample.getBoardMap", 2);
%>
<%=voMap %><br>

<h1>boardSearch - BoardVO</h1>
<%
//parameter로 들어갈 자리가 하나여서 특정하지 않아도 알아서 넣어줌
List<BoardVO> boardSearch = sqlSession.selectList("sample.getBoardSearch","1");
%>
<%for(BoardVO vos : boardSearch){ %>
<%=vos %><br>
<%} %>

<h1>boardSearch - HashMap</h1>
<%
Map<String, String> map = new HashMap();
map.put("title2", "1");
map.put("writer2", "1");
List<BoardVO> boardSearchMap = sqlSession.selectList("sample.getBoardSearchMap", map);
%>
<%for(BoardVO vos : boardSearchMap){ %>
<%=vos %><br>
<%} %>
</body>
</html>