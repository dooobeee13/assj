<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.carousel').carousel({interval:3000})
		
		
		$('#naverLogin').click(function(){
			$.ajax({
				url: '<c:url value="/login/naverLogin.do" />',
				success: function(res){
					location.href=res;
				}
			})
		});
		
	});
</script>
<style type="text/css">
	.indexContent .memInfo {
		padding: 20px;
	}
	
	.indexContent .memInfo p strong {
		font-size: 1.5em;
	}
	
	.indexContent #slide {
	    height: 180px;
	    background: #ebecee;
	    overflow-x: hidden;
	    overflow-y: auto;
  	}
  	.indexContent .media-left {
		vertical-align: middle;
	}
</style>
</head>
<body>
	<c:import url="index/top.jsp" />
	
	<div class="indexContent">
		<section class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="conten">
						<div role="tabpanel">
							<ul class="nav nav-pills" role="tablist">
								<li role="presentation" class="active">
									<a href="#new_noti" aria-controls="home" role="tab" data-toggle="tab">취업속보</a>
								</li>
								<li role="presentation">
									<a href="#notice" aria-controls="profile" role="tab" data-toggle="tab">공지사항</a>
								</li>
<!-- 								<li role="presentation">
									<a href="#jobInterview" aria-controls="profile" role="tab" data-toggle="tab">직무분석</a>
								</li> -->
								<li role="presentation">
									<a href="#jobFair" aria-controls="messages" role="tab" data-toggle="tab">채용박람회</a>
								</li>
								<li role="presentation">
									<a href="#news" aria-controls="settings" role="tab" data-toggle="tab">취업뉴스</a>
								</li>
							</ul>

							<div class="tab-content" style="padding: 10px">
								<div role="tabpanel" class="tab-pane active" id="new_noti">
									<c:import url="index/new_notification.jsp" />
								</div>

								<%-- <div role="tabpanel" class="tab-pane" id="jobInterview">
									<c:import url="index/jobInterview.jsp" />
								</div> --%>
								<div role="tabpanel" class="tab-pane" id="notice">
									<c:import url="index/notice.jsp" />
								</div>

								<div role="tabpanel" class="tab-pane" id="jobFair">
									<c:import url="index/jobFair.jsp" />
								</div>

								<div role="tabpanel" class="tab-pane" id="news">
									<c:import url="index/news.jsp" />
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-2 padding-0">
					<div class="conten">

						<div class="panel panel-default">
							<div class="panel-heading">실시간 검색 기업</div>

							<div class="panel-body">
								<div>한국금융투자협회</div>
								<div>유니온</div>
								<div>메덱스</div>
								<div>보고테크</div>
								<div>켐리치</div>
								<div>교보생명보험</div>
								<div>제일인터내셔널</div>
								<div>엘지</div>
								<div>넷게임즈</div>
								<div>롯데닷컴</div>
								<div>메가스터디교육</div>
								<div>블루홀</div>
								<div>한화테크윈</div>
								<div>LG화학</div>
								<div>LG display</div>
								<div>naver</div>
							</div>
						</div>

					</div>
				</div>

				<div class="col-md-3">
					<div class="conten" style="padding: 5px">
						<c:if test="${empty sessionScope.cmMemberVO.cmId}">
							<c:if test="${empty sessionScope.memberVO}">
								<ul class="nav nav-tabs" id="MemberChoice">
									<li class="active"><a data-toggle="tab" href="#individual">개인회원</a></li>
									<li><a data-toggle="tab" href="#company">기업회원</a></li>
								</ul>

								<div class="tab-content">
									<div id="individual" class="tab-pane active">
										<form class="login-form" method="post" action="<c:url value='/index.do'/>">
											<div class="form-group input-group-sm has-feedback">
												<span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span> 
												<input type="text" class="form-control " placeholder="아이디" id="memId" name="memId"
													<c:if test="${!empty cookie.ck_memId.value}">
														value="${cookie.ck_memId.value}"
													</c:if>>
											</div>
											<div class="form-group input-group-sm has-feedback">
												<input type="password" class="form-control" placeholder="비밀번호" id="memPwd" name="memPwd"> 
												<span class="glyphicon glyphicon-lock form-control-feedback" aria-hidden="true"></span>
											</div>
											<div class="input-group-sm">
												<div class="checkbox">
													<label> 
														<input type="checkbox" name="chkSaveId" id="chkSaveId"
															<c:if test="${!empty cookie.ck_memId.value}">checked</c:if>>
														아이디 저장
													</label>
												</div>
											</div>
											<div class="form-group">
												<input type="submit" class="btn btn-primary btn-sm btn-block" value="로그인" id="loginBtn">
											</div>
											<div style="margin-bottom: 10px">
												<div style="margin-bottom: 5px">
													<a href="#"> 
														<img class="img-responsive" id="naverLogin" style="width: 150px" 
															src="<c:url value='/images/naver_green.PNG' />">
													</a>
												</div>
												<div>
													<!-- <a href="javascript:loginWithKakao()">  -->
													<a href="https://kauth.kakao.com/oauth/authorize?client_id=e7a7a838c3daff237d66d1209dab8b43&redirect_uri=http://localhost:9090/assj/kakaologin.do&response_type=code"> 
														<img class="img-responsive" style="width: 150px" src="<c:url value='/images/kakaoLogin.png' />">
													</a>
													<script>
														Kakao
																.init('4db78fa8dbff10a9ea78910fbb08ccda');
														function loginWithKakao() {
															Kakao.Auth
																	.login({
																		success : function(
																				authObj) {
																			alert(JSON
																					.stringify(authObj));
																		},
																		fail : function(
																				err) {
																			alert(JSON
																					.stringify(err));
																		}
																	});
														};
													</script>
												</div>
											</div>
											<p style="font-size: 0.9em">
												<a href="#">아이디 / 비밀번호 찾기</a>
											</p>
											<p style="font-size: 0.9em">
												<a href="<c:url value='/member/register/register.do'/>">아직 회원이 아니세요? 회원가입</a>
											</p>
										</form>
									</div>

									<div id="company" class="tab-pane">
										<form class="login-form" method="post" action="<c:url value='/index2.do'/>">
											<div class="form-group input-group-sm has-feedback">
												<span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span> 
												<input type="text" class="form-control " placeholder="아이디" id="cmId" name="cmId"
													<c:if test="${!empty cookie.ck_cmId.value}">
														value="${cookie.ck_cmId.value}"
													</c:if>>
											</div>
											<div class="form-group input-group-sm has-feedback">
												<input type="password" class="form-control" placeholder="비밀번호" id="cmPwd" name="cmPwd"> 
												<span class="glyphicon glyphicon-lock form-control-feedback" aria-hidden="true"></span>
											</div>
											<div class="input-group-sm">
												<div class="checkbox">
													<label> 
														<input type="checkbox" name="chkSaveId2" id="chkSaveId2" 
															<c:if test="${!empty cookie.ck_cmId.value}">checked</c:if>>
															아이디 저장
													</label>
												</div>
											</div>
											<div class="form-group">
												<input type="submit" class="btn btn-primary btn-sm btn-block" value="로그인">
											</div>
											<p style="font-size: 0.9em">
												<a href="#">아이디 / 비밀번호 찾기</a>
											</p>
											<p style="font-size: 0.9em">
												<a href="<c:url value='/member/register/register.do'/>" id="comp">기업회원으로 가입하세요</a>
											</p>
										</form>
									</div>
								</div>
							</c:if>
						</c:if>
						<c:if test="${!empty sessionScope.memberVO}">

							<div class="memInfo">
								<p>
									<span><strong>${sessionScope.memberVO.memName}</strong> 님</span>
									<span style="float: right; margin-top: 5px"><a href="<c:url value='/mypageMain.do' />">My 홈 바로가기</a></span>
								</p>	
								<p>
									<span>등록한 이력서 <a href="/assj/resume/resumeList.do">${numOfResume}개</a></span>
								</p>
								<p>
									<span>스크랩한 공고 <a href="/assj/member/menu/scrap.do">${numOfScrap}개</a></span>
								</p>
									<a href='/assj/logout.do' class="btn btn-primary btn-sm btn-block">로그아웃</a>
							</div>
							
							<!-- 슬라이드 -->
							<fieldset id="slide" style="width: 100%; height: 210px; position: relative;">
								<div id="carousel-example-generic" class="carousel slide">
									<div class="carousel-inner" style="height: 210px">
										<div class="item active">
											<img class="img-responsive" src="<c:url value='/images/slide1.png'/>" alt="slide1">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide2.png'/>" alt="slide2">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide3.png'/>" alt="slide3">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide4.png'/>" alt="slide4">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide5.png'/>" alt="slide5">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide6.png'/>" alt="slide6">
										</div>
									</div>
								</div>
							</fieldset>
							<!-- 슬라이드 끝 -->
							
						</c:if>
						<c:if test="${!empty sessionScope.cmMemberVO.cmId}">
						
						
							<%-- <br>
							<b>&nbsp;&nbsp;&nbsp;${sessionScope.cmMemberVO.cmName}</b>님 <a
								href="#"><span class="smFont">MyPage 바로가기</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="<c:url value='/logout2.do'/>"><button type="button"
									class="btn btn-default btn-sm">로그아웃</button></a>
							<hr>
							<div id="memMenu">
								&nbsp;<span class="smFont">진행공고 ? | 마감공고 ? | 입사지원 ? |</span>
								<p>========================= =========================
									========================= =========================
									=========================</p>
							</div> --%>
							
							<div class="memInfo">
								<p>
									<span><strong>${sessionScope.cmMemberVO.cmName}</strong> 님</span>
									<span style="float: right; margin-top: 5px"><a href="<c:url value='/hnmanage.do' />">기업 홈 바로가기</a></span>
								</p>	
								<p>
									<span>진행중인 공고 <a href="<c:url value='/hnmanage.do' />">${numOfcurrHn}건</a></span>
								</p>
								<p>
									<span>미열람 입사지원 <a href="<c:url value='/hnmanage.do' />">${numOfUnopened}건</a></span>
								</p>
									<a href='/assj/logout2.do' class="btn btn-primary btn-sm btn-block">로그아웃</a>
							</div>
							
							<!-- 슬라이드 -->
							<fieldset id="slide" style="width: 100%; height: 210px; position: relative;">
								<div id="carousel-example-generic" class="carousel slide">
									<div class="carousel-inner" style="height: 210px">
										<div class="item active">
											<img class="img-responsive" src="<c:url value='/images/slide1.png'/>" alt="slide1">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide2.png'/>" alt="slide2">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide3.png'/>" alt="slide3">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide4.png'/>" alt="slide4">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide5.png'/>" alt="slide5">
										</div>
										<div class="item">
											<img class="img-responsive" src="<c:url value='/images/slide6.png'/>" alt="slide6">
										</div>
									</div>
								</div>
							</fieldset>
							<!-- 슬라이드 끝 -->
						</c:if>
					</div>

				</div>
			</div>

		</section>

		<section class="container" style="margin-top: 20px; margin-bottom: 20px">
			<c:import url="index/notification.jsp" />
		</section>

	</div>

	<c:import url="index/footer.jsp" />

</body>
</html>