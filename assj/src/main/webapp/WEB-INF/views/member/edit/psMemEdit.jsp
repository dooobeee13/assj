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
    <title>개인회원 수정</title> 
    <!-- Bootstrap -->
    <script src="../../js/bootstrap.min.js"></script>
	<link href="../../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
    <style type="text/css">
    	#psMemEdit h1{
    		font-weight:bold;
    	}
    	#psMemEdit span{
     		color:red;
     	}
     	#psMemEdit {
     		/* width:720px;*/
     		padding:20px; 
    		margin:0 auto;	
     		background-color:#ffff;
     	}
     	#psMemEdit fieldset{
	 		width:600px;
	 		margin:0 auto;
			padding:20px;
			background-color:#dde6f7;
 		}
 		#psMemEdit table{
 			margin:0 auto;	
 			width:300px;
 			text-align:left;
 		}
 		#psMemEdit td{
 			padding:8px;
 		}
 		
 	 /* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 580px;
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
				<li class="sidebar-brand"><h1>My Page</h1></li>
				<hr>
				<li><h5><b>이력서 관리</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이력서 등록</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이력서 현황</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>자소서 관리</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>맞춤채용 정보</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>맞춤채용 설정</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>나의 맞춤채용 정보</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>스크랩한 공고</b></h5></li>
				<li><a href="<c:url value='/member/menu/scrap.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>스크랩 공고</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>관심기업정보</a></li>
			</ul>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인정보 관리</b></h5></li>
				<li><a href="<c:if test="${!empty sessionScope.memberVO.memId}"><c:url value='/member/edit/psMemEdit.do'/></c:if><c:if test="${!empty sessionScope.cmMemberVO.cmId}"><c:url value='/member/edit/cmMemEdit.do'/></c:if>"><span class="glyphicon glyphicon-chevron-right"></span>개인정보 수정</a></li>
				<li><a href="<c:url value='/member/trans/pwdTrans.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>비밀번호 변경</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
		
		<!-- 본문 -->
   		<div class="col-md-9">
   		 <div id="psMemEdit">
    	<h1>개인정보 수정</h1>
    	<br>
    	<hr>
    	<fieldset>
    		<p>회원님의 정보를 안전하게 보호하기 위해 <b>비밀번호를 다시 한번 입력</b>해 주시기 바랍니다.</p>
    		<span>※ 타인에게 노출되지 않도록 주의해 주세요.</span>
    		<br><br><br>
    		<h1>비밀번호 재확인</h1>
    		<br><br>
    		<form name=frm method="post" action="<c:url value='/member/edit/psMemEdit.do'/>">
    			<table>
    				<tr>
	    				<td><label for="memName">이름</label></td> 
						<td><h4><b>
						<c:if test="${!empty sessionScope.memberVO}">
							${sessionScope.memberVO.memName}(${sessionScope.memberVO.memId})	
						</c:if>
						</b></h4></td>
					</tr>
    				<tr>
    					<td><label for="memPwd">비밀번호</label></td> 
						<td><input type="password" class="form-control" id="memPwd" name="memPwd"></td>
    				</tr>
    				<tr>
    					<td colspan="2"><button type="submit" class="btn btn-primary btn-lg btn-block">회원확인</button></td>
    				</tr>
    			</table>
    		</form>
    	</fieldset>
    	</div>
    	</div>
    </div>    
    </div>
    <c:import url="../../index/footer.jsp" />
</body>
</html>
    