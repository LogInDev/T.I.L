function update(){
	var queryString = $("#detailForm").serialize();
	   $.ajax({
	      type: 'post',
	      url:'/detail/update',
	      data : queryString,
	      dataType: 'json',
	      success: function(data){
	    	  <c:if test="${data} != null">
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
	        console.log(data.price);
	        let total = $('#totalSum');
	        total.val(data.price);
	        let count = $('#count');
	        count.val(data.total);
	        into();
	      },
	      error: function(request,status, error){
	         console.log(request, status, error)
	      }
	   })
	}
	

<!-- 옵션 선택 변경시  -->


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
           	'margin' : '0 -84px 0 12px',
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
	           	'margin' : '0 -90px 0 30px',
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
	
}
<!-- 선택된 버튼 변환 -->
function selectBtn() {
    let aextratopping = Boolean("${dto.aextratopping}");
    let extramain = Boolean("${dto.extramain}");
    let setbeverage = Boolean("${dto.setbeverage}");
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

$(function() {
	into();
	<!--set값 미리 체크하기-->
	preCheck();
	selectBtn();
	var prevChecked = null;
	var prevCheckeda = null;
	$("input:radio[name='setside']:checked, input:radio[name='setbeverage']:checked").each(function() {
		  var td = $(this).closest('td');
		  td.css('background-color', '#f06923');
		  prevChecked = this;
		  prevCheckeda = this;
		  $("input:radio[name='choose']:radio[value='세트']").attr("checked",true);
		});
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
	  
	  <!-- 모달창 버튼 -->
	$("#basebtn").click(function(){
		bgLayerOpen();
		$(".modal").fadeIn(1);
	});
	$("#nextBtn").click(function(){
			update();
			$(".modal").fadeOut(1);
			bgLayerClear();
	});
	$("#toppingbtn").click(function(){
		bgLayerOpen();
		$(".modal_2").fadeIn(1);
	});
	$("#nextBtn2").click(function(){
		if(toppingchk_chk()){
			update();
			$(".modal_2").fadeOut(1);
			bgLayerClear();
		}
	});
	$("#sourcebtn").click(function(){
		bgLayerOpen();
		$(".modal_3").fadeIn(1);
	});
	$("#nextBtn3").click(function(){
		if(sourcechk_chk()){
			update();
			$(".modal_3").fadeOut(1);
			bgLayerClear();
		}
	});
	$("#extratopping").click(function(){
		bgLayerOpen();
		$(".modal_4").fadeIn(1);
	});
	$("#nextBtn4").click(function(){
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
	$("#nextBtn5").click(function(){
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
	$("#nextBtn6").click(function(){
		if(setside_chk()){
			if(setbeverage_chk()){
				update();
				selectBtn();
				$(".modal_6").fadeOut(1);
				bgLayerClear();
			}
		}
	});
	$("#sidePlus").click(function(){
		$('#detailForm').attr('action', '/detail/view').submit();
	});
	$("#cartPlus").click(function(){
       $('#detailForm').attr('action', '장바구니사이트주소').submit();
	});
	$("#order").click(function(){
		$('#detailForm').attr('action', '주문사이트주소').submit();
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