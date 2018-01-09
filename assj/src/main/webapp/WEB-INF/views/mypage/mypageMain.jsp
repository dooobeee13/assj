<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 메인</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#mypage ul li:eq(0)').attr("class","active");
		$('.row .notification').show();
		$('#scrap').hide();
		
		
		$('#mypage ul li').click(function(){
			$('#mypage ul li').attr("class","");
			$(this).attr("class","active");
		});
		
		$('#mypage ul li:eq(0)').click(function(){
			$('.row .notification').show();
			$('#scrap').hide();
		});
		
		$('#mypage ul li:eq(3)').click(function(){
			$('#scrap').show();
			$('.row .notification').hide();
		});
	});
</script>
<style type="text/css">
	table{
		border-collapse: collapse;
		width :100%;
		margin:0 auto;
		text-align: center;
	}
	fieldset {
		background-color:#ffff;
    }
	.row .notification fieldset{
		width:100%;
		padding:20px;
		background-color:#ffff;
	}
  	.notification {
		margin-right: 0;
		margin-left: 0; 
	}
	
	.notification .notiTitle {
		background: #fff;
	}

	.notification .panel-heading img {
		width: 160px;
		height: 35px;
	}
	
	.notification .compName {
		font-weight: bold;
		font-size: 1.2em;
	}
	
	.notification .notiContent {
		overflow: hidden;
   		text-overflow: ellipsis;
   		display: -webkit-box;
  		-webkit-line-clamp: 2;
  		-webkit-box-orient: vertical;  
	}
	
	.notification .notiItem {
		height: 198px;
		margin-bottom: 0;
	}
	
	.notification .notiItem:hover {
		border: 2px solid red;
	}
	
	.notification .notiItem a {
		color: black;
		text-decoration: none;
		display: block;
   	 	background-color: transparent;
	}
	.row .notification{
		padding-right: 15px;
    	padding-left: 15px;
	}
	.panel-body a{
		background-color: transparent;
	}
	
	#scrap fieldset{
		width:100%;
		padding:15px;
		background-color:#ffff;
	}
	#scrap {
/* 		height:1120px; */
   		padding:20px; 
   		margin:0 auto;	
   		background-color:#ffff;
   	}
	#scrap h1{
		font-weight:bold;
	}
	#scrap .well{
		background-color:#e8eaf9;
	}
	#scrap table{
		text-align:center;
		background-color:#ffff;
	}
	#scrap th{
		background-color:#eee;
		text-align:center;
	}
	#scrap #rtMenu{
		float:right;
	}
	#divPage{
		text-align:center;
	}
</style>
</head>
<body>
<c:import url="../index/top.jsp" />

<div class="container">
<div class="row">
<!-- 페이징 처리에 필요한 form 태그 -->
	<form name="frmPage" method="post" 
		action="<c:url value='/member/menu/scrap.do'/>">
		<input type="hidden" name="searchCondition" 
			value="${param.searchCondition }">
		<input type="hidden" name="searchKeyword" 
			value="${param.searchKeyword }">
		<input type="hidden" name="currentPage">
	</form>
