<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../08Board/IsLoggedIn.jsp" %><!-- 로그인 확인 -->
<%
String checkId = request.getParameter("id");
System.out.println(checkId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join2.jsp</title>
<style >
#false, #true{
	color:red;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
const getAJAX = function(id){
	const id = $('#id').val();
	if(id == ""){
		alert('ID 넣어주세요');
		$('#id').focus();
		return;
	}
    $.ajax({
        type:'GET', //POST, DELETE, PUT 으로 변경 가능.
        url:'IdCheck.jsp',
        data : {id},
        dataType :'json',
        success : function(resp) {
        	//alert(resp);
        	//alert(resp["status"]);
			if(resp["status"]){
				alert('중복된 ID입니다.');
			}else{
				alert('사용가능한 ID입니다.');
			};
        },
        error:function(request,status, error){
            console.log(request,status, error);
        }
    });//key:value를 바로 넣을 수 있게 함.
};
//$(document).ready()는 생략 가능
$(document).ready(function(){
	//$('#true').css('display','none'); hide와 같은 동작
	$('#true').hide();
	$('#false').hide();
	$('#submit').attr("disabled", true); 
	//or 직접 text란에 disabled ="disabled" 줄 수 있음 - 텍스트란을 보여는 주되 바꾸지는 못하게함
    $('#checkBtn').on('click',function () {
    	let id = $('#id').val()
        getAJAX(id);
    })
    
});
</script>
<script type="text/javascript">
function validateForm(form) {
	if(form.id.value =="") {
		alert("ID을 입력하세요.");
		form.id.focus();
		return false;
	}
	if(form.name.value ==""){
		alert("이름을 입력하세요.");
		form.name.focus();
		return false;
	}
	if(form.pw.value ==""){
		alert("PW을 입력하세요.");
		form.pw.focus();
		return false;
	}
	if(form.pwcheck.value ==""){
		alert("PW확인을 입력하세요.");
		form.pwcheck.focus();
		return false;
	}
	if(form.pwcheck.value != form.pw.value){
		alert("PW확인과 일치하지 않습니다..");
		form.pw.focus();
		return false;
	}
	if(form.email.value ==""){
		alert("Email을 입력하세요.");
		form.email.focus();
		return false;
	}
	if(form.tel.value ==""){
		alert("Tel을 입력하세요.");
		form.tel.focus();
		return false;
	}
}
</script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>- 회원 가입 -</h2>
<form action="./JoinProcess.jsp" name="writeFrm" method="post"
	onsubmit="return validateForm(this);">
	<table border="1" width="90%">
		<tr>
			<td>ID</td>
			<td>
				<input type="text" id="id" name="id" style="width:70%;">
				<input type="button" id="checkBtn" name="check" value="중복확인">
			</td>
			<td>이름</td>
			<td>
				<input type="text" name="name" style="width:90%;">
			</td>
		</tr>
		<tr>
			<td>PW</td>
			<td >
				<input type="text" name="pw" style="width:90%;">
			</td>
			<td>PW 확인</td>
			<td>
				<input type="text" name="pwckeck" style="width:90%;">
			</td>
		</tr>
		<tr>
			<td>Tel.</td>
			<td  >
				<input type="text" name="tel" style="width:90%;">
			</td>
			<td>Email</td>
			<td>
				<input type="text" name="email" style="width:90%;">
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<button type="submit">작성 완료</button>
				<button type="reset">다시 입력</button>
				<button type="button" onclick="#">
					목록 보기</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>