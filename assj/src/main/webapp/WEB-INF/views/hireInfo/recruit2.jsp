<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327f7603fcf7a8ba155dfe89ac2d2057"></script>
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

}

.recruitDetail .detailWrap .chart .applicants .count {
	padding: 20px 0;
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
	})
</script>
</head>
<body>
	<div class="container">
		<div class="row recruitDetail">
			<section class="summaryWrap">
				<div class="col-md-9">
					<div class="rTitle">
						<span>잡코리아(유)</span>
						<h2>잡코리아 정규직 웹개발자 채용</h2>
					</div>
					<div class="row rSumm">
						<div class="col-md-6">
							<h5>지원자격</h5>
							<dl class="row">
								<dt class="col-xs-3">경력</dt>
								<dd class="col-xs-9">경력(3년이상)</dd>
								<dt class="col-xs-3">학력</dt>
								<dd class="col-xs-9">초대졸이상</dd>
							</dl>
						</div>
						<div class="col-md-6">
							<h5>근무조건</h5>
							<dl class="row">
								<dt class="col-xs-3">고용형태</dt>
								<dd class="col-xs-9">정규직</dd>
								<dt class="col-xs-3">급여</dt>
								<dd class="col-xs-9">회사내규에 따름</dd>
								<dt class="col-xs-3">지역</dt>
								<dd class="col-xs-9">서울시 서초구</dd>
								<dt class="col-xs-3">시간</dt>
								<dd class="col-xs-9">주5일(월~금) 전일제 09:00~18:00</dd>
								<dt class="col-xs-3">직급</dt>
								<dd class="col-xs-9">면접 후 결정</dd>
							</dl>
						</div>
					</div>
				</div>
				<div class="col-md-3 compInfo">
					<div class="logo">
						<img
							src="http://img.jobkorea.kr\trans\c\200x80\c\a\JK_Co_calstec3.png"
							id="cologo" name="cologo" alt="잡코리아(유)">
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
							<dd class="col-xs-7">jobkorea.co.kr</dd>
						</dl>
					</div>
				</div>
				<div class="clearfix"></div>
			</section>
			
			
			<div class="row detailWrap">
				<aside class="col-md-3 col-md-push-9">
					<div data-spy="affix" data-offset-top="364">
					<div id="application">
						<div class="time text-center">
							<span>
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 남은 시간
							</span>
							<div class="dDay">
								3일 02:42:33
							</div>
						</div>
						<hr>
						<dl class="row">
							<dt class="col-xs-5">모집인원</dt>
							<dd class="col-xs-7">○명</dd>
							<dt class="col-xs-5">시작일</dt>
							<dd class="col-xs-7">2017.12.19(화)</dd>
							<dt class="col-xs-5">마감일</dt>
							<dd class="col-xs-7">2017.12.29(금)</dd>
						</dl>
						<hr>
						<input class="btn btn-default btn-block" type="button" value="스크랩하기">
						<input class="btn btn-default btn-block" type="button" value="내 이력서 수정">
						<input class="btn btn-danger btn-block" type="button" value="지원하기">
					</div>
					</div>
				</aside>
				<section class="col-md-9 col-md-pull-3">
					<div class="para">
						<h4 class="title">주요 업무</h4>
						<div class="text">- Commerce Platform은 라인 기프트샵을 시작으로 프렌즈 스토어, @커머스, 라인쇼핑을 런칭하였고 앞으로도 국가별 요구에 맞는 비즈니스와 플랫폼을 런칭할 예정입니다.
- Billing Platform은 라인에서 제공하는 유료서비스를 지원하고 있으며 라인 포인트를 포함한 가상통화 플랫폼을 운영하고 있습니다.
- 글로벌 서비스로서 지속적으로 증가하는 트래픽과 국가별 다양한 요구사항에 대응하고 있습니다.</div>
					</div>
					
					<div class="para">
						<h4 class="title">자격 요건</h4>
						<div class="text">- Java 언어에 능숙하고, Java Framework 기반 개발에 익숙하신 분 
- Javascript, JQuery 사용에 능숙하고, Javascript Framework 기반 개발에 익숙하신 분 
- 주기적인 스터디를 통해, 신기술을 습득하고 업무에 적용하는 데 거부감이 없는 분 (JPA, React, RxJava등을 도입 및 지속적으로 개발환경에 녹이려고 하고 있습니다.)
- 페어프로그래밍, 코드리뷰에 거부감이 없고 테스트코드 작성의 필요성을 알고 계신 분. 
- 멤버간 수평 구조를 중시하고, 유연한 사고를 기반으로 사업, 기획, 개발, UX 구성원들과 여러 사안에 대해 원활히 소통하며 서비스를 만들어 가실 분. 
- LINE의 글로벌 도전에 동참하고 성공 경험을 만들어 가기를 원하는 분</div>
					</div>
					
					<div class="para">
						<h4 class="title">우대 사항</h4>
						<div class="text">- Network / System programming에 대한 경험 
- 모바일 환경을 고려하여 서비스를 개발한 경험이 있으신 분 
- 대용량 데이타를 저장/분석 처리 시스템의 운영/구축 경험이 있으신 분 
- 외국어(영어/일본어/중국어 등) 사용에 있어 어려움이 없으신 분</div>
					</div>
					
					<div class="para">
						<h4 class="title">채용절차</h4>
						<div class="text">서류전형 > 실무자면접 > 임원면접 > 최종합격</div>
					</div>
					
					<div class="para">
						<h4 class="title">제출서류</h4>
						<div class="text">- 이력서, 자기소개서 제출 
- 최종합격 후 졸업증명서, 최종학교 전 학년 성적 증명서, 공인시험 및 기타 자격증 사본(소지자에 한함), 취업보호 대상 증명서(대상자에 한함) 제출</div>
					</div>
					
					<div class="para">
						<h4 class="title">복리후생</h4>
						<div class="text">- ​통신비 84만원​, 명절수당 40만원, 교육수당 60만원, 그외 복지포인트 100만원 상당 
- 주택구입 및 전세금 저리대출 및 원리금 분할 상환 제도 (비연고지 근무자 사택지원) 
- 사내에 식당(조식,중식,석식제공) / Fitness Center/ 카페/ 수유실/ 샤워실/ 수면실 제공 - 야근수당, 휴일수당, 출퇴근 야간교통비 지급 
- 자유복장 및 서열/호칭 '님'으로 불리는 flat한 조직문화 
- 성과 인센티브 연봉의 15%​ 수준 지급 (경영실적에 따라 플러스 알파)</div>
					</div>

					<div class="para chart">
						<h4 class="title">지원자 현황 통계</h4>
						<div class="row">
							<div class="col-md-2 applicants text-center">
								<div class="count">
									<div>지원자수</div>
									<div>
										<em>10</em>명
									</div>
								</div>
								<div class="count">
									<div>모집인원</div>
									<div>
										<em>○</em>명
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
									<div class="col-md-4">
										<h5>성별</h5>
									</div>
									<div class="col-md-4">
										<h5>학력</h5>
										<ul>
											<li class="row">
												<div class="col-xs-4 ageRange">
													<span>고졸미만</span>
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
													<span>고졸(예정)</span>
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
													<span>초대졸(예정)</span>
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
													<span>대졸(예정)</span>
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
													<span>석박사(예정)</span>
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

					<div class="para">
						<h4 class="title">근무 지역</h4>
						<div id="map" style="width: 100%; height: 270px;"></div>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div
							position = new daum.maps.LatLng(37.577627, 126.892186), mapOption = {
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

				</section>
				
			</div>
			
		</div>
	</div>
</body>
</html>