<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327f7603fcf7a8ba155dfe89ac2d2057"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<title>Insert title here</title>
<style>
.recruitDetail .summaryWrap {
	border: 1px solid #dde2eb;
	border-top: 2px solid #4a5470;
	margin: 20px 0;
}

.recruitDetail .rTitle {
	border-bottom: 1px solid #dde2eb;
	padding-top: 20px;
}

.recruitDetail .rTitle span {
	font-size: 1.2em;
	color: #333;
}

.recruitDetail .rTitle h2 {
	margin-top: 5px;
	margin-bottom: 20px;
}

.recruitDetail .rSumm, .recruitDetail .cSumm {
	padding-top: 18px;
}

.recruitDetail .rSumm h5, .recruitDetail .compInfo h5 {
	font-weight: bold;
	font-size: 1.1em;
}

.recruitDetail .rSumm dt, .recruitDetail .compInfo dt {
	color: #999;
	font-weight: normal;
}

.recruitDetail .rSumm dt, .recruitDetail .rSumm dd, .recruitDetail .compInfo dt,
	.recruitDetail .compInfo dd {
	margin: 4px 0 5px 0;
}

.recruitDetail .logo {
	height: 102px;
	line-height: 102px;
	text-align: center;
}

.recruitDetail .logo img {
	width: 100px;
	height: 40px;
}

.recruitDetail .compInfo {
	border-left: 1px solid #dde2eb;
}

.recruitDetail .detailWrap .para {
	margin-bottom: 20px;
}

.recruitDetail .detailWrap .para .title {
	font-size: 1.4em;
	font-weight: bold;
	display: inline-block;
	padding: 1px 0 9px;
	border-bottom: 2px solid #337ab7;
}

.recruitDetail .detailWrap .para .text {
	white-space: pre-wrap;
}


.recruitDetail .detailWrap .chart h5 {
	font-weight: bold;
	font-size: 1.1em;
	padding: 15px 0;
}

.recruitDetail .detailWrap .chart ul {
	padding: 0;
	font-size: 0.9em;
}

.recruitDetail .detailWrap .chart ul li {
	list-style: none;
}

.recruitDetail .padding-0 {
	padding: 0;
}

.recruitDetail .detailWrap .chart .applicants {
	height: 220px;
	padding: 0;
}

.recruitDetail .detailWrap .chart .applicants .metricsCount {
	font: 36px tahoma, sans-serif;
    color: #6d8ff3;
}

.recruitDetail .detailWrap .chart .applicants .metricsRate {
	font: 36px tahoma, sans-serif;
    color: #666;
}

.recruitDetail .detailWrap .chart .applicants .count {
	padding-top: 27px;
	height: 50%;
}

.recruitDetail .detailWrap .chart .chartSex .content {
	position: relative;
    width: 100%;
    height: 104px;
    padding-left: 60px;
    box-sizing: border-box;
    background: url(/assj/images/bg_analytics_sex.gif) repeat-x 0 bottom;
}

.recruitDetail .detailWrap .chart .chartSex .itemMan {
	width: 37px;
    margin-right: 20px;
}

.recruitDetail .detailWrap .chart .chartSex .itemMan .mask {
	background: url(/assj/images/bg_analytics_sex_man.png) no-repeat;
}

.recruitDetail .detailWrap .chart .chartSex .itemMan .progress1 {
	background-color: #6d8ff3;
}

.recruitDetail .detailWrap .chart .chartSex .itemWoman {
	width: 45px;
}

.recruitDetail .detailWrap .chart .chartSex .itemWoman .mask {
	background: url(/assj/images/bg_analytics_sex_woman.png) no-repeat;
}

.recruitDetail .detailWrap .chart .chartSex .itemWoman .progress1 {
	background-color: #ff7885;
}

.recruitDetail .detailWrap .chart .chartSex .item {
	float: left;
    position: relative;
    height: 104px;
    box-sizing: border-box;
    background-color: #eaeaea;
}


.recruitDetail .detailWrap .chart .chartSex .item .mask {
	z-index: 10;
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 104px;
}

.recruitDetail .detailWrap .chart .chartSex .item .progress1 {
	position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
}

.recruitDetail .detailWrap .chart .chartSex .item .label {
	position: absolute;
    left: 0;
    bottom: -24px;
    width: 100%;
    text-align: center;
    font-size: 11px;
    color: #666;
}

