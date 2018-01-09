<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<script type="text/javascript">
$(function(){
	$('.blue').css("color","blue");
	$('.red').css("color","red");
	
	$('#chkAll').click(function(){
		$('tbody input[type=checkbox]').prop('checked', this.checked);
	});
});

function pageFunc(curPage){
	document.frmPage.currentPage.value=curPage;
	frmPage.submit();
}
</script>
<style type="text/css">
	#frame {
	    padding: 30px;
		background-color: #ffff;
	}
	.divSearch{
		text-align:left;
	}
	table th,table{
		text-align:center;
		margin:0 auto;
		border-top:1px bold;
	}
	table th{
		background-color:#f4e453;
	}
	#size{
		font-size:1.3em;
		vertical-align: middle;
	}
    .align_right{
		float:right;
		margin-right:60px;
		vertical-align: bottom;
	} 
	.divPage {
		margin:0 auto;
		text-align: center;
	}
	.align_right{
		margin-right:0;
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
		<c:import url="../../administrator/inc/adminTop.jsp"/>
		
		<!-- 섹션 부분 -->
		<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;">
			<div class="col-div-100-20">
			<!-- 본문 -->
			<!-- 페이징 처리에 필요한 form 태그 -->
				<form name="frmPage" method="post" 
					action="<c:url value='/member/menu/question.do'/>">
					<input type="hidden" name="currentPage">
				</form>
			<!-- 태그 끝 -->
			<div id="frame">
				<h3><b>이메일 문의사항 관리</b></h3>
				<hr>
				<form class="form-inline" name="frmList" id="frmList" method="post">		
						( 전체,<b>${pagingInfo.totalRecord}</b>건 문의사항이 있습니다 )
						<br>
						<div class="align_right">
							<a href="<c:url value='/member/menu/replySearch.do'/>"><input type="button" class="form-control" value="답변확인"></a>
							<input type="button" class="form-control" value="전체메일">
						</div>
						<br><br><br>
				<table class='table table-bordered'>
			<colgroup>
				<col style="width:6%">
				<col style="width:6%">
				<col style="width:8%">
				<col style="width:17%">
				<col style="width:15%">
				<col style="width:*%">
				<col style="width:14%">
			</colgroup>
			<thead>
				<tr>
					<th><input type="checkbox" name="chkAll" id="chkAll"></th>
					<th>번호</th>
					<th>답변여부</th>
					<th>회원ID</th>
					<th>구분</th>
					<th>제목</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>  
				<c:if test="${empty list}"> 
					 <tr>
						<td colspan='7'>문의사항이 없습니다.</td>
					</tr>
				</c:if> 
				<c:if test="${!empty list}">
					<c:forEach var="map" items="${list}" varStatus="status"> 
						<tr>
							<td><input type="checkbox" 
							name="queItems[${status.index}].email"
							value="${map.EMAIL}"></td>
							<td>${map.NO}</td>
							<td>
								<c:if test="${map.REPLY_FLAG=='Y'}">
									<span class="blue">O</span>
								</c:if>
								<c:if test="${map.REPLY_FLAG=='N'}">
									<span class="red">X</span>
								</c:if> 
							</td>
							<td>${map.ID}</td>
							<td>${map.QUESTION_TITLE}</td>
							<td><a href="<c:url value='/member/menu/questionDetail.do?no=${map.NO}'/>">${map.TITLE}</a></td>
							<td>
								<a href="<c:url value='/member/menu/questionReply.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >답변</button></a>&nbsp;
								<a href="<c:url value='/member/menu/questionDelete.do?no=${map.NO}'/>"><button type="button" class="btn btn-default btn-sm" >삭제</button></a><br>
							</td>
						</tr>
						</c:forEach> 
					</c:if>
				</tbody>
		</table>
	</form>			
	
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
		
			  </div>
	  	</div>
	  	</div>
	  	</article>
	  	</div>
	  	
</body>
</html>