<%@page import="com.fokefoke.dto.DetailDTO"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String contextPath = request.getContextPath();
String memberId = (String) session.getAttribute("memberId");
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Male-Fashion | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=contextPath%>/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="<%=contextPath%>/resources/css/style.css"
	type="text/css">

<style type="text/css">
.container2 {
	display: flex;
	min-width: 500px;
}

.container2+.container2 {
	margin-top: 13px;
}

.image {
	display: flex;
	align-items: center;
	flex-basis: 30%;
	background-color: #008000db;
	border-radius: 50px 0 0 0;
	padding: 0 10px;
}

.image img {
	margin-right: 10px;
}

.box {
	display: flex;
	flex-direction: row;
	align-items: center;
	width: 70%;
	height: 140px;
	border: 1px solid #00000026;
	padding: 0 15px;
	order: 1;
}

.box button {
	padding: 5px 35px;
	border: none;
	margin-right: 11px;
}

.bgLayer {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 1;
}

.whole {
	width: 500px;
	height: 370px;
	background:#469543;
	top: 0;
	bottom: 10px;
	margin: auto;
	left: 0;
	right: 0;
	border-radius: 30px;
	position: fixed;
}
.modal {
	width: 900px;
	height: 700px;
	top: 0;
	bottom: 10px;
	left: 0;
	right: 0;
	display: none;
	z-index: 2;
}

.modal_2 {
	width: 900px;
	height: 700px;
	position: fixed;
	top: 0;
	bottom: 10px;
	left: 0;
	right: 0;
	display: none;
	z-index: 2;
}
.whole_2 {
	background:#469543;
	top: 0;
	bottom: 10px;
	margin: auto;
	left: 0;
	right: 0;
	border-radius: 30px;
	position: fixed;
}

.modal_3 {
	position: fixed;
	background: #469543;
	position: fixed;
	top: 0;
	bottom: 10px;
	left: 0;
	right: 0;
	margin: auto;
	display: none;
	border-radius: 30px;
	z-index: 2;
}

.modal_4 {
	position: fixed;
	background: #469543;
	position: fixed;
	top: 0;
	bottom: 10px;
	left: 0;
	right: 0;
	margin: auto;
	display: none;
	border-radius: 30px;
	z-index: 2;
}

.modal_5 {
	width: 500px;
	height: 705px;
	background: #469543;
	position: fixed;
	top: 0;
	bottom: 10px;
	left: 0;
	right: 0;
	margin: auto;
	display: none;
	border-radius: 30px;
	z-index: 2;
}

.modal_6 {
	width: 500px;
	height: 672px;
	background: #469543;
	position: fixed;
	top: 0;
	bottom: 10px;
	left: 0;
	right: 0;
	margin: auto;
	display: none;
	border-radius: 30px;
	z-index: 2;
}

.modal_top {
	margin-top: 15px;
	margin-left: 15px;
	height: 70px;
	width: 470px;
	background: #fff;
	border-radius: 20px 20px 7px 7px;
}
.modal_middle {
	margin-top: 15px;
	margin-left: 15px;
	height: 100px;
	width: 470px;
	background: #fff;
}

.modal_content {
	margin-top: -10px;
	margin-left: 15px;
	background: #fff;
}

.modal_select {
	margin-left: 18px;
	background: #b7b7b733;
}

.circle {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#chk:checked+.circle {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#chk {
	position: absolute;
	left: -999em;
}

.circles {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#chks:checked+.circles {
	background-color: #f06923;
	border-color:#f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#chks {
	position: absolute;
	left: -999em;
}
.circleA {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#aab:checked+.circleA {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}
#aab {
	position: absolute;
	left: -999em;
}

.circleB {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#abb:checked+.circleB {
	background-color: #f06923;
	border-color:#f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#abb {
	position: absolute;
	left: -999em;
}

.circle1 {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#main1:checked+.circle1 {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#main1 {
	position: absolute;
	left: -999em;
}

.circle2 {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#main2:checked+.circle2 {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#main2 {
	position: absolute;
	left: -999em;
}

.circle3 {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#main3:checked+.circle3 {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#main3 {
	position: absolute;
	left: -999em;
}

.circle4 {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#main4:checked+.circle4 {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#main4 {
	position: absolute;
	left: -999em;
}
.circleC {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#ccd:checked+.circleC {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}
#ccd {
	position: absolute;
	left: -999em;
}

.circleD {
	display: inline-block; /* 영역적용가능해짐 */
	width: 20px;
	height: 20px;
	border: 2px solid #b7b7b7;
	box-sizing: border-box;
	border-radius: 10px; /* 모서리둥글게 처리 */
	position: relative;
	top: 4px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-size: 70%;
	background-repeat: no-repeat;
	background-position: center;
}

#cdd:checked+.circleD {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#cdd {
	position: absolute;
	left: -999em;
}
.toppingImg {
	display: inline-block; /* 영역적용가능해짐 */
	width: 145px;
	height: 145px;
	border: 1px solid #b7b7b7;
	box-sizing: border-box;
	position: relative;
	top: 4px;
	left: 10px;
	bottom: 10px;
	cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
	background-repeat: no-repeat;
	background-position: center;
	border-radius: 3px;
}

.toppingImg:hover {
	box-shadow: 0 0 9px #f06923;
	border: 2px solid #f06923;
	outline: none;
}

.toppingchk:checked+.toppingImg {
	border: 5px solid #b7b7b7;
	border-color: #f06923;
	border-radius: 0 25px 0 0;
	box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.5);
}

.toppingchk {
	position: absolute;
	left: -999em;
}

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

.radio1 {
	position: absolute;
	left: -999em; /* 기본적으로 라디오 버튼 숨김 */
}

.radio2 {
	position: absolute;
	left: -999em; /* 기본적으로 라디오 버튼 숨김 */
}

.label1 {
	display: inline-block;
	cursor: pointer;
	background-color: white;
	color: black;
	padding: 10px;
	transition: background-color 0.6s ease;
}

.label2 {
	display: inline-block;
	cursor: pointer;
	background-color: white;
	color: black;
	padding: 10px;
	transition: background-color 0.6s ease;
}

/* 선택되었을 때 스타일 */
.radio1:checked+.label1 {
	background-color: #f06923;
	color: white;
	transition: background-color 0.6s ease;
}

.radio2:checked+.label2 {
	background-color: #f06923;
	color: white;
	transition: background-color 0.6s ease;
}

td {
	transition: background-color 0.6s ease;
}
.productMenu{
 display:inline-block; padding-bottom: 12px; margin-right: 55px;
 }
 
 .productStyle{
 font-size: 20px; color: #b7b7b7; font-weight: 700; font-family: 'Noto Sans KR', sans-serif;
 }
 
 .productStyle:hover{
 font-size: 20px; color: #469543; font-weight: 700; font-family: 'Noto Sans KR', sans-serif;
 }