<c:import url="mypageSide.jsp"></c:import>
	<div class="col-md-9">
      <fieldset>
      		<br>
      		<table>
      			<colgroup>
      				<col style="width:33%">
      				<col style="width:33%">
      				<col style="width:33%">
      			</colgroup>
      				<tr>
      					<td><h1>2 / 5</h1></td>
      					<td><h1>1</h1></td>
      					<td><h1>${list.size()}</h1></td>
      				</tr>
      				<tr>
      					<td>이력서 갯수</td>
      					<td>입사지원 횟수</td>
      					<td>스크랩</td>
      				</tr>
      		</table>     		
      		<br>
			<br>
			 <div id="mypage">
					<ul class="nav nav-tabs nav-justified">
						<li><a id="step1">최근공고</a></li>
						<li><a id="step2">이력서</a></li>
						<li><a id="step3">뉴스</a></li>
						<li><a id="step4">스크랩한 공고</a></li>
					</ul>
			 </div>
      </fieldset>  
      
      <div class="row notification">
      	  <fieldset>
      	  <br>
      	  <p>
      	  	ㆍ <b>알쓸신JOB</b>에서 최근에 올라온 순서대로 채용공고를 보여주고있습니다.
      	  </p>
      	  <br>
	      <c:forEach var="vo" items="${hnList}">
			<div class="panel panel-default col-md-6 notiItem" style="height:150px">
				<div class="panel-heading notiTitle text-center" style="background-color: #ffff"><a target="_blank" href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>'><img src="<c:url value='/images/cmLogo/${vo.cmLogo}'/>" alt="${vo.cmName}" ></a></div>
				<div class="panel-body">
					<div class="compName"><a target="_blank" href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>'>${vo.cmName}</a></div>
					<div class="notiContent"><a target="_blank" href='<c:url value="/recruit/recruitDetail.do?hnNo=${vo.hnNo}"/>'>${vo.hnNotititle }</a></div>
					<div class="deadLine">
						<c:if test="${vo.dday == 0}">
						<span class="label label-danger">오늘 마감</span>
						</c:if>
						<c:if test="${vo.dday > 0}">
						<span class="label label-warning">D - ${vo.dday}</span>
						</c:if>
					</div>
				</div>
			</div>
		</c:forEach>
		</fieldset>
	</div>
	

	 <div id="scrap">
			 <fieldset>
				<p>ㆍ <b>알쓸신JOB</b>에서 스크랩한 채용공고를 모두 확인할 수 있습니다.<br>
					ㆍ 기업이 공고를 삭제한 경우, 스크랩한 채용공고 페이지에서도 삭제됩니다.</p>
				<br>
				<div class="well well-lg">
					<!-- 페이징 처리에 필요한 form 태그 -->
					<form name="frmPage" method="post" 
						action="<c:url value='/member/menu/scrap.do'/>">
						<input type="hidden" name="searchCondition" 
							value="${param.searchCondition }">
						<input type="hidden" name="searchKeyword" 
							value="${param.searchKeyword }">
						<input type="hidden" name="currentPage">
					</form>
					
					<form name="frmSearch" method="post" action="<c:url value='/member/menu/scrap.do'/>">
						<div class="divSearch">
							<select name="searchCondition">
								<option value="cm_Name"
								<c:if test="${param.searchCondition=='cm_Name'}">
									selected
								</c:if>>회사명</option>
								<option value="hn_NotiTitle"
								<c:if test="${param.searchCondition=='hn_NotiTitle'}">
									selected
								</c:if>>제목</option>
							</select>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" placeholder=" 검색어를 입력하세요" size="73" name="searchKeyword" value="${param.searchKeyword }">
							<button type="submit" class="btn btn-primary btn-sm">검색</button>
						</div>
					</form>	
				</div><br>
					
				<form name="frmList" id="frmList">
					<p>
					전체 ${pagingInfo.totalRecord }건 | <a href="#" id="btDeleteMulti"><span class="glyphicon glyphicon-remove"></span>선택삭제</a> 
					</p> 
						<table class="table table hover">
							<colgroup>
								<col style="width:2%">
								<col style="width:6%">
								<col style="width:12%">
								<col style="width:*">
								<col style="width:13%">
								<col style="width:13%">
								<col style="width:14%">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="chkAll"></th>
									<th>번호</th>
									<th>회사명</th>
									<th>제목</th>
									<th>시작일</th>
									<th>마감일</th>
									<th>지원방법</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty list}">
									<tr>
										<td colspan="7">
										 	스크랩한 공고가 없습니다.
										</td>
									</tr>
								</c:if>
								<c:if test="${!empty list}">
									<c:forEach var="vo" items="${list}" varStatus="status">
										<c:if test="${vo['HN_DEADLINE']} ">
											alert('1');
										</c:if>
										<tr>
											<td>
												<input type="checkbox" 
												name="scrapItems[${status.index}].hnNo"
												value="${vo['HN_NO']}">
											</td>
											<td>${vo['SCRAP_NO']}</td>						
											<td>${vo['CM_NAME']}</td>
											<td><a href="<c:url value="/recruit/recruitDetail.do?hnNo=${vo.HN_NO}"/>">${vo['HN_NOTITITLE']}</a></td>
											<td><fmt:formatDate value="${vo['HN_START']}"
												pattern='yyyy-MM-dd' /></td>
											<td><fmt:formatDate value="${vo['HN_DEADLINE']}"
												pattern='yyyy-MM-dd' /></td>
											<td>${vo['HN_HOWS']}</td>
										</tr>	
										
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</form>
				<!-- 페이지 번호 추가 -->		
				<!-- 이전 블럭으로 이동 ◀ -->
				<div id="divPage">
				<ul class="pagination">
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

			</fieldset>
			
			</div>
			</div>
		</div>
				
	</div>

 <c:import url="../index/footer.jsp" />
</body>
</html>