<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<script type="text/javascript">
</script>
<style type="text/css">
	#serviceCenter fieldset {
		padding:20px;
		background-color:#ffff;
	}
	#serviceCenter .well {
		text-align:center;
		background-color:#dde6f7;
		margin-bottom: 0px;
	}
	#serviceCenter #title{
		font-size:60px;
		font-weight:bold;
	}
	#serviceCenter table{
		text-align:center;
	}
	
	#serviceCenter th{
		text-align:center;
	}
	
	#serviceCenter table{
		background-color:#ffff;
	}
	#serviceImg{
		width:100%;
	}
	h1 img{
		vertical-align: bottom;
		width:60px;
	}
	
 /* 사이드바 스타일 */
  #sidebar-wrapper {
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height:1160px;
  } 
   .sidebar-nav {
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
					<li><a href="<c:url value='/member/menu/notice.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
					<li><a href="<c:url value='/member/menu/qnaBoard.do'/>"><span
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
			<div id="serviceCenter">
			<fieldset>
			<img alt="고객센터" id="serviceImg" src="<c:url value='/images/service.jpg'/>">
				<h3><b>안녕하세요. 알쓰신JOB 고객센터입니다.</b></h3>
				감사하는 마음으로 늘 친절히 서비스하겠습니다.<br>
				무엇을 도와 드릴까요?
			<hr>
			<br>
			<div>
				<h1><img alt="noticeImg" src="<c:url value='/images/notice.png'/>">&nbsp;공지사항</h1>
			</div>
			<div class="well well-lg">
			<table class="table table-bordered">	
				<colgroup>
					<col style="width:10%">
					<col style="width:15%">
					<col style="width:*%">
					<col style="width:20%">
				</colgroup>
					<c:if test="${empty list}"> 
					 <tr>
						<td colspan='4'>공지사항이 없습니다.</td>
					</tr>
				</c:if> 
				<c:if test="${!empty list}">
						<tr>
							<th>번호</th>
							<th>구분</th>
							<th>제목</th>
							<th>등록일시</th>
						</tr>
					<c:forEach var="map" items="${list}">
						<tr>
							<td>${map.NO}</td>
							<td>
								<c:if test="${map.NOTITITLE=='공지'}">
									<span style="color:red">${map.NOTITITLE}</span>			
								</c:if>
								<c:if test="${map.NOTITITLE=='이벤트'}">
									<span style="color:blue">${map.NOTITITLE}</span>
								</c:if>
								<c:if test="${map.NOTITITLE=='오픈'}">
									<span style="color:orange">${map.NOTITITLE}</span>
								</c:if>
								<c:if test="${map.NOTITITLE=='뉴스'}">
									<span style="color:green">${map.NOTITITLE}</span>
								</c:if>
							</td>
							<td><a href="<c:url value='/member/menu/countUpdate.do?no=${map.NO}'/>">${map.TITLE}</a></td>
							<td><fmt:formatDate value="${map.REGDATE}" pattern="yyyy-MM-dd"/></td>
						</tr>
					</c:forEach> 
					</c:if>
				</table>
			</div>
			<hr>
			<br>
			<div>
				<h1><img alt="noticeImg" src="<c:url value='/images/QA.png'/>">&nbsp;질문 게시판</h1>
			</div>
			<div class="well well-lg">
			<table class="table table-bordered">
			<colgroup>
					<col style="width:10%">
					<col style="width:*%">
					<col style="width:15%">
					<col style="width:15%">
					<col style="width:10%">
			</colgroup>
			<c:if test="${!empty qlist}">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일시</th>
						<th>조회수</th>
					</tr>
					
				<c:forEach var="reboardVO" items="${qlist }">
					<tr>
					<td>${reboardVO.NO}</td>
					<td style="text-align:left">
						<c:if test="${reboardVO.DELFLAG=='Y'}">
							<span style="color: gray"><s>삭제된 글입니다.</s></span>
						</c:if> 
						 <c:if test="${reboardVO.DELFLAG!='Y'}">					
							<!-- 답변-계층적으로 보여주기 -->
							<c:if test="${reboardVO.STEP>0 }">
								<c:forEach var="i" begin="1" end="${reboardVO.STEP}"> 
									&nbsp;
								</c:forEach>
								<span class="glyphicon glyphicon-arrow-right" style="color:red"></span>						
								<%-- <img src="<c:url value='/images/re.png'/>" alt="re이미지"> --%>
							</c:if>
<a href="<c:url value='/member/menu/QnAcountUpdate.do?no=${reboardVO.NO}'/>">
								<!-- 제목이 긴 경우 일부만 보여주기 -->
								<c:if test="${fn:length(reboardVO.TITLE)>30 }">
									${fn:substring(reboardVO.TITLE,0,30) }...
								</c:if>
								<c:if test="${fn:length(reboardVO.TITLE)<=30 }">						
									${reboardVO.TITLE}
								</c:if>
							</a>
						
							<c:if test="${reboardVO.NEWIMGTERM<24}">
								<img src='<c:url value="/images/new.gif"/>' alt="new 이미지">
							</c:if>  
						 </c:if>
					</td>
					<td>${reboardVO.NAME}</td>
					<td><fmt:formatDate value="${reboardVO.REGDATE}" 
						pattern="yyyy-MM-dd" /> </td>
					<td>${reboardVO.READCOUNT}</td>		
				</tr> 
		  	</c:forEach>
			</c:if>
				</table>
				</div>
			</fieldset>
			</div>
			</div>
		</div>
		</div>
		<c:import url="../../index/footer.jsp" /> 
	</body>
</html>