.recruitDetail .detailWrap .chart .chartSex .item .value {
	position: absolute;
    left: 0;
    top: -20px;
    width: 100%;
    text-align: center;
    font-family: 'tahoma';
    font-size: 10px;
    color: #666;
}



.recruitDetail .detailWrap .chart .ageRange {
	padding-right: 0;
}

.recruitDetail .detailWrap .chart .progp {
	top: 3px;
	padding: 0;
}

.recruitDetail .detailWrap .chart .progress {
	height: 7px;
}

@media ( min-width :992px) {
	.recruitDetail aside {
		padding-left: 0;
	}
}

.recruitDetail #application {
	border: 1px solid #dde2eb;
	padding: 15px;
}

.recruitDetail #application dl {
	font-size: 1.1em;
}

.recruitDetail #application .posScrap {
	margin-bottom: 5px;
}

.recruitDetail #application dt, .recruitDetail #application dd {
	margin: 4px 0;
}

.recruitDetail #application .time span {
	font-weight: bold;
}

.recruitDetail #application .time .dDay {
	font-size: 2em;
	color: red;
}

.affix {
	top : 20px;
}
</style>
<script>
	$(function(){
		var $affixElement = $('div[data-spy="affix"]');
		$affixElement.width($affixElement.parent().width());
		$(window).resize(function () {
			$('.affix').width($affixElement.width());
		});
		$(window).scroll(function () {
		    $('.affix').width($affixElement.width());
		});
		
		toastr.options = {
		  "closeButton": false,
		  "debug": false,
		  "newestOnTop": false,
		  "progressBar": false,
		  "positionClass": "toast-top-center",
		  "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "300",
		  "hideDuration": "1000",
		  "timeOut": "2000",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}
		
		
		/* $('#scrapBtn').click(function(){
			if ($(this).hasClass('add')) {
				$.ajax({
					url : '<c:url value="/recruit/addScrap.do?hnNo=${param.hnNo}"/>',
					success : function(res) {
						if (res == 'INSERT_SCRAP') {
							toastr["success"]("스크랩했어요");
							//$('#scrapBtn').removeClass('add').addClass('del').val('스크랩 해제');
							$('.posScrap').html('<div class="text-center" style="padding: 10px 0">스크랩한 공고입니다. <a id="scrapBtn" class="del" href="javascript:void(0)">해제하기</a></div>');
						} else if (res == 'REQUIRED_LOGIN') {
							alert('로그인 해주세요');
						}
					}
				});
			} else if ($(this).hasClass('del')) {
				$.ajax({
					url : '<c:url value="/recruit/deleteScrap.do?hnNo=${param.hnNo}"/>',
					success : function(res) {
						if (res == 'DELETE_SCRAP') {
							toastr["error"]("스크랩 해제했어요");
							$('.posScrap').html('<input class="btn btn-default btn-block add" type="button" id="scrapBtn" value="스크랩 하기">');
							//$('#scrapBtn').removeClass('del').addClass('add').val('스크랩 하기');
						} else if (res == 'REQUIRED_LOGIN') {
							alert('로그인 해주세요');
						}
					}
				});
			}
		
		}); */ 
		
		$('#rModiBtn').click(function(){
			alert('이력서 수정 누름');
		});
		$('#applyBtn').click(function(){
			alert('지원하기 누름');
		});
	});
	
	function scrap(btn){
		if ($(btn).hasClass('add')) {
			$.ajax({
				url : '<c:url value="/recruit/addScrap.do?hnNo=${param.hnNo}"/>',
				success : function(res) {
					if (res == 'INSERT_SCRAP') {
						toastr["success"]("스크랩했어요");
						$('.posScrap').html('<div class="text-center" style="padding: 10px 0">스크랩한 공고입니다. <a id="scrapBtn" onclick="scrap(this)" class="del" href="javascript:void(0)">해제하기</a></div>');
					} else if (res == 'REQUIRED_LOGIN') {
						alert('로그인 해주세요');
					}
				}
			});
		} else if ($(btn).hasClass('del')) {
			$.ajax({
				url : '<c:url value="/recruit/deleteScrap.do?hnNo=${param.hnNo}"/>',
				success : function(res) {
					if (res == 'DELETE_SCRAP') {
						toastr["error"]("스크랩 해제했어요");
						$('.posScrap').html('<input class="btn btn-default btn-block add" type="button" id="scrapBtn" onclick="scrap(this)" value="스크랩 하기">');
					} else if (res == 'REQUIRED_LOGIN') {
						alert('로그인 해주세요');
					}
				}
			});
		}
		
	}; 
