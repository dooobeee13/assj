<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>스크랩한 공고</title>
<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />

<script type="text/javascript">
	$(document).ready(function(){
		$('input[name=chkAll]').click(function(){	
			$('tbody input[type=checkbox]').prop('checked', this.checked);
		});
		
		$('#btDeleteMulti').click(function(event){
			event.preventDefault();
			
			var len =$('tbody input[type=checkbox]:checked').length;
			if(len==0){
				alert('삭제할 게시물을 먼저 체크하세요');
				return;
			}
			
			$('#frmList').prop('action',
			'<c:url value="/member/menu/hnDelMulti.do"/>');
			$('#frmList').submit();	
		});
		
	});

	function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
	    frmPage.submit(); 
	}
	
</script>

<style type="text/css">
	#scrap fieldset{
		width:100%;
		padding:15px;
		background-color:#ffff;
	}
	#scrap {
		/* height:1120px; */
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
	
    /* 사이드바 스타일 */
   #sidebar-wrapper {
    height:750px;
  }  

</style>
</head>
	<body>
	<c:import url="../../index/top.jsp" />
		<div class="container">

		<c:import url="../../mypage/mypageSide.jsp"/>
		<!-- 본문 -->
   			<div class="col-md-9">
			 <div id="scrap">
			 <fieldset>
				<h1>스크랩한 공고</h1>
				<br><br>
				<p>ㆍ 알쓸신JOB에서 스크랩한 채용공고를 모두 확인할 수 있습니다.<br>
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
		
	<c:import url="../../index/footer.jsp" />
	</body>
</html>