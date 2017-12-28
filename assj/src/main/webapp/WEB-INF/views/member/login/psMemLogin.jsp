<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>    
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <title>개인회원 로그인</title> 
    <!-- Bootstrap -->
    <script src="../../js/bootstrap.min.js"></script>
	<link href="../../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
    <style type="text/css">
    	fieldset{
    		width:800px;
    		height:560px;
			margin:0 auto;	
			background-color:#ffff;
    	}

    </style>
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
 	 <c:import url="../../index/top.jsp" />
    <div class="container">
    	<fieldset>
		<div class="col-lg-12">
				<div class="conten" style="padding:15px">
			    	<h2><b>로그인이 필요한 서비스입니다.</b></h2>
			    	<p><b>알쓸신JOB</b> 회원이 아니면, 지금 회원가입을 해주세요.</p>
			    	<hr>
					<c:if test="${empty sessionScope.compMemberVO.cmId}">
					<c:if test="${empty sessionScope.memberVO.memId}">
					<ul class="nav nav-tabs" id="MemberChoice">
					   <li class="active" style=width:200px><a data-toggle="tab" href="#individual">개인회원</a></li>
					   <li style=width:200px><a data-toggle="tab" href="#company">기업회원</a></li>
					</ul>

					<div class="tab-content">
						<div id="individual" class="tab-pane active">
							<form class="login-form" method="post" action="<c:url value='/index.do'/>">
									<div class="form-group input-group-lg has-feedback">
										<span class="glyphicon glyphicon-user form-control-feedback"
											aria-hidden="true"></span> 
											<input type="text" class="form-control" placeholder="아이디" id="memId" name="memId" 
											<c:if test="${!empty cookie.ck_memId.value}">
												value="${cookie.ck_memId.value}"
											</c:if>>
									</div>
									<div class="form-group input-group-lg has-feedback">
										<input type="password" class="form-control" placeholder="비밀번호" id="memPwd" name="memPwd">
										<span class="glyphicon glyphicon-lock form-control-feedback"
											aria-hidden="true"></span>
									</div>	
									<div class="input-group-sm">
										<div class="checkbox" >
											<label> <input type="checkbox"  name="chkSaveId" id="chkSaveId"
											<c:if test="${!empty cookie.ck_memId.value}">
												checked
											</c:if>> 아이디 저장
											</label>
										</div>
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-primary btn-lg btn-block" value="로그인" id="loginBtn">
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
								<div class="form-group input-group-lg has-feedback">
									<span class="glyphicon glyphicon-user form-control-feedback"
										aria-hidden="true"></span> <input type="text"
										class="form-control" placeholder="아이디" id="cmId" name="cmId" <c:if test="${!empty cookie.ck_cmId.value}">
												value="${cookie.ck_cmId.value}"
											</c:if>>
								</div>
								<div class="form-group input-group-lg has-feedback">
									<input type="password" class="form-control" placeholder="비밀번호" id="cmPwd" name="cmPwd">
									<span class="glyphicon glyphicon-lock form-control-feedback"
										aria-hidden="true"></span>
								</div>
								<div class="input-group-sm">
									<div class="checkbox">
										<label> <input type="checkbox" name="chkSaveId2" id="chkSaveId2" <c:if test="${!empty cookie.ck_cmId.value}">
												checked
											</c:if>>아이디 저장
										</label>
									</div>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-lg btn-block"
										value="로그인">
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
					<c:if test="${!empty sessionScope.memberVO.memId}">
							<b>&nbsp;&nbsp;&nbsp;${sessionScope.memberVO.memName}</b>님 <a href="#"><span class="smFont">MyPage 바로가기</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value='/logout.do'/>"><button type="button" class="btn btn-default btn-sm">로그아웃</button></a>
							<hr>
							<div id="memMenu">
								&nbsp;<span class="smFont">==입사지원 ? | 스크랩 ? | 관심기업 ?==</span>
								 <p>=========================
									=========================
									=========================
									=========================
									=========================</p>
							</div>
					</c:if>
					<c:if test="${!empty sessionScope.compMemberVO.cmId}">
							<b>&nbsp;&nbsp;&nbsp;${sessionScope.compMemberVO.cmName}</b>님 <a href="#"><span class="smFont">MyPage 바로가기</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value='/logout2.do'/>"><button type="button" class="btn btn-default btn-sm">로그아웃</button></a>
							<hr>
							<div id="memMenu">
								&nbsp;<span class="smFont">진행공고 ? | 마감공고 ? | 입사지원 ? |</span>
								 <p>=========================
									=========================
									=========================
									=========================
									=========================</p>
							</div>
					</c:if>
					</div>
				</div>
		    	</fieldset>
			</div>
		<c:import url="../../index/footer.jsp" />
</body>
</html>