</style>
<script type="text/javascript" >
function update(){
	var queryString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/update',
	      data : queryString,
	      dataType: 'json',
	      success: function(data){
	    	  <c:if test="${not empty data}">
	    	   <c:set var="dto" value="${data}" />
	    	  </c:if>
	    	  console.log(data);
	    	 let text="";
	    	 if (data.base != null) {
	             text = data.base;
	             $('#updateBase').html(text);
	         }
	         if (data.atopping != null) {
	             text = ' , ' + data.atopping;
	             if (data.btopping != null) {
	 	         	text += ' , ' + data.btopping;
	 	         	if (data.ctopping != null) {
	 		         	text += ' , ' + data.ctopping;
	 		         	if (data.dtopping != null) {
	 			         	text += ' , ' + data.dtopping;
	 			         }
	 		         }
	 	         }
	             $('#updateAtopping').html(text);
	         }
	         if (data.asource != null) {
	             text = ' , ' + data.asource;
	             if (data.bsource != null) {
	 	         	text += ' , ' + data.bsource;
	 	         }
	             $('#updateAsource').html(text);
	         }
	         if (data.aextratopping != null) {
	             text = '[추가 토핑] ' + data.aextratopping + '<br>';
	             if(data.bextratopping != null){
		        	 text = '[추가 토핑] ' + data.aextratopping+' , '+data.bextratopping+'<br>';
		        }
	             $('#updateAextratopping').html(text);
	         }else {
	        	 text="";
	        	 $('#updateAextratopping').html(text);
	         }
	        if(data.extramain != null){
	        	 text = '[추가 메인] '+data.extramain;
	        	 $('#updateExtramain').html(text);
	        }else if(data.extramain == null){
	        	text="";
	        	 $('#updateExtramain').html(text);
	        }
	        if(data.setbeverage != null){
	        	 text = '[세트 + 2,500] ' + data.setside + ' , ' + data.setbeverage;
	        	 $('#updateSet').html(text);
	        }else {
	        	 text="";
	        	 $('#updateSet').html(text);
	         }
	        text='<input type="hidden" id="realPrice" value="' + data.price + '">';
	        $('#realreal').html(text);
	        let total = $('#totalSum');
	        total.val(data.price);
	        let count = $('#count');
	        into();
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
	
var preBase = null;
<!-- 옵션 선택 변경시  -->
function baseChk(){
	var toppingString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/toppingChk',
	      data : toppingString,
	      dataType: 'json',
	      success: function(data){
	    	  console.log(data.base);
	    	  preBase =null;
	    	  preBase = data.base;
	    	  console.log(preBase);
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
function baseRechk(){
	  console.log("${dto.base}");
	  console.log(preBase);
	  console.log(preBase !== null);
	  if(preBase !== null){
	    $("input:radio[name='base']:radio[value='"+ preBase+"']").prop("checked",true);
	  } else {
	    $("input:radio[name='base']:radio[value='${dto.base}']").prop("checked",true);
	  }
	}

var preTopping = [];
<!-- 옵션 선택 변경시  -->
function toppingChk(){
	var toppingString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/toppingChk',
	      data : toppingString,
	      dataType: 'json',
	      success: function(data){
	    	  console.log(data);
	    	  preTopping =[];
	    	  preTopping.push(data.atopping);
	    	  if(data.btopping !=null) preTopping.push(data.btopping);
	    	  if(data.ctopping !=null) preTopping.push(data.ctopping);
	    	  if(data.dtopping !=null) preTopping.push(data.dtopping);
	    	  console.log(preTopping);
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
function toppingRechk(){
		$('input[name="toppingchk"]').each(function() {
		    $(this).prop('checked', false);
		});
		if(preTopping.length !== 0){
			$("input[name='toppingchk'][value='" + preTopping[0] + "']").prop('checked', true);
			$("input[name='toppingchk'][value='" + preTopping[1] + "']").prop('checked', true);
			$("input[name='toppingchk'][value='" + preTopping[2]+ "']").prop('checked', true);
			$("input[name='toppingchk'][value='" + preTopping[3] + "']").prop('checked', true);
		}else {
			$("input[name='toppingchk'][value='${dto.atopping}']").prop('checked', true);
			$("input[name='toppingchk'][value='${dto.btopping}']").prop('checked', true);
			$("input[name='toppingchk'][value='${dto.ctopping}']").prop('checked', true);
			$("input[name='toppingchk'][value='${dto.dtopping}']").prop('checked', true);
		}
}

var preSource = [];
function sourceChk(){
	var sourceString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/toppingChk',
	      data : sourceString, 
	      dataType: 'json',
	      success: function(data){
	    	  console.log(data);
	    	  preSource =[];
	    	  preSource.push(data.asource);
	    	  if(data.bsource !=null) preSource.push(data.bsource);
	    	  console.log(preSource);
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
function sourceRechk(){
		$('input[name="sourcechk"]').each(function() {
		    $(this).prop('checked', false);
		});
		if(preSource.length !== 0){
			$("input[name='sourcechk'][value='" + preSource[0] + "']").prop('checked', true);
			$("input[name='sourcechk'][value='" + preSource[1] + "']").prop('checked', true);
		}else {
			$("input[name='sourcechk'][value='${dto.asource}']").prop('checked', true);
			$("input[name='sourcechk'][value='${dto.bsource}']").prop('checked', true);
		}
		
}
var preExtratopping = [];
function extratoppingChk(){
	var extratoppingString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/toppingChk',
	      data : extratoppingString,
	      dataType: 'json',
	      success: function(data){
	    	  console.log(data);
	    	  preExtratopping =[];
	    	  preExtratopping.push(data.aextratopping);
	    	  if(data.bextratopping !=null) preExtratopping.push(data.bextratopping);
	    	  console.log(preExtratopping);
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
function extratoppingRechk(){
		$('input[name="extrachk"]').each(function() {
		    $(this).prop('checked', false);
		});
		if(preExtratopping.length !== 0){
			$("input[name='extrachk'][value='" + preExtratopping[0] + "']").prop('checked', true);
			$("input[name='extrachk'][value='" + preExtratopping[1] + "']").prop('checked', true);
		}else {
			$("input[name='extrachk'][value='${dto.aextratopping}']").prop('checked', true);
			$("input[name='extrachk'][value='${dto.bextratopping}']").prop('checked', true);
		}
		
}
var preExtramain = null;
var preExtramainCheck = null;
<!-- 옵션 선택 변경시  -->
function extramainChk(){
	var toppingString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/toppingChk',
	      data : toppingString,
	      dataType: 'json',
	      success: function(data){
	    	  console.log(data.extramain);
	    	  preExtramain =null;
	    	  preExtramainCheck =null;
	    	  preExtramain = data.extramain;
	    	  if(preExtramain ==null) {
	    		  preExtramainCheck="메인추가안함";
	    		  $("input:radio[name='main']:radio[value='"+"메인추가안함"+"']").prop("checked",true);
				  $("input:radio[name='extramain']").prop('checked', false);
	    	  }else{
	    		  $("input:radio[name='main']:radio[value='"+"메인추가"+"']").prop("checked",true);
		  		  $("input:radio[name='extramain']:radio[value='"+preExtramain+"']").prop("checked",true);
	    	  }
	    	  console.log(preExtramain);
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
function extramainRechk(){
	  console.log(preExtramainCheck);
	  console.log(preExtramainCheck==null);
	  console.log(preExtramain);
	  console.log(preExtramain !== null);
	  if(preExtramain !== null){
		  $("input:radio[name='extramain']:radio[value='"+preExtramain+"']").prop("checked",true);
		$("input:radio[name='main']:radio[value='"+"메인추가"+"']").prop("checked",true);
	  }else{
		  if(preExtramainCheck==null){
			$("input:radio[name='main']:radio[value='"+"메인추가"+"']").prop("checked",true);
   		    $("input:radio[name='extramain']:radio[value='${dto.extramain}']").prop("checked",true);
		  }else{
			  $("input:radio[name='extramain']").prop('checked', false);
			$("input:radio[name='main']:radio[value='"+"메인추가안함"+"']").prop("checked",true);
			  
		  }
	  }
	}
var preSetside = null;
var preSetbeverage = null;
var preSetCheck = null;
<!-- 옵션 선택 변경시  -->
function setChk(){
	var toppingString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/toppingChk',
	      data : toppingString,
	      dataType: 'json',
	      success: function(data){
	    	  console.log(data.setside);
	    	  preSetside = null;
	    	  preSetbeverage = null;
	    	  preSetCheck =null;
	    	  preSetside = data.setside;
	    	  preSetbeverage = data.setbeverage;
	    	  if(preSetside ==null) {
	    		  preSetCheck="단품";
	    		  $("input:radio[name='choose']:radio[value='"+preSetCheck+"']").prop("checked",true);
				  $("input:radio[name='setside']").prop('checked', false);
				  $("input:radio[name='setbeverage']").prop('checked', false);
	    	  }else{
	    		  preSetCheck="세트";
	    		  $("input:radio[name='choose']:radio[value='"+preSetCheck+"']").prop("checked",true);
	    		  $("input:radio[name='setside']:radio[value='"+preSetside+"']").prop("checked",true);
		  		  $("input:radio[name='setbeverage']:radio[value='"+preSetbeverage+"']").prop("checked",true);
	    	  }
	    	  console.log(preSetCheck,'----');
	    	  
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
function setRechk(){
	  console.log(preSetCheck);
	  console.log(preSetCheck==null);
	  console.log(preSetbeverage);
	  console.log(preSetside);
	  console.log(preSetside !== null);
	  if(preSetside !== null){
		$("input:radio[name='choose']:radio[value='"+preSetCheck+"']").prop("checked",true);
		$("input:radio[name='setside']:radio[value='"+preSetside+"']").prop("checked",true);
		$("input:radio[name='setbeverage']:radio[value='"+preSetbeverage+"']").prop("checked",true);
	  }else{
		  if(preSetCheck==="단품"){
			  $("input:radio[name='setside']").prop('checked', false);
			  $("input:radio[name='setbeverage']").prop('checked', false);
			  $("input:radio[name='choose']:radio[value='"+preSetCheck+"']").prop("checked",true);
		  }else if(preSetCheck==="세트"){
			$("input:radio[name='setbeverage']:radio[value='"+preSetbeverage+"']").prop("checked",true);
   		    $("input:radio[name='setside']:radio[value='"+preSetside+"']").prop("checked",true);
   		    $("input:radio[name='choose']:radio[value='"+preSetCheck+"']").prop("checked",true);
		  }else{
			$("input:radio[name='setbeverage']:radio[value='${dto.setbeverage}']").prop("checked",true);
   		    $("input:radio[name='setside']:radio[value='${dto.setside}']").prop("checked",true);
   		    $("input:radio[name='choose']:radio[value='"+"세트"+"']").prop("checked",true);
			  
		  }
	  }
	}
<!--옵션 제약 함수-->
function toppingchk_chk(){
	 var checked = $('input[name="toppingchk"]:checked').length > 0;
	 if(!checked){
		 alert("🌵토핑을 선택해주세요🌵");
	      return false; 
	 }
	 return true;
}
function sourcechk_chk(){
	 var checked = $('input[name="sourcechk"]:checked').length > 0;
	 if(!checked){
		 alert("🧂소스를 선택해주세요🧂");
		 return false; 
	 }
	 return true;
}
function setside_chk(){
	if ($('input:radio[name="choose"]:checked', '#detailForm').val() === "세트" 
			&& !$('input:radio[name="setside"]:checked').val()) {
		alert("🥣구성품을 선택해주세요🥤");
	    return false; 
	    }
	return true;
}
function setbeverage_chk(){
	if ($('input:radio[name="setside"]:checked').val() !=null
			&& !$('input:radio[name="setbeverage"]:checked').val()) {
		alert("🥤음료를 선택해주세요🥤");
	    return false; 
	    }
	return true;
}
function auto_chk(){
    let auto = "${map.automenu}";
    if(auto !==""){
    $("#basebtn, #toppingbtn, #sourcebtn").click(function(){
        alert('꿀조합은 필수 선택 변경이 불가합니다.');
    });
        $('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', true);
        return false;
    }
}

<!-- 불투명 배경 생성 함수 -->
function bgLayerOpen() {
    if(!$('.bgLayer').length) {
        $('<div class="bgLayer"></div>').appendTo($('body'));
    }
    var object = $(".bgLayer");
    var w = $(document).width()+12;
    var h = $(document).height();


    object.css({'width':w,'height':h}); 
    object.fadeIn(1);   //생성되는 시간 설정
    $('html').css("overflow", "hidden");
}
<!-- 불투명 배경 제거 함수 -->
function bgLayerClear(){
    var object = $('.bgLayer');
if(object.length) {
    object.fadeOut(1, function() {
    object.remove();
});
    }
$('html').css("overflow", "scroll");
}

<!-- 수량 버튼 함수 -->
function incrementNumber(){
	let input=$('#count');
	let value = parseInt(input.val());
	input.val(value + 1);
	let value1 = parseInt(input.val());
	if(value>8){
		$('#count').css({
           	'border' : 'none',
           	'margin' : '0px -161px 0px 23px',
           	'font-size' : '40px',
           	'font-weight' : '1000'
        });
	}
	let total = $('#totalSum');
	let realPrice = $('#realPrice');
	let sum = parseInt(realPrice.val());
	total.val(value1*sum);
	const $input = $('#totalSum');
	into();
	
}
function decrementNumber(){
	let input=$('#count');
	let value = parseInt(input.val());
	if(value>1){ 
		input.val(value - 1);
		if(value<11){
			$('#count').css({
	           	'border' : 'none',
	           	'margin' : '0px -177px 0px 23px',
	           	'font-size' : '40px',
	           	'font-weight' : '1000'
	        });
		}
		let value1 = parseInt(input.val());
		let total = $('#totalSum');
		let realPrice = $('#realPrice');
		let sum = parseInt(realPrice.val());
		total.val(value1*sum);
		const $input = $('#totalSum');
	}
	into();
}
<!-- 옵션 미리 선택 -->
function preCheck(){
	$("input:radio[name='base']:radio[value='${dto.base}']").attr("checked",true);
	$("input[name='toppingchk'][value='${dto.atopping}']").prop('checked', true);
	$("input[name='toppingchk'][value='${dto.btopping}']").prop('checked', true);
	$("input[name='toppingchk'][value='${dto.ctopping}']").prop('checked', true);
	$("input[name='toppingchk'][value='${dto.dtopping}']").prop('checked', true);
	$("input[name='sourcechk'][value='${dto.asource}']").prop('checked', true);
	$("input[name='sourcechk'][value='${dto.bsource}']").prop('checked', true);
	$("input[name='extrachk'][value='${dto.aextratopping}']").prop('checked', true);
	$("input[name='extrachk'][value='${dto.bextratopping}']").prop('checked', true);
	$("input:radio[name='extramain']:radio[value='${dto.extramain}']").attr("checked",true);
	$("input:radio[name='setside']:radio[value='${dto.setside}']").attr("checked",true);
	$("input:radio[name='setbeverage']:radio[value='${dto.setbeverage}']").attr("checked",true);
		$("input[name='setside']").filter("[value='${dto.setside}']").trigger("click");
		$("input[name='setbeverage']").filter("[value='${dto.setbeverage}']").trigger("click");

	
}
<!-- 선택된 버튼 변환 -->
    var setbeverage = Boolean("${dto.setbeverage}");
function selectBtn() {
    let aextratopping = Boolean("${dto.aextratopping}");
    let extramain = Boolean("${dto.extramain}");
    if ($('input[name="extrachk"]:checked').length !== 0 ||aextratopping) {
        $('#extratopping').css({
            'background-color': '#008000db',
            'color': 'white',
            'font-weight': 'bold'
        });
    } else {
    	 $('#extratopping').css({
    	    'background-color': '#b7b7b766',
    	    'color': 'black',
    	    'font-weight': 'bold'
    	 });
    
    }
   if ($('input[name="extrachk"]:checked').length !== 0 ) {
       $('#extratopping').css({
           'background-color': '#008000db',
           'color': 'white',
           'font-weight': 'bold'
       });
   } else if($('input[name="extrachk"]:checked').length === 0){
       $('#extratopping').css({
           'background-color': '#b7b7b766',
           'color': 'black',
           'font-weight': 'bold'
       });
   }
    if ($('input[name="extramain"]:checked').length !== 0|| extramain) {
        $('#extramain').css({
            'background-color': '#008000db',
            'color': 'white',
            'font-weight': 'bold'
        });
    } else {
        $('#extramain').css({
            'background-color': '#b7b7b766',
            'color': 'black',
            'font-weight': 'bold'
        });
    }
    if ($('input[name="extramain"]:checked').length !== 0) {
        $('#extramain').css({
            'background-color': '#008000db',
            'color': 'white',
            'font-weight': 'bold'
        });
    } else {
        $('#extramain').css({
            'background-color': '#b7b7b766',
            'color': 'black',
            'font-weight': 'bold'
        });
    }
    if($('input[name="extramain"]:checked').length !== 0 || extramain){
    	 $("input[name='main'][value='메인추가']").prop("checked", true);
    }else{
    	 $("input[name='main'][value='메인추가안함']").prop("checked", true);
    	
    }
    if ($('input:radio[name="choose"]:checked').val() == "세트" || setbeverage) {
        $('#set').css({
            'background-color': '#008000db',
            'color': 'white',
            'font-weight': 'bold'
        });
        $('#noSet').css({
            'background-color': '#b7b7b766',
            'color': 'black',
            'font-weight': 'bold'
        });
        setbeverage=false;
    } else if($('input:radio[name="choose"]:checked').val() == "단품"){
        $('#set').css({
            'background-color': '#b7b7b766',
            'color': 'black',
            'font-weight': 'bold'
        });
        $('#noSet').css({
            'background-color': '#008000db',
            'color': 'white',
            'font-weight': 'bold'
        });
    }
}
function into() {
	  let input = $('#totalSum');
	  let priceFormatted = $('#priceFormatted');
	  let price = input.val();    
	  let formatter = new Intl.NumberFormat('ko-KR');
	  let formattedPrice = formatter.format(price);
	  priceFormatted.html(formattedPrice);
}
let result=0;
function gotocart(){
	var detailString = $("#detailForm").serialize();
       $.ajax({
          type: 'post',
          url:'/cart/add',
          data : detailString,
          dataType: 'json',
          success: function(data){
             result=data;
          },
          error: function(request,status, error){
             console.log(request, status, error)
          }
       })
    }

$(function() {
	//auto_chk();
	$('#sidePlus').mouseenter(function(){
		  $(this).css({
	           	'background-color' : '#f06923',
	           	'color' : '#fff'
	        });
		}).mouseleave(function(){
		  $(this).css({
	           	'background-color' : '#fff',
	           	'color' : '#f06923'
	        });
		});
	$('#cartPlus').mouseenter(function(){
		  $(this).css({
	           	'background-color' : '#f06923',
	           	'color' : '#fff'
	        });
		}).mouseleave(function(){
		  $(this).css({
	           	'background-color' : '#fff',
	           	'color' : '#f06923'
	        });
		});
	into();
	<!--set값 미리 체크하기-->
	preCheck();
	selectBtn();
	$("input:radio[name='setside']:checked, input:radio[name='setbeverage']:checked").each(function() {
		  var td = $(this).closest('td');
		  td.css('background-color', '#f06923');
		  prevChecked = this;
		  prevCheckeda = this;
		  $("input:radio[name='choose']:radio[value='세트']").attr("checked",true);
		});
	  <!-- 모달창 버튼 -->
	$("#basebtn").click(function(){
		let auto = "${map.automenu}";
		if(auto !==""){
	       alert('꿀조합은 필수 선택 변경이 불가합니다.');
	       $('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', true);
		}else{
			bgLayerOpen();
			$(".modal").fadeIn(1);
		}
		$('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', false);
		
	});
	$("#closer").click(function() {
		baseRechk();
		$(".modal").fadeOut(1);
		bgLayerClear();
	})
	$("#nextBtn").click(function(){
		baseChk();
			update();
			$(".modal").fadeOut(1);
			bgLayerClear();
	});
	$("#toppingbtn").click(function(){
		let auto = "${map.automenu}";
		if(auto !==""){
	       alert('꿀조합은 필수 선택 변경이 불가합니다.');
	       $('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', true);
		}else{
			bgLayerOpen();
			$(".modal_2").fadeIn(1);
		}
		$('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', false);
	});
	$("#closer2").click(function() {
		if(toppingchk_chk()){
			toppingRechk();
			$(".modal_2").fadeOut(1);
			bgLayerClear();
		}
	})
	$("#nextBtn2").click(function(){
		if(toppingchk_chk()){
			toppingChk();
			update();
			$(".modal_2").fadeOut(1);
			bgLayerClear();
		}
	});
	$("#sourcebtn").click(function(){
		let auto = "${map.automenu}";
		if(auto !==""){
	       alert('꿀조합은 필수 선택 변경이 불가합니다.');
	       $('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', true);
		}else{
			bgLayerOpen();
			$(".modal_3").fadeIn(1);
		}
		$('#basebtn,#toppingbtn,#sourcebtn').attr('disabled', false);
		
	});
	$("#closer3").click(function() {
		if(sourcechk_chk()){
			sourceRechk();
			$(".modal_3").fadeOut(1);
			bgLayerClear();
		}
	})
	$("#nextBtn3").click(function(){
		if(sourcechk_chk()){
			sourceChk();
			update();
			toppingChk();
			$(".modal_3").fadeOut(1);
			bgLayerClear();
		}
	});
	$("#extratopping").click(function(){
		bgLayerOpen();
		$(".modal_4").fadeIn(1);
	});
	$("#closer4").click(function() {
		extratoppingRechk();
		$(".modal_4").fadeOut(1);
		bgLayerClear();
	})
	$("#nextBtn4").click(function(){
		extratoppingChk();
		update();
		selectBtn();
		$(".modal_4").fadeOut(1);
		bgLayerClear();
	});
	$("#extramain").click(function(){
		bgLayerOpen();
		$('input[name="extramain"]').on('click', function() {
			  $("input[name='main'][value='메인추가']").prop("checked", true);
			});
		$("input:radio[name='main'][value='메인추가안함']").on('click', function() {
		    $("input:radio[name='extramain']").prop("checked", false);
		});
		$(".modal_5").fadeIn(1);
	});
	$("#closer5").click(function() {
		extramainRechk();
		$(".modal_5").fadeOut(1);
		bgLayerClear();
	})
	$("#nextBtn5").click(function(){
		extramainChk();
		update();
		selectBtn();
		$(".modal_5").fadeOut(1);
		bgLayerClear();
	});
	$("#set").click(function(){
		bgLayerOpen();
		$(".modal_6").fadeIn(1);
		$('input[name="setside"], input[name="setbeverage"]').on('click', function() {
			  $("input[name='choose'][value='세트']").prop("checked", true);
			});
		$("input:radio[name='choose'][value='단품']").on('click', function() {
		    $("input:radio[name='setside']").prop("checked", false);
		    $("input:radio[name='setbeverage']").prop("checked", false);
		    $(".sideTd").css('background-color', '');
		    $(".beverageTd").css('background-color', '');
		});


	});
	$("#closer6").click(function() {
		setRechk();
		$(".modal_6").fadeOut(1);
		bgLayerClear();
	})
	$("#nextBtn6").click(function(){
		if(setside_chk()){
			if(setbeverage_chk()){
				setChk();
				update();
				selectBtn();
				$(".modal_6").fadeOut(1);
				bgLayerClear();
			}
		}
	});
	$("#sidePlus").click(function(){
	      if (confirm("해당 상품은 장바구니로 이동되며, 옵션 변경이 불가합니다. 진행 하시겠습니까?")) {
			gotocart();
	       $('#detailForm').attr('action', '/detail/view').submit();
	      } else {
	          return false; 
	      }
	});
	$("#cartPlus").click(function(){
			gotocart();
	       if(result==0) alert("장바구니에 담겼습니다.");
	       
	      if (confirm("장바구니를 확인하시겠습니까?")) {
	       $('#detailForm').attr('action', '/detail/view').submit();
	      } else {
	          return false; 
	      }
	   });
	$("#order").click(function(){
		$('#detailForm').attr('action', '/payment/payment').submit();
	});
	$('input:checkbox[name="toppingchk"]').on("click", function() {
		let count = $('input:checked[name="toppingchk"]').length;
		if (count > 4) {
			$(this).prop("checked", false);
			alert("최대 4개까지 선택 가능합니다!");
		}
	})
	$('input:checkbox[name="sourcechk"]').on("click", function() {
		let count = $('input:checked[name="sourcechk"]').length;
		if (count > 2) {
			$(this).prop("checked", false);
			alert("최대 2개까지 선택 가능합니다!");
		}
	})
	$('input:checkbox[name="extrachk"]').on("click", function() {
		let count = $('input:checked[name="extrachk"]').length;
		if (count > 2) {
			$(this).prop("checked", false);
			alert("최대 2개까지 선택 가능합니다!");
		}
		
	})
	$(window).resize(function() { //화면 크기 변할 시
	    $('.bgLayer').css('width' ,  $(window).width() - 0 );
	    $('.bgLayer').css('height' ,  $(window).height() - 0 );
	});
	
});
</script>

</head>
<body>
	<c:if test="${dto} != null">
		<c:set var="dto" value="${dto}" />
	</c:if>
	<jsp:include page="/WEB-INF/views/header.jsp" />
	<section class="breadcrumb-option">
		<div class="container container2">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>포케포케 메뉴</h4>
						<div class="breadcrumb__links">
							<a href="/">Home</a><span>매장찾기</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 서브메뉴 끝 -->
	
	<!-- 포케포케 메뉴 -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<a href="/product/reList" class="productStyle"><span class = "productMenu"> 전체메뉴</span></a>
							<a href="/product/reList?num=1" class="productStyle"><span class = "productMenu">샐러드</span></a>
							<a href="/product/reList?num=2" class="productStyle"><span class = "productMenu">사이드</span></a>
							<a href="/product/reList?num=3" class="productStyle"><span class = "productMenu">음료수</span></a>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Product section-->
	<section class="py-5" style="margin:-70px 0 0 0;">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0"
						src="${product.productImage }"
						alt="..." />
				</div>
				<div class="col-md-6">
					<div class="small mb-1">${product.productType }</div>
					<h1 class="display-5 fw-bolder">${product.productName }</h1>
						<span class="text-decoration-line-through">${product.productEname }</span> <br>
					<div class="fs-5 mb-5">
					<p class="lead" style="margin-top: 50px;">${product.productDetail }</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 선택창  -->
	<form id="detailForm" method="post">
		<input type="hidden" name="memberId" value="<%= memberId%>"> 
		<input type="hidden" name="productName" value="${product.productName }"> 
		<div class="select">
			<div class="container container2">
				<div class="image ">
					<img
						src="<%=contextPath%>/resources/img/KakaoTalk_20230402_011516567.png"
						style="width: 40%;" alt="Your image">
					<div>
						<span style="color: #ffc107; font-weight: bold; font-size: 14pt;"><strong>STEP
								01</strong></span> <br> <span style="color: white; font-size: 20pt;"><strong>필수
								선택 *</strong></span>
					</div>
				</div>
				<div class="box">
					<div class="button-group">
						<button type="button" id="basebtn"
							style="background-color: #008000db; color: white; font-weight: bold;">베이스
							선택</button>
						<button type="button" id="toppingbtn"
							style="background-color: #008000db; color: white; font-weight: bold;">토핑
							선택</button>
						<button type="button" id="sourcebtn"
							style="background-color: #008000db; color: white; font-weight: bold;">소스
							선택</button>
						<br> <span
							style="font -size: 11pt; display: inline-block; margin-top: 6px;"></span>
						<span id="updateBase">${dto.base }</span> <span
							id="updateAtopping">, ${dto.atopping } <c:if
								test="${not empty dto.btopping }">
									 , ${dto.btopping }
									</c:if> <c:if test="${not empty dto.ctopping }">
									 , ${dto.ctopping }
									</c:if> <c:if test="${not empty dto.dtopping }">
									 , ${dto.dtopping }
							  		</c:if>
						</span> <span id="updateAsource"> , ${dto.asource } <c:if
								test="${not empty dto.bsource} ">
									 , ${dto.bsource }
									</c:if>
						</span>
					</div>
				</div>
			</div>
			<div class="container container2">
				<div class="image" style="background-color: #ff8b07;">
					<img
						src="<%=contextPath%>/resources/img/KakaoTalk_20230402_011516567.png"
						style="width: 40%;" alt="fokefoke">
					<div style="display: block;">
						<span style="color: #ffc107; font-weight: bold; font-size: 14pt;">
							<strong>STEP 02</strong>
						</span> <br> <span style="color: white; font-size: 20pt;"> <strong>추가
								선택&nbsp;&nbsp;&nbsp;</strong></span>
					</div>
				</div>
				<div class="box">
					<div class="button-group">
						<button type="button" id="extratopping"
							>토핑
							추가</button>
						<button type="button" id="extramain"
							>메인
							추가</button>
						<br> <span id="updateAextratopping"> <c:if
								test="${not empty dto.aextratopping && empty dto.bextratopping}">
						[추가 토핑] ${dto.aextratopping }<br>
					</c:if> <c:if test="${not empty dto.bextratopping }">
						 [추가 토핑] ${dto.aextratopping } , ${dto.bextratopping }<br>
					</c:if>
						</span> <span id="updateExtramain"> <c:if
								test="${not empty dto.extramain }">
						[추가 메인] ${dto.extramain } 
					</c:if>
						</span>
					</div>
				</div>
			</div>
			<div class="container container2">
				<div class="image" style="background-color: #9a04c5;">
					<img
						src="<%=contextPath%>/resources/img/KakaoTalk_20230402_011516567.png"
						style="width: 40%;" alt="Your image">
					<div style="display: block;">
						<span style="color: #ffc107; font-weight: bold; font-size: 14pt;">
							<strong>STEP 03</strong>
						</span> <br> <span style="color: white; font-size: 20pt;"> <strong>세트
								유무&nbsp;&nbsp;&nbsp;</strong></span>
					</div>
				</div>
				<div class="box">
					<div class="button-group">
						<button type="button" id="noSet"
							style="background-color: #b7b7b766; color: black; font-weight: bold;">단&nbsp;&nbsp;&nbsp;
							품</button>
						<button type="button" id="set"
							>세&nbsp;&nbsp;&nbsp;
							트</button>
						<br> <span id="updateSet"> <c:if
								test="${not empty dto.setbeverage }">
						[세트 + 2,500] ${dto.setside } , ${dto.setbeverage }
					</c:if>
						</span>
					</div>
				</div>
			</div>

			<!-- Plus, minus button -->
			<div class="container container2">
				<div class="btn" style="margin:0 0 0 0;">
					<span style="font-size: 25px; font-weight: 1000;">수량 </span>
					<button type="button" class="btn" onclick="decrementNumber()"
						style="border: 3px solid #008000db; border-radius: 80px; color: #008000db; margin-left: 13px; font-size: 24px; font-weight: 1000; padding: 0px 14px 0px 14px;">-</button>
					<span> <input type="number" id="count" name="total"
						value="${dto.total }" min="1" max="9999"
						style="border: none; margin: 0px -177px 0px 23px; font-size: 40px; font-weight: 1000;">
					</span>
					<button type="button" class="btn" onclick="incrementNumber()"
						style="border: 3px solid #008000db; border-radius: 80px; color: #008000db; font-size: 24px; font-weight: 1000; padding: 0px 11px 0px 11px;">+</button>
				</div>
				<div class="total"
					style="margin-left: 390px; font-size: 30px; font-weight: 1000;">
					<span id="realreal"><input type="hidden" id="realPrice" value="${dto.price}"></span>
					<div class="comeon" style="margin:0 0 0 0;">
					<span >총 주문 금액 
					<span id="priceFormatted" style="border: none; margin: 0  10px 0 70px; font-size: 55px; color: #008000db; font-weight: 1000;">
 						 <fmt:formatNumber type="number" maxFractionDigits="3" value="" />
					</span>원
					<input type="hidden" name="price" id="totalSum" value="${dto.price }">
				</span> 
					</div>
				</div>
			</div>

			<hr>
			<div class="container" style="margin-left: 340px;">
				<div class="modal_btn">
					<div class="d-flex justify-content-center">
						<button type="button" id="sidePlus" class="btn btn-lg "
							style="color: #f06923; width: 250px; border: 2px solid #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;사이드추가&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="cartPlus" class="btn btn-lg "
							style="color: #f06923; width: 170px; border: 2px solid #f06923; border-radius: 30px; margin-left: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;장바구니&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="order" class="btn btn-lg text-white"
							style="background-color: #f06923; width: 170px; border-radius: 30px; margin-left: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;주문하기&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>

		<br> <br> <br> <br>
		<!-- 모달창 -->

		<!--첫번째 모달창 만들꺼에용-->
		<div class="modal">
		<div class="whole" >
			<div class="modal_top d-flex justify-content-start"
				style="flex-direction: column;">
				&nbsp;&nbsp; ${product.productName }
				<h3>&nbsp;&nbsp;베이스 선택</h3>
			</div>
			<span style="dispaly:inline-block;"> 
				<input type="button" class="btn" id="closer" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_content" title="포케포케힘이나!!"
				style="height: 250px; width: 470px;">
				<br>
				<div class="modal_select " style="height: 135px; width: 430px;">
					<br> <label for="chk">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="base" value="현미밥 추가" id="chk">
							<i class="circle"></i> <span class="text">현미밥 추가</span>
						</h4>
					</label> <br> <br> <label for="chks">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="base" value="샐러드만" id="chks"> <i
								class="circles"></i> <span class="text">샐러드만</span>
						</h4>
					</label>
				</div>
				<hr>
				<div class="modal_btn">
					<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;적용&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!--두번째 모달창 만들꺼에용-->
		<div class="modal_2" >
		<div class="whole_2" style="width: 500px; height: 730px;">
			<div class="modal_top ">
				&nbsp;&nbsp; ${product.productName } <br> <span
					style="font-size: 32px;">&nbsp;&nbsp;토핑 선택</span>(최대 4개까지 선택 가능)
			</div>
			<span style="dispaly:inline-block;"> 
				<input type="button" class="btn" id="closer2" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_content" title="포케포케힘이나!!"
				style="overflow: auto; width: 470px; height: 515px;">
				<br> <label for="topping1"> <input type="checkbox"
					name="toppingchk" class="toppingchk"
					style="box-shadow: 0 0 5px #00ff00; border: 1px solid #00ff00; outline: none;"
					value="오이" id="topping1"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/img_recipe_v03.png); background-size: 100%;"><span>오이</span></i>
				</label> <label> <input type="checkbox" class="toppingchk"
					name="toppingchk" value="파인애플"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/pine.png); background-size: 70%;"><span>파인애플</span></i>
				</label> <label> <input type="checkbox" class="toppingchk"
					name="toppingchk" value="풋콩"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/cong.png); background-size: 120%;"><span>풋콩</span></i>
				</label> <label> <input type="checkbox" class="toppingchk"
					name="toppingchk" value="병아리콩"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/qcong.png); background-size: 80%;"><span>병아리콩</span></i>
				</label> <label> <input type="checkbox" name="toppingchk"
					class="toppingchk" value="렌틸콩"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/tilcong.png); background-size: 80%;"><span>렌틸콩</span></i>
				</label> <label> <input type="checkbox" name="toppingchk"
					class="toppingchk" value="적양파"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/oni.png); background-size: 110%;"><span>적양파</span></i>
				</label> <label> <input type="checkbox" name="toppingchk"
					class="toppingchk" value="콘샐러드"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/conn.png); background-size: 65%;"><span>콘샐러드</span></i>
				</label> <label> <input type="checkbox" name="toppingchk"
					class="toppingchk" value="날치알"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/arr.png); background-size: 80%;"><span>날치알</span></i>
				</label> <label> <input type="checkbox" name="toppingchk"
					class="toppingchk" value="레디쉬"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/rere.png); background-size: 80%;"><span>레디쉬</span></i>
				</label> <label> <input type="checkbox" name="toppingchk"
					class="toppingchk" value="올리브"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/all.png); background-size:100%;"><span>올리브</span></i>
				</label>
				</div>
				<div class="white" style="width: 470px; height: 90px;background-color:#fff;margin:0 0 0 15px;">
				<div class="modal_btn" >
					<div>
					<hr style="border : 0px;  border-top: 9px solid #fff; margin:0 0px 0 0;">
					<hr style="border : 0px;  border-top: 1px solid #b7b7b79c; margin:0 0 15px 0;">
						<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn2" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;적용&nbsp;&nbsp;&nbsp;&nbsp;</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!--세번째 모달창 만들꺼에용-->
		<div class="modal_3" style="width: 500px; height: 686px;">
			<div class="modal_top ">
				&nbsp;&nbsp;${product.productName }<br> <span
					style="font-size: 32px;">&nbsp;&nbsp;소스 선택</span>(최대 2개까지 선택 가능)
			</div>
			<span style="dispaly:inline-block;"> 
				<input type="button" class="btn" id="closer3" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_content" title="포케포케힘이나!!"
				style="overflow: auto; width: 470px; height: 475px;">
				<br> <label> <input type="checkbox" name="sourcechk"
					class="toppingchk" value="소금"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/salt.png); background-size: 100%;"><span>소금</span></i>
				</label> <label> <input type="checkbox" class="toppingchk"
					name="sourcechk" value="후추"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/pepper.png); background-size: 100%;"><span>후추</span></i>
				</label> <label> <input type="checkbox" class="toppingchk"
					name="sourcechk" value="렌치"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/len.png); background-size: 100%;"><span>렌치</span></i>
				</label> <label> <input type="checkbox" class="toppingchk"
					name="sourcechk" value="허니머스타드"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/mm.png); background-size: 80%;"><span>허니머스타드</span></i>
				</label> <label> <input type="checkbox" name="sourcechk"
					class="toppingchk" value="스위트 칠리"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/sweetchil.png); background-size: 80%;"><span>스위트
							칠리</span></i>
				</label> <label> <input type="checkbox" name="sourcechk"
					class="toppingchk" value="스위트 어니언"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/sweetoni.png); background-size: 80%;"><span>스위트
							어니언</span></i>
				</label> <label> <input type="checkbox" name="sourcechk"
					class="toppingchk" value="사우스웨스트 치폴레"> <i
					class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/south.png); background-size: 80%;"><span>사우스웨스트</span></i>
				</label> <label> <input type="checkbox" name="sourcechk"
					class="toppingchk" value="레드와인식초"> <i class="toppingImg"
					style="background-image:url(<%=contextPath%>/resources/img/topping/red.png); background-size: 80%;"><span>레드와인식초</span></i>
				</label>
			</div>
				<div class="white" style="width: 470px; height: 90px;background-color:#fff;margin:0 0 0 15px;">
				<div class="modal_btn" >
					<div>
					<hr style="border : 0px;  border-top: 9px solid #fff; margin:0 0px 0 0;">
					<hr style="border : 0px;  border-top: 1px solid #b7b7b79c; margin:0 0 15px 0;">
						<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn3" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;적용&nbsp;&nbsp;&nbsp;&nbsp;</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--네번째 모달창 만들꺼에용-->
		<div class="modal_4" style="width: 500px; height: 550px;">
			<div class="modal_top ">
				&nbsp;&nbsp;${product.productName } <br> <span
					style="font-size: 32px;">&nbsp;&nbsp;추가 선택</span>(최대 2개까지 선택 가능)
			</div>
			<span style="dispaly:inline-block;"> 
				<input type="button" class="btn" id="closer4" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_content" title="포케포케힘이나!!"
				style="overflow: auto; width: 470px; height: 430px;">
				<br>
				<table>
					<tr>
						<td><label> <input type="checkbox" name="extrachk"
								class="toppingchk" value="낫또"> <i class="toppingImg"
								style=" background-image:url(<%=contextPath%>/resources/img/topping/nott.png); background-size: 80%; "><span
									style="font-size: 14pt;">낫또</span> <span
									style="color: #f06923; font-size: 14pt; position: relative; right: -12px; bottom: -110px;">+2,000원</span></i></label>
						</td>
						<td><label> <input type="checkbox" class="toppingchk"
								name="extrachk" value="아보카도"> <i class="toppingImg"
								style="background-image:url(<%=contextPath%>/resources/img/topping/aboo.png); background-size: 95%; margin-left:6px;"><span
									style="font-size: 14pt;">아보카도</span> <span
									style="display: inline-block; height: 26px; width: 78.91; color: #f06923; font-size: 14pt; position: relative; right: -50px; bottom: -80px;">+2,000원</span></i>
						</label></td>
						<td><label> <input type="checkbox" class="toppingchk"
								name="extrachk" value="크랩샐러드"> <i class="toppingImg"
								style="background-image:url(<%=contextPath%>/resources/img/topping/crabb.png); background-size: 80%; margin-left:6px;"><span
									style="font-size: 14pt;">크랩샐러드</span> <span
									style="color: #f06923; font-size: 14pt; position: relative; right: -50px; bottom: -80px;">+2,000원</span></i>
						</label></td>
					</tr>
					<tr>
						<td><label> <input type="checkbox" class="toppingchk"
								name="extrachk" value="피코데가요"> <i class="toppingImg"
								style="background-image:url(<%=contextPath%>/resources/img/topping/pngegg.png); background-size: 75%;"><span
									style="font-size: 14pt;">피코데가요</span> <span
									style="color: #f06923; font-size: 14pt; position: relative; right: -50px; bottom: -80px;">+2,000원</span></i>
						</label></td>
						<td><label> <input type="checkbox" name="extrachk"
								class="toppingchk" value="퀴노아"> <i class="toppingImg"
								style="background-image:url(<%=contextPath%>/resources/img/topping/qq.png); background-size: 80%; margin-left:6px;"><span
									style="font-size: 15pt;">퀴노아</span> <span
									style="display: inline-block; height: 26px; width: 78.91; color: #f06923; font-size: 14pt; position: relative; right: -50px; bottom: -80px;">+1,500원</span></i>
						</label></td>
						<td><label> <input type="checkbox" name="extrachk"
								class="toppingchk" value="건강넛츠"> <i class="toppingImg"
								style="background-image:url(<%=contextPath%>/resources/img/topping/nut.png); background-size: 80%; margin-left:6px;"><span
									style="font-size: 14pt;">건강넛츠</span> <span
									style="display: inline-block; height: 26px; width: 78.91; color: #f06923; font-size: 14pt; position: relative; right: -50px; bottom: -80px;">+1,500원</span></i>
						</label></td>
					</tr>
				</table>
				<hr>
				<div class="modal_btn">
					<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn4" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;적용&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>

		<!--다섯번째 모달창 만들꺼에용-->
		<div class="modal_5">
			<div class="modal_top d-flex justify-content-start"
				style="flex-direction: column;">
				&nbsp;&nbsp;${product.productName }
				<h3>&nbsp;&nbsp;메인 추가</h3>
			</div>
			<span style="dispaly:inline-block;"> 
				<input type="button" class="btn" id="closer5" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_middle" style="margin-top: -10px;">
			<span style="display:inline-block;"></span>
				<div class="modal_select " style="height: 75px; width: 430px; margin: -12px 0 0 19px;">
					<table style="margin-left:36px;">
					<tr><td style="width:170px; height:85px;" >
					<label for="ccd">
						<h4 style="margin-left: -17px;">
							<input type="radio" name="main" value="메인추가안함" id="ccd" checked>
							<i class="circleC"></i> <span class="text">메인 추가 안함</span>
						</h4>
					</label>
					</td>
					<td>
					<label for="cdd">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="main" value="메인추가" id="cdd"> <i
								class="circleD"></i> <span class="text">메인 추가 선택</span>
						</h4>
					</label>
					</td></tr>
					</table>
				</div>
			</div>
			<div class="modal_content" title="포케포케힘이나!!"
				style="height: 470px; width: 470px;">
				<br>
				<div class="modal_select "
					style="overflow: hidden; height: 350px; width: 430px;">
					<br> <label for="main1" style="margin-left: 25px;"> <input
						type="radio" name="extramain" value="연어" id="main1"> <i
						class="circle1"></i> <span class="text"
						style="margin-left: 10px; font-size: 20pt; font-weight: 540;">연어</span>
						<span
						style="color: #f06923; font-size: 17pt; margin-left: 190px; margin-right: 10px;">+3,000원</span>
					</label>
					<hr>
					<label for="main2" style="margin-left: 25px;"> <input
						type="radio" name="extramain" value="참치" id="main2"> <i
						class="circle2"></i> <span class="text"
						style="margin-left: 10px; font-size: 20pt; font-weight: 540;">참치</span>
						<span
						style="color: #f06923; font-size: 17pt; margin-left: 190px; margin-right: 10px;">+3,000원</span>
					</label>
					<hr>
					<label for="main3" style="margin-left: 25px;"> <input
						type="radio" name="extramain" value="새우" id="main3"> <i
						class="circle3"></i> <span class="text"
						style="margin-left: 10px; font-size: 20pt; font-weight: 540;">새우</span>
						<span
						style="color: #f06923; font-size: 17pt; margin-left: 190px; margin-right: 10px;">+3,000원</span>
					</label>
					<hr>
					<label for="main4" style="margin-left: 25px;"> <input
						type="radio" name="extramain" value="부채살" id="main4"> <i
						class="circle4"></i> <span class="text"
						style="margin-left: 10px; font-size: 20pt; font-weight: 540;">부채살</span>
						<span
						style="color: #f06923; font-size: 17pt; margin-left: 168px; margin-right: 10px;">+3,000원</span>
					</label>
				</div>
				<hr>
				<div class="modal_btn">
					<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn5" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;적용&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>
		<!--여섯번째 모달창 만들꺼에용-->
		<div class="modal_6">
			<div class="modal_top d-flex justify-content-start"
				style="flex-direction: column;">
				&nbsp;&nbsp; ${product.productName }
				<h3>&nbsp;&nbsp;세트 선택</h3>
			</div>
			<span style="dispaly:inline-block;"> 
			<input type="button" class="btn" id="closer6" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_middle" style="margin-top: -10px;">
			<span style="display:inline-block;"></span>
				<div class="modal_select " style="height: 75px; width: 430px; margin: -12px 0 0 19px;">
					<table style="margin-left:36px;">
					<tr><td style="width:190px; height:85px;">
					<label for="aab">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="choose" value="단품" id="aab" checked>
							<i class="circleA"></i> <span class="text">단&nbsp;&nbsp;품</span>
						</h4>
					</label>
					</td>
					<td>
					<label for="abb">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="choose" value="세트" id="abb"> <i
								class="circleB"></i> <span class="text">세&nbsp;&nbsp;트</span>
						</h4>
					</label>
					</td></tr>
					</table>
				</div>
			</div>
			<div class="modal_content" title="포케포케힘이나!!"
				style="height: 350px; width: 470px;">
				<br>
				<div class="modal_se "
					style=" overflow: auto;height: 326px; width: 430px; margin-left: 18px;">
					<span>사이드 선택</span>
						<c:forEach items="${ sides }" var="side">
								<label style="width: 426px;" > <input
										type="radio" name="setside" class="radio1"
										value="${side.productName }"> <span class="label1"
										style="display:inline-block;width:400px;height:60px;border:1px solid #00000033;font-size: 19pt;margin:0 0 -8px 0; font-weight: 550;">${side.productName }</span>
								</label>
						</c:forEach>
					<br>
					<hr>
					<span>음료 선택</span>
						<c:forEach items="${ beverages }" var="beverage">
								<label style="width: 426px;"> <input
										type="radio" name="setbeverage" class="radio2"
										value="${beverage.productName }"> <span class="label2"
										style="display:inline-block;width:400px;height:60px;border:1px solid #00000033;font-size: 19pt; margin:0 0 -8px 0;font-weight: 550;">${beverage.productName }</span>
								</label>
						</c:forEach>
				</div>
				<div class="white" style="width: 470px; height: 90px;background-color:#fff;margin:0 0 0 0;">
				<div class="modal_btn" >
					<div>
					<hr style="border : 0px;  border-top: 26px solid #fff; margin:0 0px 0 0;">
					<hr style="border : 0px;  border-top: 1px solid #b7b7b79c; margin:-24px 0 0 0;">
				<hr style="border : 0px;  border-top: 18px solid #fff; margin:0 0 0 0;">
						<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn6" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;적용&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</form>

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<script src="<%=contextPath%>/resources/js/jquery-3.3.1.min.js"></script>
	<script src="<%=contextPath%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=contextPath%>/resources/js/jquery.nice-select.min.js"></script>
	<script src="<%=contextPath%>/resources/js/jquery.nicescroll.min.js"></script>
	<script
		src="<%=contextPath%>/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=contextPath%>/resources/js/jquery.countdown.min.js"></script>
	<script src="<%=contextPath%>/resources/js/jquery.slicknav.js"></script>
	<script src="<%=contextPath%>/resources/js/mixitup.min.js"></script>
	<script src="<%=contextPath%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=contextPath%>/resources/js/main.js"></script>
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>

</html>