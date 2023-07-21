<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="model2.mvcboard.MVCBoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<MVCBoardDTO> boardLists = (List<MVCBoardDTO>)request.getAttribute("boardLists");
Map<String, Object> map = (HashMap<String, Object>)request.getAttribute("map");
int pageNum = (int)map.get("pageNum");
//int totalPag풀스택e = (int)map.get("totalPage");
int totalCount = (int)map.get("totalCount");
int pageSize = (int)map.get("pageSize");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>

<script>
function deletePost(num) {
	alert(num);
    var confirmed = confirm("정말로 삭제하겠습니까?"); 
    if (confirmed) {
        var form = document.listFrm;       // 이름(name)이 "writeFrm"인 폼 선택
        form.method = "post";               // 전송 방식 
        form.action = "DeleteProcess.jsp";  // 전송 경로
     	// 글번호 추가
        let hNum = document.createElement('input');
        hNum.setAttribute('type','hidden');
        hNum.setAttribute('name','num');
        hNum.setAttribute('value', num);       
        form.appendChild(hNum);
        
        form.submit();                      // 폼값 전송
    }
}
</script>

</head>
<body>
    <jsp:include page="../common/Link.jsp" />  <!-- 공통 링크 -->

    <h2>목록 보기(List) 
    - 현제 페이지 <%=pageNum %> / <%//=totalPage %> (총게시물수 : <%=totalCount %>)</h2>
    <!-- 검색폼 --> 
    <form method="get">  
    <table border="1" width="90%">
    <tr>
        <td align="center">
            <select name="searchField"> 
                <option value="title">제목</option> 
                <option value="content">내용</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="검색하기" />
        </td>
    </tr>   
    </table>
    </form>
    <!-- 게시물 목록 테이블(표) --> 
    <table border="1" width="90%">
        <!-- 각 칼럼의 이름 --> 
        <tr>
            <th width="10%">번호</th>
            <th>제목</th>
            <th width="15%">작성자</th>
            <th width="10%">조회수</th>
            <th width="15%">작성일</th>
            <%
            if (session.getAttribute("UserId") != null
                && session.getAttribute("UserId").toString().equals("musthave")) {
            %>
            <th width="15%">수정</th>
            <th width="15%">삭제GET</th>
            <th width="15%">삭제POST</th>
            <%} %>
        </tr>
        <!-- 목록의 내용 --> 
<%
if (boardLists.isEmpty()) {
    // 게시물이 하나도 없을 때 
%>
        <tr>
            <td colspan="5" align="center">
                등록된 게시물이 없습니다^^*
            </td>
        </tr>
<%
}
else {
    // 게시물이 있을 때 
    int virtualNum = 0;  // 화면상에서의 게시물 번호
    int countNum = 0; 
    for (MVCBoardDTO dto : boardLists)
    {
        virtualNum = totalCount - (((pageNum-1) * pageSize)+ countNum++);  // 전체 게시물 수에서 시작해 1씩 감소
%>
        <tr align="center">
            <td><%= virtualNum %>(<%=dto.getIdx() %>)</td>  <!--게시물 번호-->
            <td align="left">  <!--제목(+ 하이퍼링크)-->
                <a href="View.jsp?num=<%= dto.getIdx() %>"><%= dto.getTitle() %></a> 
            </td>
            <td align="center"><%= dto.getName() %></td>          <!--작성자 아이디-->
            <td align="center"><%= dto.getVisitcount() %></td>  <!--조회수-->
            <td align="center"><%= dto.getPostdate() %></td>    <!--작성일-->
        	<%
            if (session.getAttribute("UserId") != null
                && session.getAttribute("UserId").toString().equals("musthave")) {
            %>
        	<td><a href="Edit.jsp?num=<%=dto.getIdx()%>">수정</a></td>
            <td><a href="DeleteProcess.jsp?num=<%=dto.getIdx()%>">삭제</a></td>            
            <td><button onclick="deletePost(<%=dto.getIdx() %>)">삭제</button></td> 
            <%} %>
            
        </tr>
<%
    }
}
%>
    </table>
    <!--목록 하단의 [글쓰기] 버튼-->
    <table border="1" width="90%">
        <tr align="right">
        	<td>
        	   <%=map.get("pagingImg").toString() %>  	
        	</td>
            <td><button type="button" onclick="location.href='Write.jsp';">글쓰기
                </button></td>
        </tr>
    </table>
    <form name="listFrm"></form>
</body>








</html>