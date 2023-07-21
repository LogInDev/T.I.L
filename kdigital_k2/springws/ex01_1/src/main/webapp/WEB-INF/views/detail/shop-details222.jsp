<%@page import="com.fokefoke.dto.DetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String contextPath = request.getContextPath();
DetailDTO dto = new DetailDTO();
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
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

.modal {
	width: 500px;
	height: 400px;
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

.modal_2 {
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

.modal_7 {
	position: fixed;
	background: #fff;
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
	margin-top: 15px;
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
	border-color: #f06923;
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
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#abb {
	position: absolute;
	left: -999em;
}
.circleAA {
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

#aaab:checked+.circleAA {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}
#aaab {
	position: absolute;
	left: -999em;
}

.circleBB {
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

#abbb:checked+.circleBB {
	background-color: #f06923;
	border-color: #f06923;
	background-image:
		url(<%=contextPath%>/resources/img/icon/check_white.png);
}

#abbb {
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
</style>
<script type="text/javascript" >
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
function setbeverage_chk(){
	if ($('input:radio[name="setside"]:checked').val() !=null
			&& !$('input:radio[name="setbeverage"]:checked').val()) {
		alert("🥤음료를 선택해주세요🥤");
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
<!--세트 가격 추가-->
function setPrice(){
	let input = $('#detailForm #price');
 	let value = parseInt(input.val());
	input.val(value + 2500);
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
$(function() {
		  var prevChecked = null;
		  $('.radio1').click(function() {
		    var td = $(this).parent().parent();
		    if ($(this).prop('checked')) {
		      if (prevChecked && prevChecked !== this) {
		        var prevTd = $(prevChecked).parent().parent();
		        prevTd.css('background-color', '');
		      }
		      td.css('background-color', '#f06923');
		      prevChecked = this;
		    } else {
		      td.css('background-color', '');
		      prevChecked = null;
		    }
		  });
		  var prevCheckeda = null;
		  $('.radio2').click(function() {
		    var td = $(this).parent().parent();
		    if ($(this).prop('checked')) {
		      if (prevCheckeda && prevCheckeda !== this) {
		        var prevTd = $(prevCheckeda).parent().parent();
		        prevTd.css('background-color', '');
		      }
		      td.css('background-color', '#f06923');
		      prevCheckeda = this;
		    } else {
		      td.css('background-color', '');
		      prevCheckeda = null;
		    }
		  });
		  
		$("#button").click(function() {
			bgLayerOpen();
			$(".modal").fadeIn(1);
		});
		$("#preBtn").click(function() {
			$(".modal").fadeOut(1);
			bgLayerClear();

		})
		$("#nextBtn").click(function() {
			$(".modal").fadeOut(1);
			$(".modal_2").fadeIn(1);
		})
		$("#preBtn2").click(function() {
			$(".modal_2").fadeOut(1);
			$(".modal").fadeIn(1);
		})
		$("#nextBtn2").click(function() {
			if(toppingchk_chk()){
				$(".modal_3").fadeIn(1);
				$(".modal_2").fadeOut(1);
			}
		})
		$("#preBtn3").click(function() {
			$(".modal_3").fadeOut(1);
			$(".modal_2").fadeIn(1);
		})
		$("#nextBtn3").click(function() {
			if(sourcechk_chk()){
				$(".modal_4").fadeIn(1);
				$(".modal_3").fadeOut(1);
			}
		})
		$("#preBtn4").click(function() {
			$(".modal_4").fadeOut(1);
			$(".modal_3").fadeIn(1);
		})
		$("#nextBtn4").click(function() {
			$(".modal_4").fadeOut(1);
			$('input[name="extramain"]').on('click', function() {
				  $("input[name='main'][value='메인추가']").prop("checked", true);
				});
			$("input:radio[name='main'][value='메인추가안함']").on('click', function() {
			    $("input:radio[name='extramain']").prop("checked", false);
			});
			$(".modal_5").fadeIn(1);
		})
		$("#preBtn5").click(function() {
			$(".modal_5").fadeOut(1);
			$(".modal_4").fadeIn(1);
		})
		$("#nextBtn5").click(function() {
			$(".modal_5").fadeOut(1);
			$('input[name="setside"], input[name="setbeverage"]').on('click', function() {
				  $("input[name='choose'][value='세트']").prop("checked", true);
				});
			$("input:radio[name='choose'][value='단품']").on('click', function() {
			    $("input:radio[name='setside']").prop("checked", false);
			    $("input:radio[name='setbeverage']").prop("checked", false);
			    $(".sideTd").css('background-color', '');
			    $(".beverageTd").css('background-color', '');
			});
			$(".modal_6").fadeIn(1);
		})
		$("#preBtn6").click(function() {
			$(".modal_6").fadeOut(1);
			$(".modal_5").fadeIn(1);
		})
		$("#nextBtn6").click(function() {
			if(setside_chk()){
				if(setbeverage_chk()){
					if($('input:radio[name="setbeverage"]:checked').val() !=null) setPrice();
					$(".modal_6").fadeOut(1);
					bgLayerClear();
					$('#detailForm').submit();
				}
			}
		})
		$("#autoUpdate").click(function() {
			bgLayerOpen();
			$(".modal_7").fadeIn(1);
		})
		$("#nextBtn7").click(function() {
			$(".modal_7").fadeOut(1);
			bgLayerClear();
			$('#autoForm').submit();
		})
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
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Product section-->
	<section class="py-5">
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
						<button class="btn btn-outline-dark flex-shrink-0" id="autoUpdate" type="button">
							<i class="bi-cart-fill me-1"></i>추천 꿀 조합
						</button>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container px-4 px-lg-5 my-5">
		 <div class="col-md-6">
		 <button class="btn btn-outline-dark flex-shrink-0" id="button"
							data-toggle="modal" data-target="#myModal" type="button"
							style="margin: 200px 0 0 0;">
							<i class="bi-cart-fill me-1"></i> 주문 시작 하기
						</button>
							<div id="root"></div>
					</div>
		</div>
	</section>

	<form id="detailForm" action="/detail/select" method="post">
		<input type="hidden" name="memberId" value="test"> 
		<input type="hidden" name="productName" value="${product.productName }"> 
		<input type="hidden" id="price" name="productPrice" value="${product.productPrice }">
		<!--첫번째 모달창 만들꺼에용-->
		<div class="modal">
			<div class="modal_top d-flex justify-content-start"
				style="flex-direction: column;">
				&nbsp;&nbsp; ${product.productName }
				<h3>&nbsp;&nbsp;베이스 선택</h3>
			</div>
			<span style="dispaly:inline-block;"> 
			<input type="button" class="btn" id="closer6" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_content" title="포케포케힘이나!!"
				style="height: 250px; width: 470px;">
				<br>
				<div class="modal_select " style="height: 135px; width: 430px;">
					<br> <label for="chk">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="base" value="현미밥 추가" id="chk" checked >
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
						<button type="button" id="preBtn" class="btn btn-default btn-lg "
							style="color: #f06923; border-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="nextBtn" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>
		<!--두번째 모달창 만들꺼에용-->
		<div class="modal_2" style="width: 500px; height: 730px;">
			<div class="modal_top ">
				&nbsp;&nbsp;${product.productName } <br> <span
					style="font-size: 32px;">&nbsp;&nbsp;토핑 선택</span>(최대 4개까지 선택 가능)
			</div>
			<span style="dispaly:inline-block;"> 
			<input type="button" class="btn" id="closer6" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
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
						<button type="button" id="preBtn2" class="btn btn-lg "
							style="color: #f06923; border-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="nextBtn2" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--세번째 모달창 만들꺼에용-->
		<div class="modal_3" style="width: 500px; height: 686px;">
			<div class="modal_top ">
				&nbsp;&nbsp;${product.productName } <br> <span
					style="font-size: 32px;">&nbsp;&nbsp;소스 선택</span>(최대 2개까지 선택 가능)
			</div>
			<span style="dispaly:inline-block;"> 
			<input type="button" class="btn" id="closer6" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
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
					style="background-image:url(<%=contextPath%>/resources/img/topping/south.png); background-size: 80%;"><span>사우스웨스트
							치폴레</span></i>
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
						<button type="button" id="preBtn3" class="btn btn-lg "
							style="color: #f06923; border-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="nextBtn3" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
			<input type="button" class="btn" id="closer6" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
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
									style="font-size: 14pt;">퀴노아</span> <span
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
						<button type="button" id="preBtn4" class="btn btn-lg "
							style="color: #f06923; border-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="nextBtn4" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>

		<!--다섯번째 모달창 만들꺼에용-->
		<div class="modal_5">
			<div class="modal_top d-flex justify-content-start"
				style="flex-direction: column;">
				&nbsp;&nbsp; 포케포케 연어
				<h3>&nbsp;&nbsp;메인 추가</h3>
			</div>
			<span style="dispaly:inline-block;"> 
			<input type="button" class="btn" id="closer6" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-217px 0 0 486px;"></span>
			<div class="modal_middle">
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
				<div class="modal_select  table-hover"
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
						<button type="button" id="preBtn5" class="btn btn-default btn-lg "
							style="color: #f06923; border-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="nextBtn5" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
			<div class="modal_middle">
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
					<table border="1" style="border-color: #b7b7b7c7;">
						<c:forEach items="${ sides }" var="side">
							<tr>
								<td width="600px" class="sideTd"><label style="width: 426px;"> <input
										type="radio" name="setside" class="radio1"
										value="${side.productName }"> <span class="label1"
										style="margin-left: 10px; font-size: 19pt; font-weight: 550;">${side.productName }</span>
								</label></td>
							</tr>
						</c:forEach>
					</table>
					<br>
					<hr>
					<span>음료 선택</span>
					<table border="1" style="border-color: #b7b7b7c7;">
						<c:forEach items="${ beverages }" var="beverage">
							<tr>
								<td width="600px" class="beverageTd"><label style="width: 426px;"> <input
										type="radio" name="setbeverage" class="radio2"
										value="${beverage.productName }"> <span class="label2"
										style="margin-left: 10px; font-size: 19pt; font-weight: 550;">${beverage.productName }</span>
								</label></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="white" style="width: 470px; height: 90px;background-color:#fff;margin:0 0 0 0;">
				<div class="modal_btn" >
					<div>
					<hr style="border : 0px;  border-top: 26px solid #fff; margin:0 0px 0 0;">
					<hr style="border : 0px;  border-top: 1px solid #b7b7b79c; margin:-24px 0 0 0;">
				<hr style="border : 0px;  border-top: 18px solid #fff; margin:0 0 0 0;">
						<div class="d-flex justify-content-center">
						<button type="button" id="preBtn6" class="btn btn-default btn-lg "
							style="color: #f06923; border-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;이전&nbsp;&nbsp;&nbsp;&nbsp;</button>
						<button type="button" id="nextBtn6" class="btn btn-lg text-white"
							style="background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</form>
		
		<!--일곱번째 모달창 만들꺼에용-->
		<form id="autoForm" action="/detail/select" method="post">
		<div class="modal_7" style="width: 500px; height: 550px;">
		<input type="hidden" name="productName" value="${product.productName }"> 
			<input type="hidden" id="price" name="price" value="${product.productPrice }">
			<span style="dispaly:inline-block;margin:0 0 0 0px;"> <input type="button" class="btn" id="closer7" value="X" style="color:#fff;font-size:35pt;font-weight: 550;margin:-63px 0 0 494px;"></span>
				<br> 
				<div class="modal_se " style="height: 135px; width: 430px;">
				<div>
				<span style="margin-left:160px;font-size: 26pt; font-weight: 550;color:#f06923;">${product.productName }</span>
					<span style="margin-left:157px;font-size: 26pt; font-weight: 550;">추천 꿀 조합</span>
				</div>
				<hr style="border : 0px;  border-top: 5px solid #469543; margin:0 -24px 0 44px;">
					<br> 
					<table style="width:376px;height:300px;margin: 0 0 0 64px;">
					<tr>
					<td style="width:150px; font-size: 16pt; font-weight: 550; color:#469543;">베이스</td>
					<td style="font-size: 15pt; font-weight: 550;color: #3d3d3dba;">${auto.base}</td>
					</tr>
					<tr>
					<td style="font-size: 16pt; font-weight: 550;color:#469543;">토핑</td>
					<td style="font-size: 15pt; font-weight: 550;color: #3d3d3dba;">
						<input type="hidden" name="atopping" value="${auto.atopping }">${auto.atopping } 
						<c:if test="${not empty auto.btopping }">
							 <input type="hidden" name="btopping" value="${auto.btopping }">, ${auto.btopping }
						</c:if> 
						<c:if test="${not empty auto.ctopping }">
							<input type="hidden" name="ctopping" value="${auto.ctopping }">, ${auto.ctopping }
						</c:if> 
						<c:if test="${not empty auto.dtopping }">
							<input type="hidden" name="dtopping" value="${auto.dtopping }">, ${auto.dtopping }
						</c:if></td>
					</tr>
					<tr>
					<td style="font-size: 16pt; font-weight: 550;color:#469543;">소스</td>
					<td style="font-size: 15pt; font-weight: 550;color: #3d3d3dba;">
						<input type="hidden" name="asource" value="${auto.asource }">${auto.asource } 
						<c:if test="${not empty auto.bsource} ">
							<input type="hidden" name="bsource" value="${auto.bsource }">, ${auto.bsource }
						</c:if>
					</td>
					</tr>
					<tr>
					<td colspan="2" >
					<label for="aaab">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="base" value="현미밥 추가" id="aaab" checked>
							<i class="circleAA"></i> <span class="text">현미밥 추가</span>
						</h4>
					</label><label for="abbb">
						<h4 style="margin-left: 20px;">
							<input type="radio" name="base" value="샐러드만" id="abbb"> <i
								class="circleBB"></i> <span class="text">샐러드만</span>
						</h4>
					</label>
					</td>
					</tr>
					</table>
					<br>
					<div class="d-flex justify-content-center">
						<button type="button" id="nextBtn7" class="btn btn-lg text-white"
							style="margin-left:63px;background-color: #f06923; border-radius: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;다음&nbsp;&nbsp;&nbsp;&nbsp;</button>
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
</body>

</html>