<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- inc/dateTerm.jsp -->
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jquery-ui.css'/>">

<script type="text/javascript" 
src="<c:url value='/jquery/jquery-ui.min.js'/>"></script>

<script type="text/javascript">
	$(function(){
		$.setToday();
			
		$.applyDatePicker("#startDay");
		$.applyDatePicker("#endDay");		
		
	});

	$.settingTerm=function(type, term){
		//종료일 기준으로 7일전, 1개월전, 3개월전 날짜를 구해서
		//시작일에 셋팅하기
		var arr = $('#endDay').val().split('-'); //2017-12-29
		var endDate = new Date(arr[0], arr[1]-1, arr[2]);
		//new Date(년,월,일) => 해당 연 월 일의 날짜를 생성
		
		if(type=="d"){
			endDate.setDate(endDate.getDate()-term);
		}else if(type=="m"){
			endDate.setMonth(endDate.getMonth()-term);			
		}
		
		$('#startDay').val($.convertDate(endDate));
	}
	
	$.applyDatePicker=function(id){
		$(id).datepicker({
			dateFormat:"yy-mm-dd",
			changeYear:true,
			dayNamesMin:['일','월','화','수','목','금','토'],
			monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월',
				'10월','11월','12월']
		});
	}
	
	$.setToday=function(){
		var startDay = $('#startDay').val();
		
		//처음 페이지 로드시 현재날짜 셋팅하기
		if(startDay==null || startDay==''){
			var today = new Date();
			var str = $.convertDate(today); 
			
			$('#startDay').val(str);
			$('#endDay').val(str);			
		}
	}	
	
	$.convertDate=function(date){
		return date.getFullYear()+"-"+$.formatDate(date.getMonth()+1)+"-"
		 + $.formatDate(date.getDate());
	}
	
	$.formatDate = function(d){
		var result=d;
		if(d<10){
			result="0"+d;
		}
		return result;
	}	
	
</script>
	<input style="width:100px; text-align: center;" type="text" name="startDay" id="startDay" 
		value="${dateSearchVO.startDay }"> 
	~ 
	<input style="width:100px; text-align: center;" type="text" name="endDay" id="endDay" 
		value="${dateSearchVO.endDay }">
