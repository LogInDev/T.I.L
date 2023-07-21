<%@page import="utils.BoardPage"%>
<%@page import="membership.CaDTO"%>
<%@page import="java.util.List"%>
<%@page import="membership.CaDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../08Board/IsLoggedIn.jsp"%>
<%
String id = session.getAttribute("UserId").toString();
Map<String, Object> param = new HashMap<String, Object>();
CaDAO dao = new CaDAO();
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
CaDTO dtoEdit = new CaDTO();
dtoEdit = dao.selectView(id);
List<CaDTO> caLists = dao.selectListPage(param);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석 체크 페이지</title>
<script type="text/javascript">
function validateForm(form) {
	if(form.content.value ==""){
		alert("내용을 입력하세요.");
		form.content.focus();
		return false;
	}
}
</script>
</head>
<body>
	<jsp:include page="../common/Link.jsp" />
	<h1>오늘의 출석 체크</h1>
	<!-- 출석 체크 작성 -->
	<form action="./CAProcess.jsp" name="writeFrm" method="post"
		onsubmit="return validateForm(this);">
		<input type="hidden" name="id" value="<%=id%>">
		<table width="85%" align="left">
			<tr>
				<td><textarea  rows="10" cols="150" name="content"></textarea></td>
			</tr>
			<tr align="right">
				<td><button type="submit" disabled>출석</button></td>
			</tr>

		</table>
	</form>
	<!-- 출석 체크 보여주기-->
	<%
		if(caLists.isEmpty()){
			//게시물이 없을 때 
	%>
				일등 출첵러 가보자구!!
	<% 		
		} else{
			//게시물이 있을 때
			for(CaDTO dto : caLists){
				if(dtoEdit !=null &&
						dtoEdit.getId().toString().equals(dto.getId().toString())){%>
		<form action="./CaEditProcess.jsp" name="writeFrm" method="post"
		onsubmit="return validateForm(this);">
		<input type="hidden" name="id" value="<%=dtoEdit.getId()%>">
					<table width="85%">
					<tr align="left">
						<th ><%=dto.getId() %></th>
						<%if(session.getAttribute("UserId") != null
				                && session.getAttribute("UserId").equals(dto.getId())) {%>
						<%} %>
					</tr>
					<tr>
						<td colspan="2">
							<textarea  rows="10" cols="150" name="content"><%=dtoEdit.getContent() %></textarea>
						</td>
					</tr>
					<tr>
						<td align="left">
							<input type="submit"  value="수정 완료" />
						</td>
						<td align="right"><%=dto.getPostdate() %></td>
					</tr>
				</table>
				</form>
				<br>
				<% }else{
	%>
	<table width="85%">
		<tr align="left">
			<th ><%=dto.getId() %></th>
			<%if(session.getAttribute("UserId") != null
	                && session.getAttribute("UserId").equals(dto.getId())) {%>
			<td align="right">
				<button type="button" onclick="location.href='CaEdit.jsp?id=<%=dto.getId()%>'" />수정
				<button type="button"  />삭제
			</td>
			<%} %>
		</tr>
		<tr>
			<td colspan="2"><%=dto.getContent() %></td>
		</tr>
		<tr>
			<td ><input type="button" value="Hit" 
			onclick="location.href='HitProcess.jsp?id=<%=dto.getId()%>'"> <%=dto.getGoodcount() %></td>
			<td align="right"><%=dto.getPostdate() %></td>
		</tr>
	</table>
	<br>
	<%
			
				}
			}
		}
	%>
<%=BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI()) %>
</body>
</html>
