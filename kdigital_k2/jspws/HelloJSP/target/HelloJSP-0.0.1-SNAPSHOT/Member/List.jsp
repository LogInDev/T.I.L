<%@page import="utils.BoardPage"%>
<%@page import="membership.MemberDAO"%>
<%@page import="membership.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Map<String, Object> param = new HashMap<String, Object>();
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if(searchWord != null){
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}

MemberDAO dao = new MemberDAO(application);

int totalCount = dao.selectCount(param);
/*** 페이지 처리 start ***/
//전체 페이지 수 계산
int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
int totalPage = (int)Math.ceil((double)totalCount / pageSize); // 전체 페이지 수
//현재 페이지 확인
int pageNum = 1;  // 기본값
String pageTemp = request.getParameter("pageNum");
if (pageTemp != null && !pageTemp.equals("")){
pageNum = Integer.parseInt(pageTemp); // 요청받은 페이지로 수정
}
System.out.println(pageNum+"//"+pageTemp+"//"+blockPage+"//");
//목록에 출력할 게시물 범위 계산
int start = (pageNum - 1) * pageSize + 1;  // 첫 게시물 번호
int end = pageNum * pageSize; // 마지막 게시물 번호
param.put("start", start);
param.put("end", end);
/*** 페이지 처리 end ***/

List<MemberDTO> memberLists = dao.selectListPage(param);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List.jsp</title>
<script >
function deletePost(id) {
    var confirmed = confirm("정말로 삭제하겠습니까?"); 
    if (confirmed) {
        var form = document.writeFrm;       // 이름(name)이 "writeFrm"인 폼 선택
        form.method = "post";               // 전송 방식 
        form.action = "DeleteProcess.jsp";
        let hNum = document.createElement('input');// 전송 경로
        hNum.setAttribute('type', 'hidden');
        hNum.setAttribute('name', 'id');
        hNum.setAttribute('value', id);
        form.appendChild(hNum);
        form.submit();                      // 폼값 전송
    }
}
</script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>목록 보기(List)</h2>
 <!-- 검색폼 --> 
    <form method="get">  
    <table border="1" width="90%">
    <tr>
        <td align="center">
            <select name="searchField"> 
                <option value="id">ID</option> 
                <option value="이름">이름</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="검색하기" />
        </td>
    </tr>   
    </table>
    </form>
<!-- 게시물 목록 테이블(표) -->

<table border="1" width="90%">
	<!-- 각 컬럼의 이름 -->
	<tr>
		<th width="5%">NO.</th>
		<th width="10%">ID</th>
		<th >이름</th>
		<th >게시글 수</th>
		<th width="15%">Tel</th>
		<th width="10%">Email</th>
		<th >등록일자</th>
		<%
	if(session.getAttribute("UserId") != null &&session.getAttribute("UserId").toString().equals("musthave")){
%>
		<th width="10%">수정</th>
		<th width="10%">삭제</th>
<%} %>
	</tr>
	<!-- 목록의 내용 -->
<%
if(memberLists.isEmpty()){
//게시물이 하나도 없을 때
%>
	<tr>
		<td colspan="5" align="center">
			등록된 회원이 없습니다.
		</td>
	</tr>
<%
} else{
	//게시물이 있을 때
	int virtualNum = 0;//화면상에서의 게시물 번호
	int countNum =0;
	for(MemberDTO dto: memberLists){ 
		virtualNum = totalCount-(((pageNum-1) * pageSize)+ countNum++);//전체 게시물 수에서 시작해 1씩 감소
		
		int idCount = dao.selectTitle(dto.getId());
%>
	<tr align="center">
		<td><%=virtualNum %></td><!-- 게시물 번호 -->
		<td align="left"> <!-- 제목(+하이퍼링크) -->
			<a href="View.jsp?id=<%=dto.getId() %>"><%=dto.getId() %></a>
		</td>
		<td align="center"><%=dto.getName() %></td> <!-- 작성자 아이디 -->
		<td align="center"><%=idCount %></td> <!-- 작성자 아이디 -->
		<td align="center"><%=dto.getTel() %></td> <!-- 조회수 -->
		<td align="center"><%=dto.getEmail() %></td> <!-- 작성일 -->
		<td align="center"><%=dto.getRegidate() %></td> <!-- 작성일 -->
<%
	if(session.getAttribute("UserId") != null &&session.getAttribute("UserId").toString().equals("musthave")){
%>		
		<td > <button type="button" onclick="location.href='Edit.jsp?id=<%=dto.getId()%>'"> 수정</td>
		<td ><button type="button" onclick="deletePost(<%=dto.getId()%>)" />삭제 </td>
<%	} %>
	</tr>
<%
	}
}
dao.close();
%>
</table>

<!-- 목록 하단의 [글쓰기]버튼 -->
<table border="1" width="90%">
	<tr align="right">
		<td>
		<%=BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI()) %>	
		</td>
		<td> <button type="button" onclick="location.href='Join.jsp';">회원가입</button> </td>
	</tr>
</table>
 	<form name="writeFrm"></form>
</body>
</html>