</script>
</head>
<body>
	<div style="background:#ebecee">
	<c:import url="../index/top.jsp" />
	</div>
	
	<div class="container">
		<div class="row recruitDetail">
			<section class="summaryWrap">
				<div class="col-md-9">
					<div class="rTitle">
						<span>${vo.compMemberVo.cmName}</span>
						<h2>${vo.hnNotititle}</h2>
					</div>
					<div class="row rSumm">
						<div class="col-md-6">
							<h5>지원자격</h5>
							<dl class="row">
								<dt class="col-xs-3">경력</dt>
								<dd class="col-xs-9">
								<!-- 경력(3년이상) -->
									<c:if test="${empty vo.careerVo}">
										경력무관
									</c:if>
									<c:if test="${!empty vo.careerVo}">
										${vo.careerVo.careerName}
										<c:choose>
											<c:when test="${vo.hnExpyearMin != 0 && vo.hnExpyearMax != 0}">
												(${vo.hnExpyearMin} ~ ~ ${vo.hnExpyearMax}년)
											</c:when>
											<c:when test="${vo.hnExpyearMin != 0 && vo.hnExpyearMax == 0}">
												(${vo.hnExpyearMin}년 이상)
											</c:when>
											<c:when test="${vo.hnExpyearMin == 0 && vo.hnExpyearMax != 0}">
												(${vo.hnExpyearMax}년 이하)
											</c:when>
										</c:choose>
									</c:if>
								</dd>
								<dt class="col-xs-3">학력</dt>
								<dd class="col-xs-9">
									<c:if test="${empty vo.educationVo}">
									학력무관
									</c:if>
									<c:if test="${!empty vo.educationVo}">
									${vo.educationVo.eduRemark}이상
									</c:if>
								</dd>
								
								<c:if test="${!empty vo.majorList}">
								<dt class="col-xs-3">우대</dt>
								<dd class="col-xs-9">
									<span style="font-size: 12px; color: #999;">우대전공</span>
									<c:forEach var="major" items="${vo.majorList}" varStatus="status">
										<c:if test="${!status.first}">, </c:if>${major.majorName}
									</c:forEach>
								</dd>
								</c:if>
							</dl>
						</div>
						<div class="col-md-6">
							<h5>근무조건</h5>
							<dl class="row">
								<dt class="col-xs-3">고용형태</dt>
								<dd class="col-xs-9"><!-- 정규직 -->
									<c:forEach var="empType" items="${vo.empTypeList}" varStatus="status">
										<c:if test="${!status.first}">· </c:if>${empType.etName}
									</c:forEach>
								</dd>
								<dt class="col-xs-3">급여</dt>
								<dd class="col-xs-9">
								<!-- 회사내규에 따름 -->
									<c:choose>
										<c:when test="${vo.hnSalStart != 0 && vo.hnSalEnd != 0 }">
											${vo.hnSalStart}~${vo.hnSalEnd}만원
										</c:when>
										<c:when test="${vo.hnSalStart != 0 && vo.hnSalEnd == 0 }">
											${vo.hnSalStart}만원 이상
										</c:when>
										<c:when test="${vo.hnSalStart == 0 && vo.hnSalEnd != 0 }">
											${vo.hnSalEnd}만원 이하
										</c:when>
										<c:otherwise>
											회사내규에 따름
										</c:otherwise>
									</c:choose>
								</dd>
								<dt class="col-xs-3">지역</dt>
								<dd class="col-xs-9">
								<!-- 서울시 서초구 -->
									${vo.areaVo.topAreaVo.areaName} 
									<c:if test="${!empty vo.areaVo.topAreaVo}">&gt;</c:if> 
									${vo.areaVo.areaName}
								</dd>
								<!-- <dt class="col-xs-3">시간</dt>
								<dd class="col-xs-9">주5일(월~금) 전일제 09:00~18:00</dd> -->
								<c:if test="${!empty vo.rankList}">
								<dt class="col-xs-3">직급</dt>
								<dd class="col-xs-9">
								<!-- 면접 후 결정 -->
									<c:forEach items="${vo.rankList}" var="rank" varStatus="status">
										<c:if test="${!status.first}">· </c:if>${rank.rankName}
									</c:forEach>
								</dd>
								</c:if>
								
								<c:if test="${!empty vo.positionList}">
								<dt class="col-xs-3">직책</dt>
								<dd class="col-xs-9">
								<!-- 면접 후 결정 -->
									<c:forEach items="${vo.positionList}" var="position" varStatus="status">
										<c:if test="${!status.first}">· </c:if>${position.positionName}
									</c:forEach>
								</dd>
								</c:if>
							</dl>
						</div>
					</div>
				</div>
				<div class="col-md-3 compInfo">
					<div class="logo">
						<img src='<c:url value="/images/cmLogo/${vo.compMemberVo.cmLogo}" />'
							id="cologo" name="cologo" alt="${vo.compMemberVo.cmName} 로고">
					</div>
					<div class="cSumm">
						<h5>기업정보</h5>
						<dl class="row">
							<dt class="col-xs-5">산업(업종)</dt>
							<dd class="col-xs-7">인력공급업</dd>
							<dt class="col-xs-5">사원수</dt>
							<dd class="col-xs-7">270명</dd>
							<dt class="col-xs-5">설립년도</dt>
							<dd class="col-xs-7">1996년(21년차)</dd>
							<dt class="col-xs-5">기업형태</dt>
							<dd class="col-xs-7">중소기업(일반법인)</dd>
							<dt class="col-xs-5">홈페이지</dt>
							<dd class="col-xs-7">${vo.compMemberVo.cmHomepage}</dd>
						</dl>
					</div>
				</div>
				<div class="clearfix"></div>
			</section>
			
			
			<div class="row detailWrap">
				<aside class="col-md-3 col-md-push-9">
					<div data-spy="affix" data-offset-top="607">
					<div id="application">
						<div class="time text-center">
							<span>
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 남은 시간
							</span>
							<div id="countdown" class="dDay">
								<!-- 3일 02:42:33 -->
							</div>
							<script>
								var end = new Date('<fmt:formatDate value="${vo.hnDeadline}" pattern="yyyy/MM/dd 24:00:00"/>');
								//var end = new Date('2018/01/02 24:00:00');
							
							    var _second = 1000;
							    var _minute = _second * 60;
							    var _hour = _minute * 60;
							    var _day = _hour * 24;
							    var timer;
							
							    function showRemaining() {
							        var now = new Date();
							        var distance = end - now;
							        if (distance < 0) {
							
							            clearInterval(timer);
							            document.getElementById('countdown').innerHTML = '마감되었습니다.';
							
							            return;
							        }
							        var days = Math.floor(distance / _day);
							        var hours = Math.floor((distance % _day) / _hour);
							        var minutes = Math.floor((distance % _hour) / _minute);
							        var seconds = Math.floor((distance % _minute) / _second);
							        
							        document.getElementById('countdown').innerHTML =  days > 0 ? days + '일 ' : '';
							        document.getElementById('countdown').innerHTML += (hours < 10 ? '0'+hours : hours) + ':';
							        document.getElementById('countdown').innerHTML += (minutes < 10 ? '0'+minutes : minutes) + ':';
							        document.getElementById('countdown').innerHTML += (seconds < 10 ? '0'+seconds : seconds);
							    }
							    
							    timer = setInterval(showRemaining, 1000);
							</script>
						</div>
						<hr>
						<dl class="row">
							<dt class="col-xs-5">모집인원</dt>
							<dd class="col-xs-7">${vo.hnRecruitNum}명</dd>
							<dt class="col-xs-5">시작일</dt>
							<dd class="col-xs-7"><fmt:formatDate value="${vo.hnStart}" pattern="yyyy.MM.dd(E)"/></dd>
							<dt class="col-xs-5">마감일</dt>
							<dd class="col-xs-7"><fmt:formatDate value="${vo.hnDeadline}" pattern="yyyy.MM.dd(E)"/></dd>
						</dl>
						<hr>
						<c:set var="containScrap" value="false"/>
						<c:forEach var="scrapVo" items="${memberInfo.scrapList}" >
							<c:if test="${scrapVo.hnNo == vo.hnNo}">
								<c:set var="containScrap" value="true"/>
							</c:if>
						</c:forEach>
						<div class="posScrap">
						<c:if test="${containScrap == true}">
							<div class="text-center" style="padding: 10px 0">스크랩한 공고입니다. <a id="scrapBtn" onclick="scrap(this)" class="del" href="javascript:void(0)">해제하기</a></div> 
							<!-- <input class="btn btn-default btn-block del" type="button" id="scrapBtn" value="스크랩 해제"> --> 
						</c:if>
						<c:if test="${containScrap == false}">
							<input class="btn btn-default btn-block add" type="button" id="scrapBtn" onclick="scrap(this)" value="스크랩 하기"> 
						</c:if>
						</div>
						<input class="btn btn-default btn-block" type="button" id="rModiBtn" value="내 이력서 수정">
						<input class="btn btn-danger btn-block" type="button" id="applyBtn" value="지원하기">
					</div>
					</div>
				</aside>
				<section class="col-md-9 col-md-pull-3">
					<c:if test="${!empty vo.hnTask}">
					<div class="para">
						<h4 class="title">주요 업무</h4>
						<div class="text">${vo.hnTask}</div>
					</div>
					</c:if>
					
					<c:if test="${!empty vo.hnEligibility}">
					<div class="para">
						<h4 class="title">자격 요건</h4>
						<div class="text">${vo.hnEligibility}</div>
					</div>
					</c:if>
					
					<c:if test="${!empty vo.hnPreference}">
					<div class="para">
						<h4 class="title">우대 사항</h4>
						<div class="text">${vo.hnPreference}</div>
					</div>
					</c:if>
					
					<c:if test="${!empty vo.hnStep}">
					<div class="para">
						<h4 class="title">채용절차</h4>
						<div class="text">${vo.hnStep}</div>
					</div>
					</c:if>
					
					<c:if test="${!empty vo.hnDocument}">
					<div class="para">
						<h4 class="title">제출서류</h4>
						<div class="text">${vo.hnDocument}</div>
					</div>
					</c:if>
					
					<c:if test="${!empty vo.hnBenefits}">
					<div class="para">
						<h4 class="title">복리후생</h4>
						<div class="text">${vo.hnBenefits}</div>
					</div>
					</c:if>

					<div class="para chart">
						<h4 class="title">지원자 현황 통계</h4>
						<div class="row">
							<div class="col-md-2 applicants text-center">
								<div class="count">
									<div>지원자수</div>
									<div>
										<em class="metricsCount">10</em>명
									</div>
								</div>
								<div class="count">
									<div>모집인원</div>
									<div>
										<em class="metricsRate">0</em>명
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="row">
									<div class="col-md-4">
										<h5>연령</h5>
										<ul>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>25세이하</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
															style="width: 0%">
															<span class="sr-only">0%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">0</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>26세~30세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>31세~35세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>36세~40세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>41세~45세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>46세이상</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>

										</ul>
									</div>
									<div class="col-md-4 chartSex">
										<h5>성별</h5>
										
										<div class="content">
					                        <div class="item itemMan">
					                            <div class="label">남자</div>
					                            <div class="value">29</div>
					                            <div class="mask" aria-hidden="true"></div>
					                            <div class="progress1" aria-hidden="true" style="height:78%;"></div>
					                        </div>
					                        <div class="item itemWoman">
					                            <div class="label">여자</div>
					                            <div class="value">8</div>
					                            <div class="mask" aria-hidden="true"></div>
					                            <div class="progress1" aria-hidden="true" style="height:22%;"></div>
					                        </div>
					                    </div>
										
										
									</div>
									<div class="col-md-4">
										<h5>학력</h5>
										<ul>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>고졸이하</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
															style="width: 0%">
															<span class="sr-only">0%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>2,3년제</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
															style="width: 0%">
															<span class="sr-only">0%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>4년제</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
															style="width: 10%">
															<span class="sr-only">10%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">2</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>석사</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>박사</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: 70%">
															<span class="sr-only">70%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">5</div>
											</li>

										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<c:if test="${vo.hnLat != 0 && vo.hnLng !=0}">
					<div class="para">
						<h4 class="title">근무 지역</h4>
						<div id="map" style="width: 100%; height: 270px;"></div>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div
							position = new daum.maps.LatLng(${vo.hnLat}, ${vo.hnLng}), mapOption = {
								center : position, // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

							// 마커를 생성합니다
							var marker = new daum.maps.Marker({
								position : position
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
						</script>
					</div>
					</c:if>
				</section>
				
			</div>
			
		</div>
	</div>
	
	<c:import url="../index/footer.jsp" />
</body>
</html>