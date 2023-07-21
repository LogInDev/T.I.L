<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieMain.jsp</title>
</head>
<body>
<h2>1. 쿠키(Cookie) 설정</h2>
<%
Cookie cookie = new Cookie("myCookie", "쿠키맛나요");
cookie.setPath(request.getContextPath());
cookie.setMaxAge(3600);
response.addCookie(cookie);//쿠키 추가
%>
<!-- 서버에서 쿠키가 생성되기 때문에 세션별로 작성됨. 세션 내에서만 쿠키 값이 유지됨. -->
<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
<%
Cookie[] cookies = request.getCookies();//쿠키 가져오기
//처음 페이지열었을 때는 서버에 쿠키 심기 -> 두번째 열었을 때 부터 심어진 쿠키 값으로 쿠키 내용 가져올 수 있음
if(cookies !=null){
	for(Cookie c : cookies){
		String cookieName = c.getName();//쿠키 이름
		String cookieValue = c.getValue();//쿠키 값
		out.println(String.format("%s : %s<br>", cookieName, cookieValue));
	}
}
%>

<h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
<a href="CookieResult.jsp">다음 페이지에서 쿠키값 확인하기</a>
</body>
</html>