<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		padding:40px;
		background-color: #ffff;
		height:820px;
	}
	table{
		text-align:center;
	}
	table th{
		text-align:center;
		background-color:#ece9e9;
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
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기업회원 관리</title>
</head>
		<c:import url="../../administrator/inc/adminTop.jsp"/>
		
		<!-- 섹션 부분 -->
		<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;">
			<div class="col-div-100-20">
			<!-- 페이징 처리에 필요한 form 태그 -->
			<form name="frmPage" method="post" 
				action="<c:url value='/member/menu/cmMemManage.do'/>">
				<input type="hidden" name="searchKeyword" 
					value="${param.searchKeyword }">
				<input type="hidden" name="currentPage">
			</form>
		<!-- 본문 -->
		<div id="frame">
				<h3><b>기업회원 관리</b> <span class="glyphicon glyphicon-user"></span></h3>
				<hr>
				<c:if test="${!empty param.searchKeyword }">
					<!-- 검색의 경우 -->
					<p><span class="glyphicon glyphicon-search"></span> 검색어 : ${searchVO.searchKeyword}, ${pagingInfo.totalRecord }건 
						검색되었습니다.</p>
				</c:if>
				<c:if test="${empty param.searchKeyword }">
					<!-- 전체 조회의 경우 -->
					<p><span class="glyphicon glyphicon-search"></span> 전체 회원, ${pagingInfo.totalRecord }명 조회되었습니다.</p>
				</c:if>
				
				<div class="divSearch">
				<form name="frmSearch" method="post" 
   					action="<c:url value='/member/menu/cmMemManage.do'/>">
					<table id="searchTable">
						<tr>
							<td style=width:80%>
								<input type="text" class="form-control" size="8" maxlength="4" name="searchKeyword" placeholder="회원ID를 입력하세요" value="${param.searchKeyword }">
							</td>
							<td style=width:20%>
								<input type="submit" class="btn btn-primary btn-sm" value="검색" >
							</td>
						</tr>
					</table>
				</form>
				<br><br><br>
				<table class="table table-bordered">
				<colgroup>
					<col width=8%>
					<col width=18%>
					<col width=11%>
					<col width=18%>
					<col width=*%>
					<col width=8%>
				</colgroup>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>대표</th>
					<th>회사이름</th>
					<th>주소</th>
					<th>관리</th>
				</tr>			
					<c:forEach var="map" items="${list }">
					<tr>
					<td>${map.CM_NO}</td>
					<td>${map.CM_ID}</td>
					<td>${map.CM_REPRE}</td>
					<td>${map.CM_NAME }</td>
					<td>
						<c:if test="${empty map.CM_ADDR}">
							<span style="color:gray">( 등록된 주소가 없습니다 )</span>
						</c:if>
						<c:if test="${!empty map.CM_ADDR}">
							${map.CM_ADDR} ${map.CM_DETAILADDR}	
						</c:if>						
					</td>	
					<td>
						<a href="<c:url value='/member/menu/cmMemDelete.do?cmNo=${map.CM_NO}'/>"><button type="button" class="btn btn-default btn-sm" id="delBtn">삭제</button></a><br>
					</td>	
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
		<br>
		
		</div>
		</div>
		
		
			</div>
		</div>
</body>
</html>