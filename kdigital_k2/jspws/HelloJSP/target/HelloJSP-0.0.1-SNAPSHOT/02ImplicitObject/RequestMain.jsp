<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestMain.jsp</title>
<!-- type에 자바 명시하는 건 생략가능(이제 javascript만 사용가능하기 때문) -->
<script>
window.onload = function(){
	const joinBtn = document.querySelector('#btn');
	const rForm = document.querySelector('#rForm');
    joinBtn.onclick = function () {
        rForm.submit();
    };
}
</script>
</head>
<body>
<h2>1.C/S 환경정보</h2>
<a href="./RequestWebInfo.jsp?eng=Hello&han=hi">GET</a>
<!-- 위에와 같은 의미 (get:정보가 노출되고 , 많이 보낼 수 없다.)-->
<form action="RequestWebInfo.jsp" method="get">
	eng : <input type="text" name="eng" value="Hello"><br>
	han : <input type="text" name="han" value="Hi"><br>
	<button type="submit">submit</button>
</form>
<hr>
<form action="RequestWebInfo.jsp" method="post">
	eng : <input type="text" name="eng" value="pHello"><br>
	han : <input type="text" name="han" value="pHi"><br>
	<button type="submit">submit</button>
</form>
<hr>
<form id="rForm" action="RequestParameter.jsp" method="post">
ID: <input type="text" name="id" id="id" class="id"> <br>
성별: <input type="radio" name="sex" value="man" checked="checked">남
 <input type="radio" name="sex" value="woman">여 <br>
관심사항: 
<input type="checkbox" name="favo" value="eco">경제
<input type="checkbox" name="favo" value="pol" checked="checked">정치
<input type="checkbox" name="favo" value="ent">연예 <br>
자기소개:
<textarea name="intro" rows="4" cols="30"></textarea>

<button type="button" id="btn">submit</button>
</form>
<hr>
<h2>HTTP 요청 헤더 정보 읽기</h2>
<a href="RequestHeader.jsp">RequestHeader</a>
</body>
</html>