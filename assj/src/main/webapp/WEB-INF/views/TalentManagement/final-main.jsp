<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link rel="stylesheet" href="<c:url value='/css/Search-TS.css'/>">
<html>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script type="text/javascript">
$(function(){
	$('.001').addClass('select');
	$('.occupation').hide();
	$('.alldetail_table').hide();
	$('.hope-occupation').hide();
	$('.area').hide();
	$('.o1').show();
	

	
	$('#slef2').hide();//경력 나이부분 디테일
	$('#career_detail').hide();//직종 부분 디테일
						//alldetail - 상세보기 디테일
	
	$('.career-old').hide();
	$('.occupation').hide();
	$('.education').hide();
	$('.sectors').hide();
	$('.workingStyle').hide();
	$('.rank').hide();
	
	$('.img-opa').attr('style','opacity:1');
	$('.img-opa').children().attr('style','opacity:0.3');
	$('.img-opa').children().first().attr('style','opacity:1');
	
	$('#all').click(function(){ //상세보기 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.all').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#career-old').click(function(){//경력 나이 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.career-old').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#occupation').click(function(){//직종구분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.occupation').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	$('#education').click(function(){//학력 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.education').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#area').click(function(){//학력 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.area').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#sectors').click(function(){//지역 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.sectors').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#workingStyle').click(function(){//근무형태 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.workingStyle').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#rank').click(function(){//직급형태 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.rank').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});

	//직종구분에서의 옵션 클릭 이벤트- 시작
	 $('.001').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o1').show();
	});
	$('.002').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o2').show();
	});
	$('.003').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o3').show();
	});
	$('.004').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o4').show();
	});
	$('.005').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o5').show();
	});
	$('.006').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o6').show();
	});
	$('.007').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o7').show();
	});
	$('.008').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o8').show();
	});
	$('.009').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o9').show();
	});
	$('.010').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o10').show();
	});
	$('.011').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o11').show();
	});
	$('.012').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o12').show();
	});
	//직종구분에서의 옵션 클릭 이벤트- 끝
	
	
	$('.select_list').click(function(){
		$(this).attr('style','background:#f4f4f4');
	});
	
	//직책-직급부분 -시작
	$('#more-rank').click(function(){
		$('#more-rank').hide();
		$('#rank').css('display','block');
	});
	
	$('#close-rank').click(function(){
		$('#more-rank').show();
		$('#rank').css('display','none');
	});
	
	$('#more-position').click(function(){
		$('#more-position').hide();
		$('#position').css('display','block');
	});
	
	$('#close-position').click(function(){
		$('#more-position').show();
		$('#position').css('display','none');
	});
	//직책-직급부분 -끝
	$('.major_02').hide();
	$('#edu_sch').parent().css('background','#fff');
	
	
	//학력 부분
	$('#edu_sch').click(function(){
		$('#major_sch').parent().css('background','#f4f4f4');
		$('.major_01').show();
		$('.major_02').hide();
		$(this).parent().css('background','#fff');
		
	});
	$('#major_sch').click(function(){
		$('#edu_sch').parent().css('background','#f4f4f4');
		$('.major_02').show();
		$('.major_01').hide();
		$(this).parent().css('background','#fff');
	});
	
	$('#search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('#search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	
	//지역부분
	$('.area-2-detail').hide();
	$('#area-1').addClass('select');
	
	$('#area-1').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.area-2-detail').hide();
		$('.area-1-detail').show();
	});
	$('#area-2').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.area-1-detail').hide();
		$('.area-2-detail').show();
	});
	
	//직급부분
	$('.more-rank').click(function(){
		$('.more-rank').hide();
		$('.ranks').css('display','block');
	});
	
	$('.close-rank').click(function(){
		$('.more-rank').show();
		$('.ranks').css('display','none');
	});
	
	$('.more-position').click(function(){
		$('.more-position').hide();
		$('.position').css('display','block');
	});
	
	$('.close-position').click(function(){
		$('.more-position').show();
		$('.position').css('display','none');
	});
	
	
	//버튼 변화
	$('.search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('.search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	
	
	//Rank 버튼 클릭 실험
	$('.rankSelectVal>li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				$(this).removeClass('select');
			}else{
				$(this).addClass('select');
				alert($(this).val());
			}
		})
	});
	
});
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background:#f4f4f4;">
<div class="talentedsearchcontainer">
	<div class="TScontent">
		<div style="width:100%;height:3em; padding-left:6em; padding-bottom:1em;">
			<select class="one-list">
				<option>전체</option>
				<option>회사명</option>
				<option>직종</option>
				<option>업종</option>
				<option>학교명</option>
				<option>전공계열/학과</option>
				<option>이력서내용</option>
				<option>이력서번호</option>
			</select>
			&nbsp;
			&nbsp;
			<input class="one-text-search" type="text" style="display: inline-block;">
			<input class="one-button search-button" type="button" value="검색">
		</div>
		<div class="TSarea"><!-- 검색바 전체 디브 -->
				<div class="TSpanel"><!--윗부분  -->
					<ul class="optionbar">
						<li><a href="#" id="all" class="img-opa"><img src="<c:url value='/icon/magnifying glass.jpeg'/>">상세검색</a></li><!-- 상세검색 -->
						<li><a href="#" id="career-old" class="img-opa"><img src="<c:url value='/icon/TEAM.jpeg'/>">경력/성별</a></li><!--경력,성별,나이  -->
						<li><a href="#" id="occupation" class="img-opa"><img src="<c:url value='/icon/bag.jpeg'/>">직종</a></li><!--직종  -->
						<li><a href="#" id="education" class="img-opa"><img  src="<c:url value='/icon/school.jpeg'/>">학력</a></li><!--학력  -->
						<li><a href="#" id="area" class="img-opa"><img  src="<c:url value='/icon/Destination 1.jpeg'/>">지역</a></li><!--지역  -->
						<li><a href="#" id="sectors" class="img-opa"><img  src="<c:url value='/icon/building.jpeg'/>">업종</a></li><!--업종  -->
						<li><a href="#" id="workingStyle" class="img-opa"><img  src="<c:url value='/icon/money.jpeg'/>">근무형태</a></li><!--근무형태,급여  -->
						<li><a href="#" id="rank" class="img-opa"><img  src="<c:url value='/icon/businesscard.jpeg'/>">직급/직책</a></li><!--직급,직책  -->
					</ul>
					<div id="alldetail" class="TSoption" style="margin-top:1em;">
						<!-- 간단보기 부분 -->
						<c:import url="/TalentManagement/all.do"></c:import>
						<!-- 경력/나이 부분 -->
						<c:import url="/TalentManagement/CareerOrOld.do"></c:import>
						<!-- 희망 직종 부분 -->
						<c:import url="/TalentManagement/hopeOccupation.do"></c:import>
						<!-- 학력 부분 -->
						<c:import url="/TalentManagement/education.do"></c:import>
						<!-- 지역 부분 -->
						<c:import url="/TalentManagement/area.do"></c:import>
						<!-- 업종 부분 -->
						<c:import url="/TalentManagement/sectors.do"></c:import>
						<!-- 근무형태 부분 -->
						<c:import url="/TalentManagement/workingStyle.do"></c:import>
						<!-- 랭크 부분 -->
						<c:import url="/TalentManagement/rank.do"></c:import>
					</div><!-- TSoption -->
				</div><!-- TSpanel -->
		</div>
		<div class="TSdetail" style="float:left;width:70%; margin-left: 5em;"><!-- 게시판 형태의 이력서 간단 보기 -->
			<div class="col-div-100-10" style="padding: 1em; text-align: right;">
				<select class="one-list" id="HowManyRead">
				<option value="10">10개씩 보기</option>
				<option value="20">20개씩 보기</option>
				<option value="30">30개씩 보기</option>
				<option value="50">50개씩 보기</option>
				<option value="100">100개씩 보기</option>
			</select>
			</div>
			
			<!-- 이력서 부분 -->
			<c:import url="/TalentManagement/resume.do"></c:import>
			
			
			
		</div><!-- TSdetail -->
		<div class="TSside" style="position:relative;float:left; text-align: center; border:1px solid #b8b8b8; border-radius: 10px 10px 40px 40px;"><!-- 오른쪽 사이드바 -->
			<div class="col-div-80-15 side-manu" style="border-radius: 1em;">
				<span class="chbox-span" style="color:#5B5B5B; padding-top:0.4em;">최근 본 공고</span>&nbsp;&nbsp;<span class="chbox-span" style="cursor: pointer; color:#ff3c00;">0건</span>
			</div>
			<div class="col-div-80-20 side-manu" style="background:#92a2f4; border-radius: 1em; color:white; padding-top:1.1em; border:1px solid #6b80f1; cursor: pointer;">
				<span>기업회원로그인</span>
			</div>
			<div class="col-div-80-20 side-manu" style="background:#45b7ad; border-radius: 1em; color:white; padding-top:1.1em; cursor: pointer;">
				<span>일반회원로그인</span>
			</div>
		</div><!-- TSside -->
	</div><!--TScontent  -->
</div>
</body>
</html>