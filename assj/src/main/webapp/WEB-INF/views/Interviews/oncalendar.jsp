<%@page import="com.hy.assj.common.DateSearchVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<c:url value='/codebase/dhtmlxscheduler.css'/>">
<script src="<c:url value='/codebase/dhtmlxscheduler.js'/>"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<script type="text/javascript">
$(function(){
	$('.search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('.search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	
	$('.fors').click(function(){
		location.href="<c:url value='/Interviews/forinterview.do'/>";
	});
	
	$('#goselect').click(function(){
		window.open('<c:url value="/Interviews/interviewdate.do"/>',' ','width=475, height=600, top=300, left=650, location=no,menubar=no, status=no, toolbar=no');
	});
	
	
});
</script>
<link rel="stylesheet" href="<c:url value='/codebase/dhtmlxscheduler.css'/>">
<script type="text/javascript">
window.onload=function(){
	
	scheduler.config.xml_date="%Y-%m-%d %H:%i";
	scheduler.config.time_step = 30;
	scheduler.config.multi_day = true;
	scheduler.locale.labels.section_subject = "Subject";
	scheduler.config.first_hour = 6;
	scheduler.config.limit_time_select = true;
	scheduler.config.details_on_dblclick = true;
	scheduler.config.details_on_create = true;
	 scheduler.config.buttons_left = [];
	 scheduler.config.buttons_right = ["dhx_cancel_btn"];

	scheduler.templates.event_class=function(start, end, event){
		var css = "";

		if(event.subject) // if event has subject property then special class should be assigned
			css += "event_"+event.subject;

		if(event.id == scheduler.getState().select_id){
			css += " selected";
		}
		return css; // default return

		/*
			Note that it is possible to create more complex checks
			events with the same properties could have different CSS classes depending on the current view:

			var mode = scheduler.getState().mode;
			if(mode == "day"){
				// custom logic here
			}
			else {
				// custom logic here
			}
		*/
	};

	var subject = [
		{ key: '', label: '면접형태선택' },
		{ key: '1차 면접', label: '1차 면접' },
		{ key: '2차 면접', label: '2차 면접' },
		{ key: '3차 면접', label: '3차 면접' },
		{ key: '4차 면접', label: '4차 면접' },
		{ key: '단독면접', label: '단독면접' },
		{ key: '집단면접', label: '집단면접' },
		{ key: '최종 면접', label: '최종 면접' },
		{ key: '최종 합격', label: '최종 합격' }
	];

	scheduler.config.lightbox.sections=[
		{name:"면접명", height:25, type:"textarea", options: subject, map_to:"title" },
		{name:"현 지원자 상태", height:25, type:"textarea", options: subject, map_to:"content" },
		{name:"비고", height:80, type:"textarea", options: subject, map_to:"df" },
		{name:"제목", height:25, type:"text", options: subject, map_to:"text" }
	];
	
	scheduler.init('scheduler_here', new Date(), "month");

	scheduler.parse([
		<c:if test="${!empty list}">
			<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
				<c:set var="vo" value="${list[i]}"/>
				{ start_date: "${vo['INTERV_START']}", end_date: "${vo['INTERV_END']}",  title: "${vo['HN_NOTITITLE']} 부분", content:"${vo['ES_STATUS']}", text: "${vo['MEM_NAME']} 님,  ${vo['INTERV_LOC']}", df: "${vo['INTERV_REMARK']}" }
				<c:if test="${i!=fn:length(list)-1}">,</c:if>
			</c:forEach>
		</c:if>
	], "json");
	
};
</script>

<style type="text/css">
		html, body{
			margin:0;
			padding:0;
			height:100%;
		}

		.dhx_cal_event div.dhx_footer,
		.dhx_cal_event.past_event div.dhx_footer,
		.dhx_cal_event.event_english div.dhx_footer,
		.dhx_cal_event.event_math div.dhx_footer,
		.dhx_cal_event.event_science div.dhx_footer{
			background-color: transparent !important;
		}
		.dhx_cal_event .dhx_body{
			-webkit-transition: opacity 0.1s;
			transition: opacity 0.1s;
			opacity: 0.7;
		}
		.dhx_cal_event .dhx_title{
			line-height: 12px;
		}
		.dhx_cal_event_line:hover,
		.dhx_cal_event:hover .dhx_body,
		.dhx_cal_event.selected .dhx_body,
		.dhx_cal_event.dhx_cal_select_menu .dhx_body{
			opacity: 1;
		}

		.dhx_cal_event.event_math div, .dhx_cal_event_line.event_math{
			background-color: orange !important;
			border-color: #a36800 !important;
		}
		.dhx_cal_event_clear.event_math{
			color:orange !important;
		}

		.dhx_cal_event.event_science div, .dhx_cal_event_line.event_science{
			background-color: #36BD14 !important;
			border-color: #698490 !important;
		}
		.dhx_cal_event_clear.event_science{
			color:#36BD14 !important;
		}

		.dhx_cal_event.event_english div, .dhx_cal_event_line.event_english{
			background-color: #FC5BD5 !important;
			border-color: #839595 !important;
		}
		.dhx_cal_event_clear.event_english{
			color:#B82594 !important;
		}
		.dhx_cal_light, .dhx_cal_light_wide{
			height:530px;
		}
	</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../company/cTop.jsp" %>
<link rel="stylesheet" href="<c:url value='/css/Search-TS.css'/>">
<div class="interview-container" style="margin-bottom:20em;">
	<div class="none-select"style="width:20%; height:70px; border-bottom:1px solid black; float:left;">
	</div>
	<div class="interview-top" style="width:60%; height:70px;float:left;">
		<div class="col-div-50-100 inter-select cals" style="margin:0 auto;color:#505050; margin-bottom:1em;">
			<img><span class="interview-title">면접캘린더</span>
		</div>
		<div class="col-div-50-100 none-select" style="margin:0 auto;color:#505050; margin-bottom:1em;">
			<img><span class="interview-title fors">면접대상자</span>
		</div>
	</div>
	<div class="none-select"style="width:20%; height:70px; border-bottom:1px solid black; float:left;">
		
	</div>
	<div class="interview-artic" style="width:100%; height:1000px; box-sizing: border-box;">
		<!-- 윗 부분 -->
		<div class="col-div-80-20" style="height:60px;padding-top:15px; padding-left:2em;margin-left: 8em;">
			<div class="col-div-10-100" style="float:right; margin-bottom:1em; margin-right:1em;">
				<button class="one-button search-button" id="goselect" style="width:10em;margin-bottom:0.2em; "> 면접 등록 </button>		
			</div>
		</div>
		<div class="col-div-80-20 rele-titles">
			<label><input type="radio" name="interview-type">전체</label>&nbsp;&nbsp;
			<label><input type="radio" name="interview-type">단독면접</label>&nbsp;&nbsp;
			<label><input type="radio" name="interview-type">그룹면접</label>
		</div>
		<div id="scheduler_here" class="dhx_cal_container" style='width:100%; height:100%;'>
		<div class="dhx_cal_navline">
			<div class="dhx_cal_prev_button">&nbsp;</div>
			<div class="dhx_cal_next_button">&nbsp;</div>
			<div class="dhx_cal_today_button"></div>
			<div class="dhx_cal_date"></div>
			<div class="dhx_cal_tab" name="month_tab" style="right:10px; left:40px;"></div>
		</div>
		<div class="dhx_cal_header">
		</div>
		<div class="dhx_cal_data">
		</div>		
	</div>
	</div>
</div>
	<form action="">
		<input type="text" id="startDay">
		<input type="text" id="endDay">
		<input type="text" id="text">
		<input type="text" id="member">
		<input type="text" id="category">
	</form>
<%@include file="../index/footer.jsp" %>
</body>
<script type="text/javascript">
$(function(){
	$('.search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('.search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	
	$('.fors').click(function(){
		location.href="<c:url value='/Interviews/forinterview.do'/>";
	});
	
	$(".dhx_cal_ltitle").on("click",function(){
		alert('ddd');
		event.preventDefault();
	});
	
});
</script>
</html>