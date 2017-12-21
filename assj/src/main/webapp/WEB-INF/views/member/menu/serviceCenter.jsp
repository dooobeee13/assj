<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>고객센터</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript">
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />

<style type="text/css">
	#serviceCenter fieldset {
		width:720px;
		margin:0 auto;	
		padding:20px;
		background-color:#ffff;
	}
	#serviceCenter .well {
		text-align:center;
		background-color:#dde6f7;
	}
	#serviceCenter #title{
		font-size:60px;
		font-weight:bold;
	}
	#serviceCenter table,th{
		text-align:center;
	}
	#serviceCenter table{
		background-color:#ffff;
	}
	
	
	
	
	/* 사이드바 스타일 */
   	 #page-wrapper {
    padding-left: 380px;
  }
  
  #sidebar-wrapper {
    position:absolute;
    width: 190px;
    height: 63%;
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  
  .sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 0.8em;
    line-height: 2.2em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #7a6666;
  }
  
  .sidebar-nav li a:hover {
    color: #cccc;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
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
	<!-- 사이드바 -->
		<div id="page-wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1><b>고객센터</b></h1></li>
				<hr>
				<li><h5><b>무엇을 도와드릴까요?</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>Q&A</a></li>
				<li><a href="<c:url value='/member/menu/onenone.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>이메일 문의</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>아이디.비밀번호 찾기</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인회원서비스</b></h5></li>
				<li><a href="<c:url value='/member/menu/psService.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>개인회원 안내</a></li>
				<li><a href="<c:url value='/member/out/psMemOut.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>개인회원 탈퇴</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>기업회원서비스</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>채용광고 안내</a></li>
				<li><a href="<c:url value='/member/out/cmMemOut.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>기업회원 탈퇴</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
		
		<!-- 본문 -->
		<div class="container">
			<div id="serviceCenter">
			<fieldset>
			<div class="well well-lg">
			<h1 id="title">고객센터 img</h1>
			</div>
			<p><h3><b>안녕하세요. 알쓰신JOB 고객센터입니다.</b></h3>
				무엇을 도와 드릴까요?<br>
				감사하는 마음으로 늘 친절히 서비스하겠습니다.</p>
			<hr>
			<div class="well well-lg">
			<h2><mark>공지사항</mark></h2>
			<table class="table table-bordered">
					<tr>
						<th>제목</th>
						<th>등록일</th>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
					</tr>
				</table>
			</div>
			<br><br>
			<hr>
			<div class="well well-lg">
			<h2><mark>Q&A</mark></h2>
			<table class="table table-bordered">
					<tr>
						<th>제목</th>
						<th>등록일</th>
						<th>글쓴이</th>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
						<td>홍길동</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
						<td>홍길동</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
						<td>홍길동</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
						<td>홍길동</td>
					</tr>
					<tr>
						<td>2016 하반기 금호아시아나그룹 채용설명회/상담회 일정 안내</td>
						<td>2016/09/09</td>
						<td>홍길동</td>
					</tr>
				</table>
				</div>
			</fieldset>
		</div>
		</div>
		<c:import url="../../index/footer.jsp" /> 
	</body>
</html>