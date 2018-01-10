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
	#frame table{
		text-align:center; 
	}
	table th{
		text-align:center; 
		background-color: #6adf6f;
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
<title>Insert title here</title>
</head>
		<c:import url="../../administrator/inc/adminTop.jsp"/>
		
		<!-- 섹션 부분 -->
		<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;">
			<div class="col-div-100-20">
			<!-- 페이징 처리에 필요한 form 태그 -->
			<form name="frmPage" method="post" 
				action="<c:url value='/member/menu/adminQna.do'/>">
				<input type="hidden" name="searchKeyword" 
					value="${param.searchKeyword }">
				<input type="hidden" name="currentPage">
			</form>
		<!-- 본문 -->
		<div id="frame">
				<h3><b>Q&A게시판 관리</b></h3>
				<hr>
				<c:if test="${!empty param.searchKeyword }">
					<!-- 검색의 경우 -->
					<p><span class="glyphicon glyphicon-search"></span> 검색어 : ${searchVO.searchKeyword}, ${pagingInfo.totalRecord }건 
						검색되었습니다.</p>
				</c:if>
				<c:if test="${empty param.searchKeyword }">
					<!-- 전체 조회의 경우 -->
					<p><span class="glyphicon glyphicon-search"></span> 전체 조회 결과, ${pagingInfo.totalRecord }건 조회되었습니다.</p>
				</c:if>
				
				<div class="divSearch">
				<form name="frmSearch" method="post" 
   					action="<c:url value='/member/menu/adminQna.do'/>">
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
				<br><br><br>
				<table class="table table-bordered">
				<colgroup>
					<col width=10%>
					<col width=*%>
					<col width=14%>
					<col width=12%>
					<col width=10%>
					<col width=14%>
				</colgroup>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일시</th>
					<th>조회수</th>
					<th>관리</th>
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
<a href="<c:url value='/member/menu/AdminQnaDetail.do?no=${reboardVO.no}'/>">
								<!-- 제목이 긴 경우 일부만 보여주기 -->
							<c:if test="${fn:length(reboardVO.title)>30 }">
									${fn:substring(reboardVO.title,0,30) }...
								</c:if>
								<c:if test="${fn:length(reboardVO.title)<=30 }">						
									${reboardVO.title}
								</c:if>
							 <!-- 24시간 이내의 글인 경우 -->
							</a>
							<c:if test="${reboardVO.newImgTerm<24 }">
								<img style="text-align:left; display: inline;" src='<c:url value="/images/new.gif" />' 
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
					<td>
						<a href="<c:url value='/member/menu/adminQnaReply.do?no=${reboardVO.no}'/>"><button type="button" class="btn btn-default btn-sm" style="background-color:#e3eceb">답변</button></a>&nbsp;
						<a href="<c:url value='/member/menu/adminQnaDelete.do?no=${reboardVO.no}'/>"><button type="button" class="btn btn-default btn-sm" id="delBtn" style="background-color:#e3eceb">삭제</button></a><br> 
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