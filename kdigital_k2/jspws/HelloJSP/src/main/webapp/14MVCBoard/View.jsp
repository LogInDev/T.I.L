<%@page import="javax.sql.DataSource"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View.jsp</title>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>비회원제 게시판 - 상세 보기(View)</h2>
    <table border="1" width="90%">
    	<colgroup>
    		<col width = "15%" /> <col width="35%" />
    		<col width = "15%" /> <col width="*" />
    	</colgroup>
    	
    	<!-- 게시글 정보 -->
        <tr>
            <td>번호</td><td>${dto.idx }</td>
            <td>작성자</td><td>${dto.name }</td>
        </tr>
        <tr>
            <td>작성일</td><td>${dto.postdate }</td>
            <td>조회수</td><td>${dto.visitcount }</td>
        </tr>
        <tr>
            <td>제목</td>
            <td colspan="3">${dto.title }</td>
        </tr>
        <tr>
            <td>내용</td>
            <td colspan="3" height="100">${dto.content }</td> 
        </tr>
        
        <!-- 첨부파일 -->
        <tr>
        	<td>첨부파일</td>
            <td >
            	<c:if test="${not empty dto.ofile }">
            	${dto.ofile }
            	<a href="/mvcboard/download.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }">
            	[다운로드]</a>
                </c:if>
            </td>
            <td>다운로드수</td>
            <td>${dto.downcount }</td>
        </tr>
            
         <!-- 하단 메뉴(버튼) -->
         <tr>
         	<td colspan="4" align="center">
                <button type="button" onclick="location.href='../mvcboard/pass.do?mode=edit&idx=${ dto.idx }';">
                수정하기</button> 
                <button type="button" onclick="location.href='../mvcboard/pass.do?mode=delete&idx=${ dto.idx }';">
                삭제하기</button> 
                <button type="button" onclick="location.href='../mvcboard/list.do';">
                목록 바로가기</button> 
         </tr>
    </table>
</body>
</html>