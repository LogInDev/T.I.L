<%@page import="model2.mvcboard.MVCBoardDAO"%>
<%@page import="utils.BoardPage"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="model2.mvcboard.MVCBoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List.jsp</title>
</head>
<body>
	<jsp:include page="../common/Link.jsp" />
	<h2>목록 보기(List) - 현재 페이지${map.pageNum}/ (총게시물수 : ${map.totalCount })</h2>
	<!-- 검색폼 -->
	<form method="get">
		<table border="1" width="90%">
			<tr>
				<td align="center"><select name="searchField">
						<option value="title">제목</option>
						<option value="content">내용</option>
				</select> <input type="text" name="searchWord" /> <input type="submit"
					value="검색하기" /></td>
			</tr>
		</table>
	</form>
	<!-- 게시물 목록 테이블(표) -->
	<table border="1" width="90%">
		<!-- 각 컬럼의 이름 -->
		<tr>
			<th width="10%">번호</th>
			<th>제목</th>
			<th width="15%">작성자</th>
			<th width="10%">조회수</th>
			<th width="15%">작성일</th>
			<th width="8%">첨부</th>
		</tr>
		<!-- 목록의 내용 -->
		<c:choose>
			<c:when test="${empty boardLists } ">
				<tr>
					<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:set var="virtualNum" value="0" />
				<c:set var="countNum" value="0" />
				<c:forEach items="${ boardLists}" var="row" varStatus="loop">
	<tr align="center">
						<td>${map.totalCount - (((map.pageNum-1)*map.pageSize) + loop.index)}</td>
						<!-- 게시물 번호 -->
						<td align="left">
							<!-- 제목(+하이퍼링크) --> <a href="/mvcboard/view.do?idx=${row.idx }">${row.title}</a>
						</td>
						<td align="center">${row.name }</td>
						<!-- 작성자 아이디 -->
						<td align="center">${row.visitcount }</td>
						<!-- 조회수 -->
						<td align="center">${row.postdate }</td>
						<!-- 작성일 -->
						<td align="center">
						<c:if test="${not empty row.ofile }">
							<a href="/mvcboard/download.do?ofile=${row.ofile }&sfile=${row.sfile}&idx=${row.idx}">[Down]</a>
						<!-- 작성일 -->
						</c:if>
						</td>
					</tr>s
				</c:forEach>

			</c:otherwise>
		</c:choose>
	</table>

	<!-- 목록 하단의 [글쓰기]버튼 -->
	<table border="1" width="90%">
		<tr align="right">
			<td>${map.pagingImg }</td>
			<td>
				<button type="button" onclick="location.href='/mvcboard/write.do';">
				글쓰기</button>
			</td>
		</tr>
	</table>
	<form name="writeFrm"></form>
</body>
</html>