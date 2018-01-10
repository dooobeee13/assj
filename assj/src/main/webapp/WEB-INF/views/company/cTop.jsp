<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function(){
		$('.searchjob').hover(function(){
			$(this).find('.searchCategory').show(); 
			//$('.searchCategory').show();
		},function(){
			$(this).find('.searchCategory').hide();
			//$('.searchCategory').hide();
		})
	});
</script>

<style>
	.top .topline {
		padding-top: 20px;
		background: #fff;
	}

	.top .logo {
		height: 40px;
		padding-left: 20px;
	}
	
	.top .logincol a{
		padding: 10px 20px;
		float: right;
	}
	
	.top .navbar-brand {
		padding : 20px 30px;
		font-weight: bold;
		font-size: 1.5em;
		color: black;
	}
	
	.top .navbar {
		min-height: 60px;
	}
	
	.top ul.navbar-nav {
		margin-left: 70px;
	}
	
	.top .navbar li a{
		padding-top: 22px;
		padding-bottom: 22px;
		font-size: 1.3em;
		font-weight: bold;
		color: black;
	}
	
	.top .navbar li {
		margin-right: 20px;
	}
	
	.top .navbar-default .navbar-nav>.active>a:after, .top .navbar li a:hover:after {
		content: "";
	    position: absolute;
	    left: 8px;
	    bottom: -3px;
	    display: block;
	    width: 90%;
	    padding: 0 1px;
	    border-bottom: 4px solid #4ba4ff;
	}
	
	.top .navbar-default .navbar-nav>.active>a {
		color: #4ba4ff;
    	background-color: inherit;	
	}
	
	.top .collapse {
		background-color: #fff;
		border-bottom: 2px solid #edeff2;
	}
</style>
<div class="top">
	<header>
		<div class="topline container-fluid">
			<div class="row">
				<div class="col-md-3">
					<a href="<c:url value='/index.do' />">
						<img class="logo" src="<c:url value='/images/assj_logo2.png' />" alt="알쓸신잡 로고">
				  	</a>
				</div>
				<div class="col-md-4 col-md-offset-5 logincol">
					<c:if test="${empty sessionScope.cmMemberVO.cmId}">
						<a href="<c:url value='/member/menu/serviceCenter.do'/>"><b>고객센터</b></a> 
						<a href="<c:url value='/member/login/psMemLogin.do'/>"><b>로그인</b></a>
					</c:if>
					
					<!-- 기업회원 로그인후-->
					<c:if test="${!empty sessionScope.cmMemberVO.cmId}">
						<a href="<c:url value='/member/menu/serviceCenter.do'/>"><b>고객센터</b></a>
						<a href="<c:url value='/member/edit/cmMemEdit.do'/>"><b>회원정보수정</b></a>
						<a href="<c:url value='/logout2.do'/>"><b>로그아웃</b></a>
					</c:if>
				</div>
			</div>
			
		</div>
	</header>
	<nav class="navbar navbar-default">
	  <div>
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="<c:url value='/hnmanage.do' />">기업서비스 홈</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li <c:if test="${topIndex == 1}">class="active"</c:if>><a href="/assj/hire_noti/hire1.do">공고등록</a></li>
	        <li <c:if test="${topIndex == 2}">class="active"</c:if>><a href="/assj/hnmanage.do">공고·지원자관리</a></li>
	        <li <c:if test="${topIndex == 3}">class="active"</c:if>><a href="#">인재검색</a></li>
	        <li <c:if test="${topIndex == 4}">class="active"</c:if>><a href="<c:url value='/Interviews/forinterview.do'/>">면접관리</a></li>
	      </ul>
	      <!-- <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 예비용 버튼</a></li>
	      </ul> -->
	    </div>
	  </div>
	</nav>
	
</div>