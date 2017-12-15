<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="css/Search-TS.css">
<html>
<script type="text/javascript" src="jQuery/jquery-3.2.1.min.js"></script>
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
						<li><a href="#" id="all" class="img-opa"><img src="icon/magnifying glass.jpeg">상세검색</a></li><!-- 상세검색 -->
						<li><a href="#" id="career-old" class="img-opa"><img src="icon/TEAM.jpeg">경력/성별</a></li><!--경력,성별,나이  -->
						<li><a href="#" id="occupation" class="img-opa"><img src="icon/bag.jpeg">직종</a></li><!--직종  -->
						<li><a href="#" id="education" class="img-opa"><img  src="icon/school.jpeg">학력</a></li><!--학력  -->
						<li><a href="#" id="area" class="img-opa"><img  src="icon/Destination 1.jpeg">지역</a></li><!--지역  -->
						<li><a href="#" id="sectors" class="img-opa"><img  src="icon/building.jpeg">업종</a></li><!--업종  -->
						<li><a href="#" id="workingStyle" class="img-opa"><img  src="icon/money.jpeg">근무형태</a></li><!--근무형태,급여  -->
						<li><a href="#" id="rank" class="img-opa"><img  src="icon/businesscard.jpeg">직급/직책</a></li><!--직급,직책  -->
					</ul>
					<div id="alldetail" class="TSoption" style="margin-top:1em;">
						<div class="TStopion_div option_flo all" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;"><!-- 상세보기 부분 -->
							<div class="col-div-33-100" style="border-right:1px solid #b8b8b8;"><!-- 경력/나이 및 성별 부분 -->
								<div class="col-div-100-50">
									<div class="col-div-100-20" style="border-bottom:1px solid #b8b8b8;">
										<h3 class="content_title">경력</h3>
									</div>
									<div class="col-div-100-80">
										<div class="col-div-100-50" style="padding-top:1em; padding-left:1em; text-align: center;">
											<input id="career" class="mini-checkbox" type="checkbox"><label for="career">경력</label>
											<input id="newcomer" class="mini-checkbox" type="checkbox"><label for="newcomer">신입</label>
											<input id="none" class="mini-checkbox" type="checkbox"><label for="none">무관</label>
										</div>
										<div class="col-div-100-50" style="padding-top:0.5em;text-align: center;">
											<select class="one-list">
												<option>선택</option>
												<option>1년 이상</option>
												<option>2년 이상</option>
												<option>3년 이상</option>
												<option>4년 이상</option>
												<option>5년 이상</option>
												<option>6년 이상</option>
												<option>7년 이상</option>
											</select>
											~
											<select class="one-list">
												<option>선택</option>
												<option>1년 이하</option>
												<option>2년 이하</option>
												<option>3년 이하</option>
												<option>4년 이하</option>
												<option>5년 이하</option>
												<option>6년 이하</option>
												<option>7년 이하</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-div-100-50">
										<div class="col-div-100-20" style="border-top:1px solid #b8b8b8;border-bottom:1px solid #b8b8b8;">
											<h3 class="content_title">성별 및 나이</h3>
										</div>
										<div class="col-div-100-80">
										<div class="col-div-100-50" style="padding-top:1em;padding-left:1em; text-align: center;">
											<input id="m" class="mini-checkbox" type="checkbox"><label for="m">남자</label>
											<input id="f" class="mini-checkbox" type="checkbox"><label for="f">여자</label>
										</div>
										<div class="col-div-100-50" style="padding-top:0.5em;text-align: center;">
											<select class="one-list">
												<option>선택</option>
												<option>20살</option>
												<option>21살</option>
												<option>22살</option>
												<option>23살</option>
												<option>24살</option>
												<option>25살</option>
												<option>26살</option>
											</select>
											~
											<select class="one-list">
												<option>선택</option>
												<option>20살</option>
												<option>21살</option>
												<option>22살</option>
												<option>23살</option>
												<option>24살</option>
												<option>25살</option>
												<option>26살</option>
											</select>
										</div>
									</div>
								</div>
							</div><!-- 경력/나이 및 성별 부분 끝-->
							<div class="col-div-33-100" style="border-right:1px solid #b8b8b8;">
								<div class="col-div-100-10" style="border-bottom:1px solid #b8b8b8;">
										<h3 class="content_title">학력</h3>
								</div>
								<div class="col-div-100-20" style="text-align: center; padding-top:1em; padding-left:1.5em;">
									<input id="domestic" type="checkbox"><label for="domestic">국내</label>
									<input id="overseas" type="checkbox"><label for="overseas">국외</label>
								</div>
								<div class="col-div-100-50" style="text-align: center; padding-left:7.5em;">
									<ul class="col-ul-100-100">
										<li class="col-li-70">대학교 4년</li>
										<li class="col-li-70">대학교 2,3년</li>
										<li class="col-li-70">대학원 석/박사</li>
										<li class="col-li-70">고등학교 이하</li>
									</ul>
								</div>
								<div class="col-div-100-20" style="padding-top:1.5em;padding-left:1.5em; text-align: center;">
									<input id="mercy" type="checkbox"><label for="mercy">재학·휴학·수료·중퇴·자퇴 제외</label>
								</div>
							</div>
							<div class="col-div-33-100">
								<div class="col-div-100-10" style="border-bottom:1px solid #b8b8b8;">
									<h3 class="content_title">희망근무지역</h3>
								</div>
								<div class="col-div-100-90" style="overflow-y:scroll;">
									<ul class="col-ul-100-100">
										<li class="col-li-70-nb" style="height:4.2em;">서울</li>
										<li class="col-li-70-nb" style="height:4.2em;">경기</li>
										<li class="col-li-70-nb" style="height:4.2em;">광주</li>
										<li class="col-li-70-nb" style="height:4.1em;">대구</li>
										<li class="col-li-70-nb">대전</li>
										<li class="col-li-70-nb">부산</li>
										<li class="col-li-70-nb">울산</li>
										<li class="col-li-70-nb">인천</li>
										<li class="col-li-70-nb">강원</li>
										<li class="col-li-70-nb">경남</li>
										<li class="col-li-70-nb">경북</li>
										<li class="col-li-70-nb">전남</li>
										<li class="col-li-70-nb">전북</li>
										<li class="col-li-70-nb">충북</li>
										<li class="col-li-70-nb">충남</li>
										<li class="col-li-70-nb">제주</li>
										<li class="col-li-70-nb">세종</li>
										<li class="col-li-70-nb">전국</li>
									</ul>
								</div>
							</div>
						</div><!-- 상세보기 끝 -->
						
						<div class="TStopion_div option_flo career-old" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;"><!-- 경력/나이 부분 시작 -->
							<div class="col-div-50-100" style="border-right:1px solid #b8b8b8;">
								<div class="col-div-100-50">
									<div class="col-div-30-100" style="padding-top:60px; text-align: right;">
										<strong class="title_strong" style="margin: 0;  text-align: right;">경력</strong>
									</div>
									<div class="col-div-70-100" style="padding-top:60px;padding-left:9em;">
										<input id="career1" class="one-checkbox" type="checkbox"><label for="career1">경력</label>
										<input id="newcomer1" class="one-checkbox" type="checkbox"><label for="newcomer1">신입</label>
										<input id="none1" class="one-checkbox" type="checkbox"><label for="none1">무관</label>
									</div>
								</div>
								<div class="col-div-100-50">
									<div class="col-div-30-100" style="text-align: right;">
										<strong class="title_strong" style="margin: 0;">총 경력일</strong>
									</div>
									<div class="col-div-70-100" style="padding-left:6em;">
										<select class="one-list" style="height: 3em; width: 10em;">
											<option>선택</option>
											<option>1년 이상</option>
											<option>2년 이상</option>
											<option>3년 이상</option>
											<option>4년 이상</option>
											<option>5년 이상</option>
											<option>6년 이상</option>
											<option>7년 이상</option>
										</select> ~ 
										<select class="one-list" style="height: 3em; width: 10em;">
											<option>선택</option>
											<option>1년 이하</option>
											<option>2년 이하</option>
											<option>3년 이하</option>
											<option>4년 이하</option>
											<option>5년 이하</option>
											<option>6년 이하</option>
											<option>7년 이하</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-div-50-100">
								<div class="col-div-100-50">
									<div class="col-div-30-100" style="padding-top:60px; text-align: right;">
										<strong class="title_strong" style="margin: 0;  text-align: right;">성별</strong>
									</div>
									<div class="col-div-70-100" style="padding-top:60px;padding-left:12em;">
										<input id="m1" class="one-checkbox" type="checkbox"><label for="m1">남자</label>
										<input id="f1" class="one-checkbox" type="checkbox"><label for="f1">여자</label>
									</div>
								</div>
								<div class="col-div-100-50">
									<div class="col-div-30-100" style="text-align: right;">
										<strong class="title_strong" style="margin: 0;">나이</strong>
									</div>
									<div class="col-div-70-100" style="padding-left:6em;">
										<select class="one-list"  style="height: 3em; width: 10em;">
											<option>선택</option>
											<option>20살</option>
											<option>21살</option>
											<option>22살</option>
											<option>23살</option>
											<option>24살</option>
											<option>25살</option>
											<option>26살</option>
										</select> ~ 
										<select class="one-list"  style="height: 3em; width: 10em;">
											<option>선택</option>
											<option>20살</option>
											<option>21살</option>
											<option>22살</option>
											<option>23살</option>
											<option>24살</option>
											<option>25살</option>
											<option>26살</option>
										</select>
									</div>
								</div>
							</div>
						</div><!--TStopion_div option_flo car-old  --><!--경력/나이 부분 끝 -->
						
						
						<div class="TStopion_div option_flo occupation" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;"><!-- 희망직종 -->
							<div class="col-div-30-100">
								<div class="col-div-100-10">
									<h3 class="content_title">직종구분</h3>
								</div>
								<div class="col-div-100-90">
									<div class="col-div-100-100 occupation-choose" style="overflow:hidden;">
									<ul class="col-ul-50-100">
										<li class="001 col-li-for-occupation">경영·사무</li>
										<li class="003 col-li-for-occupation">영업·고객상담</li>
										<li class="005 col-li-for-occupation">생산·제조</li>
										<li class="007 col-li-for-occupation">IT·인터넷</li>
										<li class="009 col-li-for-occupation">전문직</li>
										<li class="011 col-li-for-occupation">교육</li>
									</ul>
									<ul class="col-ul-50-100">
										<li class="002 col-li-for-occupation">특수계층·공공</li>
										<li class="004 col-li-for-occupation">건설</li>
										<li class="006 col-li-for-occupation">무역·유통</li>
										<li class="008 col-li-for-occupation">서비스</li>
										<li class="010 col-li-for-occupation">디자인</li>
										<li class="012 col-li-for-occupation">의료</li>
									</ul>
								</div>
								</div>
							</div>
							<div class="col-div-70-100">
								<div class="col-div-100-10" style="border-left:1px solid #b8b8b8; border-bottom:1px solid #b8b8b8;">
									<h3 class="content_title">희망직종</h3>
								</div>
								<div class="col-div-100-90">
									<div class="o1 col-div-100-100 hope-occupation">
										<ul class="col-ul-100-100">
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">기획전략경영</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">총무법무사무</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">경리출납결산</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">홍보pr사보</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">비서안내수행원</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">사무보조문서작성</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">인사교육노무</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">회계재무세무IR</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">마케팅광고분석</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">전시컨벤션세미나</span></label></div></li>
										</ul>
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o2 col-div-100-100 hope-occupation">
										<ul class="col-ul-100-100">
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">중장년고령인실버</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">장애인국가유공자</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">병역특례</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">공무원</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">사회복지요양봉사</span></label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox"><span class="chbox-span">장교군인부사관</span></label></div></li>
										</ul>
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o3 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o4 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o5 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o6 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o7 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o8 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o9 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o10 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o11 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o12 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								</div>
							</div>
						</div><!--TStopion_div option_flo car-old  --><!--희망직종 부분 끝 -->
						
						<div class="TStopion_div option_flo education" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;">		
							<div class="div-li-padding" style="height: 100%;width:20%; float:left; background:#f4f4f4;">
								<ul class="col-ul-100-100">
									<li class="col-li-1 bt-bl-br-none" style="height:3.3em;"><a href="#" id="edu_sch">최종학력/학교</a></li>
									<li class="col-li-1 bt-bl-br-none" style="height:3.3em;"><a href="#" id="major_sch">전공계열/학과</a></li>
								</ul>
							</div>
						<div class="major_02 col-div-80" style="border: 1px solid #888;">
							<div class="col-div-100-100">
								<div class="col-div-100-70" style="text-align:left; overflow-y: scroll; border-left:1px solid #b8b8b8;">
									<ul class="col-ul-100-100">
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="1">어문학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="2">영어/영문</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="3">중어/중문</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="4">일어/일문</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="5">국어/국문</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="6">인문과학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="7">사회과학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="8">상경계열</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="9">경제/경영</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="10">회계학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="11">법학계열</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="12">사범계열</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="13">종교학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="14">생활과학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="15">예/체능</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="16">자연과학계열</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="17">농수산/해양/축산</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="18">수학/통계학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="19">물리/천문/기상학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="20">화학/생물</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="21">공학계열</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="22">전기/전자/정보통신</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="23">컴퓨터/시스템공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="24">금속/비금속공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="25">생명/화학/환경</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="26">도시/토목/건축공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="27">에너지/원자력공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="28">산업/자동차/우주공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="29">기계/조선/항공공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="30">신소재/재료</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="31">식품/유전/안전공학</label></li>
										<li class="col-li-4-br"><label><input class="mini-checkbox" type="checkbox" id="32">기타</label></li>
									</ul>
								</div>
								<div class="col-div-100-30" style="border:1px solid #b8b8b8; border-bottom:none;padding-top:1.5em; text-align: center;">
									<strong class="strong">학점</strong><input class="one-text" type="text">&nbsp;&nbsp;<input class="one-button"  type="button" value="추가">
								</div>
							</div>
						</div><!-- 희망 직족 자세한 옵션선택 부분 -->
						<div class="major_01 col-div-80"  style="border: 1px solid #888;">
							<div class="col-div-30" style="border-left:1px solid #b8b8b8;border-right:1px solid #b8b8b8; padding-top:4em;">
								<ul class="col-ul-100-100" style="height:60%; text-align: center;">
									<li class="col-li-1 bb-none" style="width:80%;margin-left:2.2em;"><a href="#">대학교 4학년</a></li>
									<li class="col-li-1 bt-none" style="width:80%;margin-left:2.2em;"><a href="#">대학교(2,3년)</a></li>
									<li class="col-li-1 bt-none" style="width:80%;margin-left:2.2em;"><a href="#">대학원(석/박사)</a></li>
									<li class="col-li-1 bt-none" style="width:80%;margin-left:2.2em;"><a href="#">고등학교</a></li>
									<li class="col-li-1" style="border:none;  padding-left:1em;">
									<label style="font-size:1em;"><input type="checkbox" style="vertical-align: sub;display: inline-block; ">재학·휴학·수료·중퇴·자퇴 제외</label>
									</li>
								</ul>
							</div>
							<div class="col-div-70">
								<div class="col-div-100-50" style="height:35%;">
									<div class="col-div-30" style="width:20%;  text-align:left; padding-left:2em;">
										<strong style="line-height:107px ">학교명</strong>
									</div>
									<div class="col-div-70" style="line-height:107px; text-align:center; width:80%;">
										<select class="one-list">
											<option>대학교(4년)</option>
											<option>대학교(2,3년)</option>
											<option>대학원(석/박사)</option>
											<option>고등학교</option>
											<option>전체</option>
										</select>
										<input class="one-text" type="text">
										<input class="one-button search-button" type="button" value="추가">
									</div>
								</div>
								<div class="col-div-100-50">
									<div class="col-div-30" style="width:20%; padding-top:1.5em; text-align:left; padding-left:2em;">
										<strong>자주 찾는 학교</strong>
									</div>
									<div class="col-div-70" style="padding-right:3em; text-align:center; width:80%;">
										<ul class="col-ul-1">
											<li class="col-li-3"><a href="#">서울대학교</a></li>
											<li class="col-li-3"><a href="#">연세대학교</a></li>
											<li class="col-li-3"><a href="#">고려대학교</a></li>
											<li class="col-li-3"><a href="#">서강대학교</a></li>
											<li class="col-li-3"><a href="#">한양대학교</a></li>
											<li class="col-li-3"><a href="#">이화여자대학교</a></li>
											<li class="col-li-3"><a href="#">KAIST</a></li>
											<li class="col-li-3"><a href="#">포항공과대학교</a></li>
											<li class="col-li-3"><a href="#">성균관대학교</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div><!-- 희망 직족 자세한 옵션선택 부분 -->
						</div><!--TStopion_div option_flo education -->
						
						<div class="TStopion_div option_flo area" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;">		
							<div style="height: 100%;width:20%; float:left;">
								<div class="col-div-100-10" style="border-bottom:1px solid #b8b8b8;">
									<h3 class="content_title">지역</h3>
								</div>
								<div class="col-div-100-90 div-li-padding area-select" style="overflow-y:scroll">
									<ul class="col-ul-100-100">
										<li id="area-1" class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#">서울</a></li>
										<li id="area-2" class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#">경기</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-3">광주</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-4">대구</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-5">대전</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-6">부산</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-7">울산</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-8">인천</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-9">강원</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-10">경남</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-12">경북</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-13">전남</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-14">전북</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-15">충북</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-16">충남</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-17">제주</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-18">세종</a></li>
										<li class="col-li-1 bt-bl-br-none noChoose" style="height:3.3em;"><a href="#" id="area-19">전국</a></li>
									</ul>
								</div>
							</div>
						<div class="area-1-detail col-div-80">
							<div class="col-div-100-100">
								<div class="col-div-100-100" style="text-align:left; overflow-y: scroll; border-left:1px solid #b8b8b8;">
									<ul class="col-ul-100-100">
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a1-1"><label for="a1-1">강남구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a1-2"><label for="a1-2">강동구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a1-3"><label for="a1-3">강북구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a1-4"><label for="a1-4">강서구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a1-5"><label for="a1-5">관악구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a1-6"><label for="a1-6">광진구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="7"><label for="7">구로구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="8"><label for="8">금천구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="9"><label for="9">노원구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="10"><label for="10">도봉구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="11"><label for="11">동대문구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="12"><label for="12">동작구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="13"><label for="13">마포구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="14"><label for="14">서대문구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="15"><label for="15">서초구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="16"><label for="16">성동구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="17"><label for="17">성북구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="18"><label for="18">송파구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="19"><label for="19">양천구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="20"><label for="20">영등포구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="21"><label for="21">용산구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="22"><label for="22">은평구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="23"><label for="23">종로구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="24"><label for="24">중구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="25"><label for="25">중랑구</label></li>
									</ul>
								</div>
							</div>
						</div><!-- 희망 직족 자세한 옵션선택 부분 -->
						
						<div class="area-2-detail col-div-80">
							<div class="col-div-100-100">
								<div class="col-div-100-100" style="text-align:left; overflow-y: scroll; border-left:1px solid #b8b8b8;">
									<ul class="col-ul-100-100">
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a2-1"><label for="a2-1">가평군</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a2-2"><label for="a2-2">고양시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a2-3"><label for="a2-3">고양시 덕양구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a2-4"><label for="a2-4">고양시 일산동구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a2-5"><label for="a2-5">고양시 일산서구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="a2-6"><label for="a2-6">과천시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="7"><label for="7">광명시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="8"><label for="8">광주시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="9"><label for="9">구리시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="10"><label for="10">군포시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="11"><label for="11">김포시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="12"><label for="12">남양주시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="13"><label for="13">동두천시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="14"><label for="14">부천시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="15"><label for="15">부천시 소사구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="16"><label for="16">부천시 오정구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="17"><label for="17">부천시 원미구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="18"><label for="18">성남시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="19"><label for="19">성남시 분당구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="20"><label for="20">성남시 수정구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="21"><label for="21">성남시 중원구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="22"><label for="22">수원시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="23"><label for="23">수원시 권선구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="24"><label for="24">수원시 영통구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="25"><label for="25">수원시 장안구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="26"><label for="26">수원시 팔달구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="27"><label for="27">시흥시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="28"><label for="28">안산시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="29"><label for="29">안산시 단원구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="30"><label for="30">안산시 상록구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="31"><label for="31">안성시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">안양시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">안양시 동안구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">안양시 만안구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">양주시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">양평군</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">여주시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">연천군</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">오산시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">용인시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">용인시 기흥구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">용인시 수지구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">용인시 처인구</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">의왕시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">의정부시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">이천시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">파주시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">평택시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">포천시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">하남시</label></li>
										<li class="col-li-4-br"><input class="mini-checkbox" type="checkbox" id="32"><label for="32">화성시</label></li>
									</ul>
								</div>
							</div>
						</div><!-- 희망 직족 자세한 옵션선택 부분 -->
					</div><!--TStopion_div option_flo 지역별 끝 -->
					
					<div class="TStopion_div option_flo sectors" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;"><!-- 경력/나이 부분 시작 -->
							<div class="col-div-30-100">
								<div class="col-div-100-10">
									<h3 class="content_title">업종구분</h3>
								</div>
								<div class="col-div-100-90">
									<div class="col-div-100-100 occupation-choose" style="overflow:hidden;background:#f4f4f4;">
									<ul class="col-ul-50-100">
										<li class="001 col-li-for-sectors">서비스업</li>
										<li class="003 col-li-for-sectors">제조화학</li>
										<li class="005 col-li-for-sectors">IT웹통신</li>
										<li class="007 col-li-for-sectors">은행금융업</li>
										<li class="009 col-li-for-sectors">미디어 디자인</li>
										<li class="011 col-li-for-sectors">교육업</li>
									</ul>
									<ul class="col-ul-50-100">
										<li class="002 col-li-for-occupation">판매유통</li>
										<li class="004 col-li-for-occupation">의료제약복지</li>
										<li class="006 col-li-for-occupation">건설업</li>
										<li class="008 col-li-for-occupation">기관협회</li>
										<li class="006 col-li-for-occupation" style="cursor: auto;"></li>
										<li class="006 col-li-for-occupation" style="cursor: auto;"></li>
									</ul>
								</div>
								</div>
							</div>
							<div class="col-div-70-100">
								<div class="col-div-100-10" style="border-left:1px solid #b8b8b8; border-bottom:1px solid #b8b8b8;">
									<h3 class="content_title">희망직종</h3>
								</div>
								<div class="col-div-100-90">
									<div class="o1 col-div-100-100 hope-occupation">
										<ul class="col-ul-100-100">
											<li class="col-li-4-nb"><div><label><input type="checkbox">호텔여행항공</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">외식업식음료</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">시설관리경비용역</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">레저스포츠여가</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">AS카센터주유</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">렌탈임대</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">웨딩장례이벤트</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">기타서비스업</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">뷰티미용</label></div></li>
										</ul>
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o2 col-div-100-100 hope-occupation">
										<ul class="col-ul-100-100">
											<li class="col-li-4-nb"><div><label><input type="checkbox">판매(매장종류별)</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">판매(상품품목별)</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">유통무역상사</label></div></li>
											<li class="col-li-4-nb"><div><label><input type="checkbox">운송운수물류</label></div></li>
										</ul>
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o3 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o4 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o5 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o6 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o7 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o8 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o9 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o10 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o11 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								<div class="o12 col-div-100-100 hope-occupation">
										
								</div><!-- 희망 직족 자세한 옵션선택 부분 -->
								</div>
							</div>
						</div><!--TStopion_div option_flo sectors  --><!--경력/나이 부분 끝 -->
						
						<div class="TStopion_div option_flo workingStyle" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;">
							<div class="col-div-100-70">
								<div class="col-div-20-100" style="padding-left:6em; padding-top:2em;">
									<h3 class="content_title">근무형태</h3>
								</div>
								<div class="col-div-80-100" style="padding-left:6em; padding-top:2em;">
									<ul>
										<li class="col-li-4">정규직</li>
										<li class="col-li-4">계약직</li>
										<li class="col-li-4">병역특례</li>
										<li class="col-li-4" style="clear: both">인턴직</li>
										<li class="col-li-4">정규직</li>
										<li class="col-li-4">아르바이트</li>
										<li class="col-li-4"  style="clear: both">파견직</li>
										<li class="col-li-4">위촉직</li>
										<li class="col-li-4">프리랜서</li>
										<li class="col-li-4" style="clear: both">교육생</li>
										<li class="col-li-4">별정직</li>
									</ul>
								</div>
							</div>
							<div class="col-div-100-30" >
								<div class="col-div-20-100"  style="padding-left:6em; padding-top:0.4em;">
									<h3 class="content_title">희망급여</h3>
								</div>
								<div class="col-div-80-100" style="padding-left:6em;">
									<select class="one-list">
										<option>전체</option>
										<option>1400만원 이상</option>
										<option>1600만원 이상</option>
										<option>1800만원 이상</option>
										<option>2000만원 이상</option>
									</select> ~ 
									<select class="one-list">
										<option>전체</option>
										<option>1400만원 이하</option>
										<option>1600만원 이하</option>
										<option>1800만원 이하</option>
										<option>2000만원 이하</option>
									</select>&nbsp;&nbsp;
									<input type="checkbox" id="desi"><label for="desi" style="vertical-align: super;">면접 후 결정</label>&nbsp;
									<input type="checkbox" id="frole"><label for="frole" style="vertical-align: super;">회사 내규에 따름</label>
								</div>
							</div>
						</div><!--TStopion_div option_flo  -->
						
						<div class="TStopion_div option_flo rank" style="width:1189px; margin-left:4em; margin-bottom:4em; overflow-y:auto;"><!-- 직책부분 시작 -->
							<div class="col-div-20-100" style="padding-top:2em; width:160px;">
								<h3 class="content-title">직급/직책</h3>
							</div>
							<div class="col-div-80-100" style="padding-top:2em; width:850px">
								<div style="float:left; width:850px; margin-bottom:3em; padding-left:3em;">
									<ul>
										<li class="col-li-4" style="width:185px;">사원</li>
										<li class="col-li-4" style="width:185px;">주임</li>
										<li class="col-li-4" style="width:185px;">계장</li>
										<li class="col-li-4" style="width:185px;">대리</li>
										<li class="col-li-4" style="clear:both; width:185px;">과장</li>
										<li class="col-li-4" style="width:185px;">차장</li>
										<li class="col-li-4" style="width:185px;">부장</li>
										<li class="col-li-4" style="width:185px;">감사</li>
										<a class="more-rank" href="#" style="display: inline-block; float: left; padding-top: 12px;">더보기</a>
									</ul>
									<ul class="ranks" style="display:none;">
										<li class="col-li-4" style="clear:both; width:185px;">이사</li>
										<li class="col-li-4" style="width:185px;">상무</li>
										<li class="col-li-4" style="width:185px;">전무</li>
										<li class="col-li-4" style="width:185px;">부사장</li>
										<li class="col-li-4" style="clear:both; width:185px;">임원</li>
										<li class="col-li-4" style="width:185px;">사장</li>
										<li class="col-li-4" style="width:185px;">연구원</li>
										<li class="col-li-4" style="width:185px;">주임연구원</li>
										<li class="col-li-4" style="clear:both; width:185px;">선임연구원</li>
										<li class="col-li-4" style="width:185px;">책임연구원</li>
										<li class="col-li-4" style="width:185px;">수석연구원</li>
										<li class="col-li-4" style="width:185px;">연구소장</li>
										<a class="close-rank" href="#" style="display: inline-block; float: left; padding-top: 12px;">닫기</a>
									</ul>
								</div>
								<hr>
								<div style="float:left; width:850px; margin-top:2em; padding-left:3em;">
									<ul >
										<li class="col-li-4" style="width:185px;">팀원</li>
										<li class="col-li-4" style="width:185px;">팀장</li>
										<li class="col-li-4" style="width:185px;">실장</li>
										<li class="col-li-4" style="width:185px;">총무</li>
										<li class="col-li-4" style="clear:both; width:185px;">지점장</li>
										<li class="col-li-4" style="width:185px;">지사장</li>
										<li class="col-li-4" style="width:185px;">파트장</li>
										<li class="col-li-4" style="width:185px;">그룹장</li>
										<a class="more-position" href="#" style="display: inline-block; float: left; padding-top: 12px;">더보기</a>
									</ul>
									<ul class="position" style="display:none;">
										<li class="col-li-4" style="clear:both; width:185px;">센터장</li>
										<li class="col-li-4" style="width:185px;">매니저</li>
										<li class="col-li-4" style="width:185px;">본부장</li>
										<li class="col-li-4" style="width:185px;">사업부장</li>
										<li class="col-li-4" style="clear:both; width:185px;">원장</li>
										<li class="col-li-4" style="width:185px;">국장</li>
										<li class="col-li-4" style="width:185px; border:none;"></li>
										<li class="col-li-4" style="width:185px; border:none;"></li>
										<a class="close-position" href="#" style="display: inline-block; float: left; padding-top: 12px;">닫기</a>
									</ul>
								</div>
							</div>
						</div><!--TStopion_div option_flo rank/position  --><!-- 직책부분 -->
					</div><!-- TSoption -->
				</div><!-- TSpanel -->
		</div>
		<div class="TSdetail" style="float:left;width:70%; margin-left: 5em;"><!-- 게시판 형태의 이력서 간단 보기 -->
			<div class="col-div-100-10" style="padding: 1em; text-align: right;">
				<select class="one-list">
				<option>10개씩 보기</option>
				<option>20개씩 보기</option>
				<option>30개씩 보기</option>
				<option>50개씩 보기</option>
				<option>100개씩 보기</option>
			</select>
			</div>
			<table style="width:100%; height:90%; float:left;">
				<thead>
					<tr style="height:50px;">
						<th style="width:5%; background:#f4f4f4; text-align:center;"></th>
						<th style="width:25%; background:#f4f4f4; text-align:center;">이름</th>
						<th style="width:55%; background:#f4f4f4; text-align:center;">이력서 요약</th>
						<th style="width:15%; background:#f4f4f4; text-align:center;">업데이트일</th>
					</tr>
				</thead>
				<tbody>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">홍길동</strong><br>
							<span>(남 1970년, 48세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-02-02</td>
					</tr>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">정채연</strong><br>
							<span>(여 1997년, 20세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">권나라</strong><br>
							<span>(여 1992년, 26세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">유이령</strong><br>
							<span>(여 1993년, 25세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">정채연</strong><br>
							<span>(여 1997년, 20세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr>
				</tbody>
			</table>
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