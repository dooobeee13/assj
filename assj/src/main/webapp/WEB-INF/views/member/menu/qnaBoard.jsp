<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1상담문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
	function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
		frmPage.submit();
	}
</script>
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	#frame {
		padding:40px;
		background-color: #ffff;
		height:820px;
	}
	table{
		text-align:center;
	}
	table th{
		text-align:center;
	}
	.btnDiv{
		text-align:right;
	}
	#searchTable{
		float:right;
	}
	.divPage{
		text-align:center;
	}
	h1 img{
		vertical-align: bottom;
		width:60px;
	}
	.red{
		color:red;
	}
	 /* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height:820px;
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
			<div id="frame">
				<h1><img alt="noticeImg" src="<c:url value='/images/QA.png'/>">&nbsp;질문 게시판</h1>
				<hr>
				<br>
				<br>
				<!-- 페이징 처리에 필요한 form 태그 -->
				<form name="frmPage" method="post" 
					action="<c:url value='/member/menu/qnaBoard.do'/>">
					<input type="hidden" name="searchKeyword" 
						value="${param.searchKeyword }">
					<input type="hidden" name="currentPage">
				</form>
				
				<c:if test="${!empty param.searchKeyword }">
					<!-- 검색의 경우 -->
					<p>검색어 : ${searchVO.searchKeyword}, ${pagingInfo.totalRecord }건 
						검색되었습니다.</p>
				</c:if>
				<c:if test="${empty param.searchKeyword }">
					<!-- 전체 조회의 경우 -->
					<p>전체 조회 결과, ${pagingInfo.totalRecord }건 조회되었습니다.</p>
				</c:if>
				
				<div class="divSearch">
				<form name="frmSearch" method="post" 
   					action="<c:url value='/member/menu/qnaBoard.do'/>">
					<table id="searchTable">
						<tr>
							<td style=width:80%>
								<input type="text" class="form-control" size="8" maxlength="4" name="searchKeyword" placeholder="검색어를 입력하세요" value="${param.searchKeyword }">
							</td>
							<td style=width:20%>
								<input type="submit" class="btn btn-primary btn-sm" value="검색" >
							</td>
						</tr>
					</table>
				</form>
				<br><br>
				<table class="table table-hover">
				<colgroup>
					<col width=12%>
					<col width=48%>
					<col width=18%>
					<col width=12%>
					<col width=10%>
				</colgroup>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일시</th>
					<th>조회수</th>
				</tr>			
					<c:forEach var="reboardVO" items="${list }">
					<tr>
					<td>${reboardVO.no}</td>
					<td style="text-align:left">

						<c:if test="${reboardVO.delFlag=='Y'}">
							<span style="color: gray"><s>삭제된 글입니다.</s></span>
						</c:if> 
						 <c:if test="${reboardVO.delFlag!='Y'}">						
							<!-- 답변-계층적으로 보여주기 -->
							<c:if test="${reboardVO.step>0 }">
								<c:forEach var="i" begin="1" end="${reboardVO.step }"> 
									&nbsp;
								</c:forEach>
								<span class="glyphicon glyphicon-arrow-right" style="color:red"></span>						
								<%-- <img src="<c:url value='/images/re.png'/>" alt="re이미지"> --%>
							</c:if>
<a href="<c:url value='/member/menu/QnAcountUpdate.do?no=${reboardVO.no}'/>">
								<!-- 제목이 긴 경우 일부만 보여주기 -->
								<c:if test="${fn:length(reboardVO.title)>30 }">
									${fn:substring(reboardVO.title,0,30) }...
								</c:if>
								<c:if test="${fn:length(reboardVO.title)<=30 }">						
									${reboardVO.title}
								</c:if>
							</a>
							 <!-- 24시간 이내의 글인 경우 -->
							<c:if test="${reboardVO.newImgTerm<24 }">
								<img src='<c:url value="/images/new.gif"/>' 
								alt="new 이미지">
							</c:if>  
					 </c:if> 
					</td>
					<td>
						<c:if test="${reboardVO.name=='관리자'}">
							<span class="red">${reboardVO.name}</span>
						</c:if>
						<c:if test="${reboardVO.name!='관리자'}">
							${reboardVO.name}						
						</c:if>
					</td>
					<td><fmt:formatDate value="${reboardVO.regdate}" 
						pattern="yyyy-MM-dd" /> </td>
					<td>${reboardVO.readCount}</td>		
				</tr> 
		  	</c:forEach>
				</table>
	<div class="divPage">
	<ul class="pagination">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 ◀ -->
	<c:if test="${pagingInfo.firstPage>1 }">
		<li><a href="javascript:void(0)" onclick="pageFunc(${pagingInfo.firstPage-1})">«</a></li>
	</c:if>	
	
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage}" 
		end="${pagingInfo.lastPage}">
		<c:if test="${i==pagingInfo.currentPage}">
			<li><a href="javascript:void(0)" style="background-color:#337ab7; color:white">${i }</a></li>
		</c:if>
		<c:if test="${i!=pagingInfo.currentPage}">
			<li><a href="javascript:void(0)" onclick="pageFunc(${i })">${i }</a></li>
 		</c:if>				
	</c:forEach>
	
	<!-- 다음 블럭으로 이동 ▶ -->
	<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage}">
		<li><a href="javascript:void(0)" onclick="pageFunc(${pagingInfo.lastPage+1})">»</a></li>
	</c:if>
	
	<!--  페이지 번호 끝 -->
	</ul>
	</div>
		<div class="btnDiv">
				<a href="<c:url value='/member/menu/qnaWrite.do'/>"><button type="button" class="btn btn-default btn-sm" id="footerBtn2">Q&A게시판에 글쓰기</button></a>			
		</div>
		<br>
		
		</div>
		</div>
	</div>
	</div>
	</div>
		<c:import url="../../index/footer.jsp" />
</body>
</html>