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