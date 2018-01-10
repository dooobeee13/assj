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
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
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

.recruitDetail #application .posApply {
	margin-top: 5px;
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

#statsModal .item {
	overflow: hidden;
    position: relative;
    width: 100%;
    margin-bottom: 25px;
    font-size: 0;
    font-family: 'Malgun Gothic';
    color: #333;
    font-size: 12px;
}

#statsModal .item .label {
	display: inline-block;
    width: 52px;
    color: black;
    font-size: 1em;
}

#statsModal .item .value {
	display: inline-block;
    width: 60px;
}

#statsModal .item .bar {
    display: inline-block;
    width: 132px;
    height: 8px;
    background-color: #ededed;
}

#statsModal .item .progressbar {
	height: 8px;
}

#statsModal .itemMen .progressbar {
	background-color: #48dcdb;
}

#statsModal .itemWomen .progressbar {
	background-color: #ff8759;
}

#statsModal p.head {
	padding-top: 20px;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 25px;
}

#statsModal .numOfAppDiv .numVal {
	font-size: 36px;
    text-align: center;
}

#statsModal .numOfAppDiv .numVal em {
	color: #ff8759;
}

#statsModal .numOfAppDiv .numTit {
	text-align: center;
    color: #666;
    font-size: 16px;
}

#statsModal .table th:nth-child(n+1), #statsModal .table td:nth-child(n+1) {
	text-align: right;
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
		
		
		 
		
		/* $('#rModiBtn').click(function(){
			alert('이력서 수정 누름');
		}); */
		/* $('#applyBtn').click(function(){
			$.ajax({
				url : '<c:url value="/recruit/apply.do?"/>',
				type: 'get',
				success: function(res) {
					if (res == 'REQUIRED_LOGIN') {
						alert('로그인 해주세요');
					} else {
						$('#resumeTable').html(res);				
						$('#myResumeModal').modal('show');
					}
				}
			});
		}); */
		$('#applyWithResume').click(function(){
			$.ajax({
				url : '<c:url value="/recruit/apply.do?"/>',
				type: 'post',
				data: $(resumeForm).serialize(),
				success: function(res) {
					if (res == 'REQUIRED_LOGIN') {
						alert('로그인 해주세요');
					} else if (res == '') {
						toastr["success"]("지원하였습니다.");
						$('.posApply').html('<div class="text-center" style="padding: 10px 0">이미 지원한 공고입니다. <a onclick="apply(this)" class="del" href="javascript:void(0)">취소하기</a></div>');
					}
				}
			});
			$('#myResumeModal').modal('hide');
		});
	});
	
	function apply(btn){
		if ($(btn).hasClass('add')) {
			$.ajax({
				url : '<c:url value="/recruit/apply.do?"/>',
				type: 'get',
				success: function(res) {
					if (res == 'REQUIRED_LOGIN') {
						alert('로그인 해주세요');
					} else {
						$('#resumeTable').html(res);				
						$('#myResumeModal').modal('show');
					}
				}
			});
		} else if ($(btn).hasClass('del')) {
			if (confirm('정말로 취소할꺼에요?')){
				$.ajax({
					url : '<c:url value="/recruit/deleteApply.do?hnNo=${param.hnNo}"/>',
					success : function(res) {
						if (res == 'DELETE_APPY') {
							toastr["error"]("지원 취소되었습니다.");
							$('.posApply').html('<input class="btn btn-danger btn-block add" type="button" onclick="apply(this)" value="지원하기">');
						} else if (res == 'REQUIRED_LOGIN') {
							alert('로그인 해주세요');
						}
					}
				});
			}
		}
		
	}; 
	
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
						<c:set var="containApply" value="false"/>
						<c:forEach var="scrapVo" items="${memberInfo.scrapList}" >
							<c:if test="${scrapVo.hnNo == vo.hnNo}">
								<c:set var="containScrap" value="true"/>
							</c:if>
						</c:forEach>
						<c:forEach var="empSupVo" items="${memberInfo.empSupList}" >
							<c:if test="${empSupVo.hnNo == vo.hnNo}">
								<c:set var="containApply" value="true"/>
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
						<a href="/assj/resume/resumeList.do" class="btn btn-default btn-block" id="rModiBtn">내 이력서 수정</a>
						<div class="posApply">
						<c:if test="${containApply == true}">
							<div class="text-center" style="padding: 10px 0">이미 지원한 공고입니다. <a onclick="apply(this)" class="del" href="javascript:void(0)">취소하기</a></div>
						</c:if>
						<c:if test="${containApply == false}">
							<input class="btn btn-danger btn-block add" type="button" onclick="apply(this)" value="지원하기">
						</c:if>
						</div>
					</div>
					</div>

					<div class="modal fade" id="myResumeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">지원할 이력서 선택</h4>
								</div>
								<div class="modal-body">
									<form name="resumeForm">
										<input type="hidden" name="hnNo" value="${vo.hnNo}">
										<table class="table table-hover" id="resumeTable">
										</table>	
									</form>

									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										<button type="button" id="applyWithResume" class="btn btn-primary">지원하기</button>
									</div>
								</div>
							</div><!-- /.modal-content -->
						</div><!-- /.modal-dialog -->
					</div><!-- /.modal -->

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
						<input class="btn btn-info btn-sm pull-right" data-toggle="modal" data-target="#statsModal" 
							style="margin-top: 10px" type="button" value="상세보기">
						<div class="row">
							<div class="col-md-2 applicants text-center">
								<div class="count">
									<div>지원자수</div>
									<div>
										<em class="metricsCount">${dto.totalCnt}</em>명
									</div>
								</div>
								<div class="count">
									<div>모집인원</div>
									<div>
										<em class="metricsRate">${vo.hnRecruitNum}</em>명
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
															style="width: ${(dto.e20 + dto.b21e25)/dto.totalCnt*100}%">
															<span class="sr-only">${(dto.e20 + dto.b21e25)/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.e20 + dto.b21e25}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>26세~30세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.b26e30/dto.totalCnt*100}%">
															<span class="sr-only">${dto.b26e30/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.b26e30}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>31세~35세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.b31e35/dto.totalCnt*100}%">
															<span class="sr-only">${dto.b31e35/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.b31e35}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>36세~40세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.b36e40/dto.totalCnt*100}%">
															<span class="sr-only">${dto.b36e40/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.b36e40}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>41세~45세</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.b41e45/dto.totalCnt*100}%">
															<span class="sr-only">${dto.b41e45/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.b41e45}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>46세이상</span>
												</div>
												<div class="col-xs-6 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${(dto.b46e50+dto.b51)/dto.totalCnt*100}%">
															<span class="sr-only">${(dto.b46e50+dto.b51)/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.b46e50+dto.b51}</div>
											</li>

										</ul>
									</div>
									<div class="col-md-4 chartSex">
										<h5>성별</h5>
										
										<div class="content">
					                        <div class="item itemMan">
					                            <div class="label">남자</div>
					                            <div class="value">${dto.manCnt}</div>
					                            <div class="mask" aria-hidden="true"></div>
					                            <div class="progress1" aria-hidden="true" style="height:${dto.manCnt/dto.totalCnt*100}%;"></div>
					                        </div>
					                        <div class="item itemWoman">
					                            <div class="label">여자</div>
					                            <div class="value">${dto.womenCnt}</div>
					                            <div class="mask" aria-hidden="true"></div>
					                            <div class="progress1" aria-hidden="true" style="height:${dto.womenCnt/dto.totalCnt*100}%;"></div>
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
															style="width: ${dto.highSchool/dto.totalCnt*100}%">
															<span class="sr-only">${dto.highSchool/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.highSchool}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>2,3년제</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.college/dto.totalCnt*100}%">
															<span class="sr-only">${dto.college/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.college}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>4년제</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.university/dto.totalCnt*100}%">
															<span class="sr-only">${dto.university/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.university}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>석사</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.master/dto.totalCnt*100}%">
															<span class="sr-only">${dto.master/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.master}</div>
											</li>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>박사</span>
												</div>
												<div class="col-xs-6 padding-0 progp">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
															style="width: ${dto.doctor/dto.totalCnt*100}%">
															<span class="sr-only">${dto.doctor/dto.totalCnt*100}%</span>
														</div>
													</div>
												</div>
												<div class="col-xs-2">${dto.doctor}</div>
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
				
				<div class="modal fade" id="statsModal" role="dialog">
				    <div class="modal-dialog modal-lg">
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <!-- <h4 class="modal-title">Modal Header</h4> -->
				        </div>
				        <div class="modal-body">
				          <div class="container-fluid">
				          	<div class="row" style="border-bottom: 1px solid #d8dbdd; height: 170px">
				          		<div class="col-md-8 numOfAppDiv">
				          			<div class="row">
				          				<p class="head" style="padding-left: 15px;">지원현황</p>
						          		<div class="col-md-6" style="border-right: 1px solid #d8dbdd">
						          			<div class="numVal">${vo.hnRecruitNum}명</div>
						          			<div class="numTit">모집인원</div>
						          		</div>
						          		<div class="col-md-6">
						          			<div class="numVal"><em>${dto.totalCnt}</em>명</div>
						          			<div class="numTit">지원자 수</div>
						          		</div>
				          			</div>
				          		</div>
				          		<div class="col-md-4" style="height: 170px;border-left: 1px solid #d8dbdd;">
				          			<p class="head" style="padding-left: 15px;">성별</p>
				          			<div class="item itemMen">
										<div class="label">남자</div>
										<div class="value"><fmt:formatNumber value="${dto.manCnt/dto.totalCnt*100}" pattern="0"/>%</div>
										<div class="bar" aria-hidden="true">
											<div class="progressbar" style="width:${dto.manCnt/dto.totalCnt*100}%"></div>
										</div>
									</div>
									<div class="item itemWomen">
										<div class="label">여자</div>
										<div class="value"><strong><fmt:formatNumber value="${dto.womenCnt/dto.totalCnt*100}" pattern="0"/>%</strong></div>
										<div class="bar" aria-hidden="true">
											<div class="progressbar" style="width:${dto.womenCnt/dto.totalCnt*100}%"></div>
										</div>
									</div>
				          		</div>
				          	</div>
				          	<div class="row">
				          		<div class="col-md-8">
				          			<p class="head"><span class="glyphicon glyphicon-user"></span> 연령</p>
				          			<div id="age" style="height: 270px; margin: 0 auto"></div>
				          		</div>
				          		<script>
				          		Highcharts.chart('age', {
				          		    chart: {
				          		        type: 'line'
				          		    },
					          		  title:{
					          	        text:''
					          	    },
					          	    yAxis: {
					          	    	title: {
					          	    		text: ''
					          	    	},
					          	    	min: 0, max: 100
					          	    },
				          		    xAxis: {
				          		        categories: ['20세이하', '21~25세', '26~30세', '31~35세', '36~40세', '41~45세', '46~50세', '51세이상']
				          		    },
				          		    plotOptions: {
				          		        line: {
				          		            dataLabels: {
				          		                enabled: true,
				          		              	formatter:function() {
					                              return this.y + '%';
					                           }
				          		            },
				          		          enableMouseTracking: false
				          		        }
				          		    },
				          		    series: [{
				          		    	showInLegend: false,
				          		    	color: '#ff8759',
				          		        data: [<fmt:formatNumber value="${dto.e20/dto.totalCnt*100}" pattern="0"/>, <fmt:formatNumber value="${dto.b21e25/dto.totalCnt*100}" pattern="0"/>,
				          		        	<fmt:formatNumber value="${dto.b26e30/dto.totalCnt*100}" pattern="0"/>, <fmt:formatNumber value="${dto.b31e35/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.b36e40/dto.totalCnt*100}" pattern="0"/>, <fmt:formatNumber value="${dto.b41e45/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.b46e50/dto.totalCnt*100}" pattern="0"/>, <fmt:formatNumber value="${dto.b51/dto.totalCnt*100}" pattern="0"/>]
				          		    }]
				          		})
				          		</script>
				          		<div class="col-md-4" style="padding-top: 40px">
				          			<table class="table">
				          				<colgroup>
				          					<col width="40%">
				          					<col width="30%">
				          					<col width="30%">
				          				</colgroup>
				          				<tr>
				          					<th style="border-top:0">분류</th>
				          					<th style="border-top:0">수치</th>
				          					<th style="border-top:0">지원자수</th>
				          				</tr>
				          				<tr>
				          					<td>20세 이하</td>
				          					<td><fmt:formatNumber value="${dto.e20/dto.totalCnt*100}" pattern="0" />%</td>
				          					<td>${dto.e20}</td>
				          				</tr>
				          				<tr>
				          					<td>21세 ~ 25세</td>
				          					<td><fmt:formatNumber  value="${dto.b21e25/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b21e25}</td>
				          				</tr>
				          				<tr>
				          					<td>26 ~ 30세</td>
				          					<td><fmt:formatNumber value="${dto.b26e30/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b26e30}</td>
				          				</tr>
				          				<tr>
				          					<td>31 ~ 35세</td>
				          					<td><fmt:formatNumber value="${dto.b31e35/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b31e35}</td>
				          				</tr>
				          				<tr>
				          					<td>36 ~ 40세</td>
				          					<td><fmt:formatNumber value="${dto.b36e40/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b36e40}</td>
				          				</tr>
				          				<tr>
				          					<td>41 ~ 45세</td>
				          					<td><fmt:formatNumber value="${dto.b41e45/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b41e45}</td>
				          				</tr>
				          				<tr>
				          					<td>46 ~ 50세</td>
				          					<td><fmt:formatNumber value="${dto.b46e50/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b46e50}</td>
				          				</tr>
				          				<tr>
				          					<td>51세 이상</td>
				          					<td><fmt:formatNumber value="${dto.b51/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.b51}</td>
				          				</tr>
				          				<tr>
				          					<td>합계</td>
				          					<td>100%</td>
				          					<td>${dto.totalCnt}</td>
				          				</tr>
				          			</table>
				          		</div>
				          	</div>
				          	
				          	
				          	<div class="row" style="border-top: 1px solid #d8dbdd; border-bottom: 1px solid #d8dbdd; padding-bottom: 20px">
				          		<div class="col-md-8">
				          			<p class="head"><span class="glyphicon glyphicon-education"></span> 학력</p>
				          			<div id="edu" style="height: 270px; margin: 0 auto"></div>
				          		</div>
				          		<script>
				          		Highcharts.chart('edu', {
				          		    chart: {
				          		        type: 'line'
				          		    },
					          		  title:{
					          	        text:''
					          	    },
					          	    yAxis: {
					          	    	title: {
					          	    		text: ''
					          	    	},
					          	    	min: 0, max: 100
					          	    },
				          		    xAxis: {
				          		        categories: ['고졸', '초대졸', '대졸', '석사', '박사']
				          		    },
				          		    plotOptions: {
				          		        line: {
				          		            dataLabels: {
				          		                enabled: true,
				          		              	formatter:function() {
					                              return this.y + '%';
					                           }
				          		            },
				          		          enableMouseTracking: false
				          		        }
				          		    },
				          		    series: [{
				          		    	showInLegend: false,
				          		    	color: '#ff8759',
				          		        data: [ <fmt:formatNumber value="${dto.highSchool/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.college/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.university/dto.totalCnt*100}" pattern="0"/>,
				          		        	<fmt:formatNumber value="${dto.master/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.doctor/dto.totalCnt*100}" pattern="0"/>]
				          		    }]
				          		})
				          		</script>
				          		<div class="col-md-4" style="padding-top: 40px">
				          			<table class="table">
				          				<colgroup>
				          					<col width="42%">
				          					<col width="29%">
				          					<col width="29%">
				          				</colgroup>
				          				<tr>
				          					<th style="border-top:0">분류</th>
				          					<th style="border-top:0">수치</th>
				          					<th style="border-top:0">지원자수</th>
				          				</tr>
				          				<tr>
				          					<td>고졸</td>
				          					<td><fmt:formatNumber value="${dto.highSchool/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.highSchool}</td>
				          				</tr>
				          				<tr>
				          					<td>초대졸</td>
				          					<td><fmt:formatNumber value="${dto.college/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.college}</td>
				          				</tr>
				          				<tr>
				          					<td>대졸</td>
				          					<td><fmt:formatNumber value="${dto.university/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.university}</td>
				          				</tr>
				          				<tr>
				          					<td>석사</td>
				          					<td><fmt:formatNumber value="${dto.master/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.master}</td>
				          				</tr>
				          				<tr>
				          					<td>박사</td>
				          					<td><fmt:formatNumber value="${dto.doctor/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.doctor}</td>
				          				</tr>
				          				<tr>
				          					<td>합계</td>
				          					<td>100%</td>
				          					<td>${dto.totalCnt}</td>
				          				</tr>
				          			</table>
				          		</div>
				          	</div>
				          	
				          	
				          	<div class="row" style="border-bottom: 1px solid #d8dbdd; padding-bottom: 20px">
				          		<div class="col-md-8">
				          			<p class="head"><span class="glyphicon glyphicon-briefcase"></span> 경력</p>
				          			<div id="career" style="height: 270px; margin: 0 auto"></div>
				          		</div>
				          		<script>
				          		Highcharts.chart('career', {
				          		    chart: {
				          		        type: 'line'
				          		    },
					          		  title:{
					          	        text:''
					          	    },
					          	    yAxis: {
					          	    	title: {
					          	    		text: ''
					          	    	},
					          	    	min: 0, max: 100
					          	    },
				          		    xAxis: {
				          		        categories: ['신입', '1~3년', '3~5년', '5~10년', '10년이상']
				          		    },
				          		    plotOptions: {
				          		        line: {
				          		            dataLabels: {
				          		                enabled: true,
				          		              	formatter:function() {
					                              return this.y + '%';
					                           }
				          		            },
				          		          enableMouseTracking: false
				          		        }
				          		    },
				          		    series: [{
				          		    	showInLegend: false,
				          		    	color: '#ff8759',
				          		        data: [<fmt:formatNumber value="${dto.c0/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.c1to3/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.c3to5/dto.totalCnt*100}" pattern="0"/>, 
				          		        	<fmt:formatNumber value="${dto.c5to10/dto.totalCnt*100}" pattern="0"/>,
				          		        	<fmt:formatNumber value="${dto.c10/dto.totalCnt*100}" pattern="0"/>]
				          		    }]
				          		})
				          		</script>
				          		<div class="col-md-4" style="padding-top: 40px">
				          			<table class="table">
				          				<colgroup>
				          					<col width="42%">
				          					<col width="29%">
				          					<col width="29%">
				          				</colgroup>
				          				<tr>
				          					<th style="border-top:0">분류</th>
				          					<th style="border-top:0">수치</th>
				          					<th style="border-top:0">지원자수</th>
				          				</tr>
				          				<tr>
				          					<td>신입(1년 미만)</td>
				          					<td><fmt:formatNumber value="${dto.c0/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.c0}</td>
				          				</tr>
				          				<tr>
				          					<td>1 ~ 3년</td>
				          					<td><fmt:formatNumber value="${dto.c1to3/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.c1to3}</td>
				          				</tr>
				          				<tr>
				          					<td>3 ~ 5년</td>
				          					<td><fmt:formatNumber value="${dto.c3to5/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.c3to5}</td>
				          				</tr>
				          				<tr>
				          					<td>5 ~ 10년</td>
				          					<td><fmt:formatNumber value="${dto.c5to10/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.c5to10}</td>
				          				</tr>
				          				<tr>
				          					<td>10년 이상</td>
				          					<td><fmt:formatNumber value="${dto.c10/dto.totalCnt*100}" pattern="0"/>%</td>
				          					<td>${dto.c10}</td>
				          				</tr>
				          				<tr>
				          					<td>합계</td>
				          					<td>100%</td>
				          					<td>${dto.totalCnt}</td>
				          				</tr>
				          			</table>
				          		</div>
				          	</div>
				          	
				          	
				          	<div class="row">
				          		<p class="head" style="padding-left: 15px"><span class="glyphicon glyphicon-usd"></span> 희망연봉</p>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal1800/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal1800}" data-title="1800미만"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal2200/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal2200}" data-title="2200미만"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal2600/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal2600}" data-title="2600미만"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal3000/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal3000}" data-title="3000미만"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal3400/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal3400}" data-title="3400미만"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal4000/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal4000}" data-title="4000미만"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal4000up/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal4000up}" data-title="4000이상"></div>
				          		<div class="col-md-3 salchart" data-pct="<fmt:formatNumber value='${dto.sal0/dto.totalCnt*100}' pattern='0'/>" data-num="${dto.sal0}" data-title="면접 후 결정"></div>
				        	</div>
				          	<script>
				          	var colors = ['#38cbca', '#d5dddd'];
				          	
				          	$('.salchart').each(function(){
				          		var pct = $(this).data('pct');
				          		var tit = $(this).data('title');
				          		var num = $(this).data('num');
				          		$(this).highcharts({
					                chart: {
					                    type: 'pie',
					                    height: 200,
					                },
					                credits: {
					                    enabled: false
					                },
					                exporting: { enabled: false },
					                title: false,
					                tooltip: false,
					                plotOptions: {
					                    pie: {
					                        borderWidth: 6,
					                        startAngle: 0,
					                        innerSize: '75%',
					                        size: '100%',
					                        shadow: true,
					                        dataLabels: false,
					                        stickyTracking: false,
					                        states: {
					                            hover: {
					                                enabled: false
					                            }
					                        }
					                    }
					                },
					                
					                series: [{
					                    data: [
					                        {y:parseFloat(pct), color: colors[0]},
					                        {y:100 - parseFloat(pct), color: colors[1]}
					                    ]
					                }]
					            },
					             function(chart) { // on complete
					                
					               
					            var circleradius = 102;
					            
					            // Render the text 
					            chart.renderer.text(pct+'%', 93, 95).css({
					                    color: '#4572A7',
					                    fontSize: '25px',
					                    letterSpacing : '-1px',
					                    textAnchor: 'middle'
					              }).add();
					             chart.renderer.text(tit, 93, 115).css({
					                    //color: '#4572A7',
					                    fontSize: '14px',
					                    letterSpacing : '-1px',
					                    textAnchor: 'middle'
					              }).add();
					             chart.renderer.text(num+"명", 93, 190).css({
					                    fontSize: '12px',
					                    letterSpacing : '-1px',
					                    textAnchor: 'middle'
					              }).add();
					            });
				          	}); 
				          	
				          	</script>
				          	
				          </div>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				        </div>
				      </div>
				    </div>
				  </div>
			</div>
			
		</div>
	</div>
	
	<c:import url="../index/footer.jsp" />
</body>
</html>