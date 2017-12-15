<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />

</head>
<body>
	<c:import url="index/top.jsp" />
	
	<section class="container">
		<div class="row">
			<div class="col-md-7">
				<div class="conten">
					<div role="tabpanel">
						<ul class="nav nav-pills" role="tablist">
							<li role="presentation" class="active"><a href="#new_noti"
								aria-controls="home" role="tab" data-toggle="tab">취업속보</a></li>
							<li role="presentation"><a href="#jobInterview"
								aria-controls="profile" role="tab" data-toggle="tab">직무분석</a></li>
							<li role="presentation"><a href="#jobFair"
								aria-controls="messages" role="tab" data-toggle="tab">채용박람회</a></li>
							<li role="presentation"><a href="#news"
								aria-controls="settings" role="tab" data-toggle="tab">취업뉴스</a></li>
						</ul>
	
						<div class="tab-content" style="padding: 10px">
							<div role="tabpanel" class="tab-pane active" id="new_noti">
								<c:import url="index/new_notification.jsp"/>
							</div>
							
							<div role="tabpanel" class="tab-pane" id="jobInterview">
								<c:import url="index/jobInterview.jsp"/>
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
				<div class="conten" style="padding:5px">
					<ul class="nav nav-tabs">
					   <li class="active"><a data-toggle="tab" href="#individual">개인회원</a></li>
					   <li><a data-toggle="tab" href="#company">기업회원</a></li>
					</ul>

					<div class="tab-content">
						<div id="individual" class="tab-pane active">
							<form class="login-form">
								<div class="form-group input-group-sm has-feedback">
									<span class="glyphicon glyphicon-user form-control-feedback"
										aria-hidden="true"></span> <input type="text"
										class="form-control " placeholder="아이디">
								</div>
								<div class="form-group input-group-sm has-feedback">
									<input type="password" class="form-control" placeholder="비밀번호">
									<span class="glyphicon glyphicon-lock form-control-feedback"
										aria-hidden="true"></span>
								</div>
								<div class="input-group-sm">
									<div class="checkbox">
										<label> <input type="checkbox"> 아이디 저장
										</label>
									</div>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-sm btn-block"
										value="로그인">
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
							<form class="login-form">
								<div class="form-group input-group-sm has-feedback">
									<span class="glyphicon glyphicon-user form-control-feedback"
										aria-hidden="true"></span> <input type="text"
										class="form-control " placeholder="아이디">
								</div>
								<div class="form-group input-group-sm has-feedback">
									<input type="password" class="form-control" placeholder="비밀번호">
									<span class="glyphicon glyphicon-lock form-control-feedback"
										aria-hidden="true"></span>
								</div>
								<div class="input-group-sm">
									<div class="checkbox">
										<label> <input type="checkbox"> 아이디 저장
										</label>
									</div>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-sm btn-block"
										value="로그인">
								</div>
								<p style="font-size: 0.9em">
									<a href="#">아이디 / 비밀번호 찾기</a>
								</p>
								<p style="font-size: 0.9em">
									<a href="#">기업회원으로 가입하세요</a>
								</p>
							</form>
						</div>
					</div>


				</div>
			</div>
		</div>
	</section>
	
	<section class="container" style="margin-top:20px; margin-bottom: 20px">
		<c:import url="index/notification.jsp" />
	</section>

	<c:import url="index/footer.jsp" />
</body>
</html>