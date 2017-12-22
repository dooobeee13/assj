<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>기업회원 탈퇴2</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />

<script type="text/javascript">
</script>
<style type="text/css">
	#cmMemOut2 h1{
		font-weight:bold;
	}
	#cmMemOut2 fieldset{
		/* width:720px;
		margin:0 auto;	 */
		padding:20px;
		background-color:#ffff;
	}
	#cmMemOut2 .well{
		background-color:#dde6f7;
		padding:30px;
	}
	#cmMemOut2 #wellSm{
		margin:0 auto;
		width:500px;
	}
	#cmMemOut2 label{
		width:120px;
	}
	#cmMemOut2 span{
		color:#ff4800;
	}
	#cmMemOut2 #btnDiv{
		text-align:center;
	}
	
	
	
	 /* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 670px;
  } 
  
  
   .sidebar-nav {
   /*  width: 250px;
    margin: 0;
    padding: 0; */
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
		
		<div class="container">
		<div class="row">
		<!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h1>
							<b>고객센터</b>
						</h1></li>
					<hr>
					<li><h5>
							<b>무엇을 도와드릴까요?</b>
						</h5></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>Q&A</a></li>
					<li><a href="<c:url value='/member/menu/onenone.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>이메일 문의</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>아이디.비밀번호 찾기</a></li>
				</ul>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h5>
							<b>개인회원서비스</b>
						</h5></li>
					<li><a href="<c:url value='/member/menu/psService.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>개인회원 안내</a></li>
					<li><a href="<c:url value='/member/out/psMemOut.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>개인회원 탈퇴</a></li>
				</ul>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h5>
							<b>기업회원서비스</b>
						</h5></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>채용광고 안내</a></li>
					<li><a href="<c:url value='/member/out/cmMemOut.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>기업회원 탈퇴</a></li>
				</ul>
			</div>
		</div>
<!-- /사이드바 -->



<!-- 본문 -->
			<div class="col-md-9">
		
		<div id="cmMemOut2">
		<fieldset>
			<h1>기업회원 탈퇴</h1>
			<br>
			<hr>
			<br>
				<div class="well well-lg">
					회원님께서는 <b>모든 회원 혜택을 포기하고 탈퇴하기</b>를 선택하였습니다.<br>
					본인확인을 위해 비밀번호를 다시 한번 입력해주시기 바랍니다.<br>
					<span>※ 타인에게 노출되지 않도록 주의해 주세요.</span><br>
					<hr>
					<br>
					<b>&nbsp;<span class="glyphicon glyphicon-chevron-right"></span>&nbsp;비밀번호 재확인</b><br><br>
					<div class="well well-sm" id="wellSm">
						<form role="form" class="form-inline" method="post" action="<c:url value='/member/out/cmMemOut2.do'/>">
							<div class="form-group">
								<label for="cmName">이름</label> 
									<c:if test="${!empty sessionScope.cmMemberVO}">
										${sessionScope.cmMemberVO.cmName}(${sessionScope.cmMemberVO.cmId})
									</c:if>
							</div><br>			
							<hr>	
							<div class="form-group">
								<label for="cmPwd">비밀번호</label> 
								<input type="password" class="form-control" id="cmPwd" name="cmPwd">
							</div><br>				
							<hr>	
							<div id="btnDiv">
									<button type="submit" class="btn btn-primary">회원확인</button>
							</div>
						</form>
					</div>
				</div>
			</fieldset>
			
			</div>
			</div>
		</div>
		</div>
		<c:import url="../../index/footer.jsp" />
	</body>
</html>