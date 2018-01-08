<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<script type="text/javascript">
	
</script>
<style>
	body {
		background: #f2f4f7;
	}
	
	.applManagement {
		margin-top: 20px;
	}
	
	.applManagement ul {
		padding: 0;
	}

	.applManagement ul li{
		list-style: none;
	}
	
	.applManagement .noti ul li {
		border-bottom: 3px solid #e6e6e6;
	}
	
	.applManagement .noti .title, .applManagement .noti .stats {
		padding-top: 20px;
		padding-bottom: 30px;
	}
	
	.applManagement .noti .title {
		padding-left: 30px;
	}
	
	.applManagement .noti .title p {
		font-size: 1.5em;
		font-weight: bold;
		white-space: nowrap; 
		overflow: hidden;
		text-overflow: ellipsis;
	}
	
	.applManagement .noti .title p a {
		color: black;
	}
	
	.applManagement .noti .title .label {
		margin-left: 10px;
	}
	
	.applManagement .noti .title .statistics, .applManagement .noti .title .manage{
		float: right;
		margin-left: 10px;
	}
	
	.applManagement .noti .ti {
		font-weight: bold;
		color: #6f6f6f;
		font-size: .9em;
	}
	
	.applManagement .noti .stats div:nth-child(-n+3) {
		border-right: 1px solid #b3b3b3;
	}
	
	.applManagement .noti .num {
		font-size: 1.5em;
		font-weight: bold;
		color: #717171;
	}
	
	.applManagement .noti .dontRead {
		color: #ff5d5d;
	}
	
	.applManagement .category {
		padding-bottom: 10px;
    	border-bottom: 5px solid #b3b3b3;
	}
	
	.applManagement .category h2 {
		margin-bottom: 20px;
	}
	
	.applManagement a:focus {
		text-decoration: none;
	}
	
</style>
</head>
<body>
	<c:import url="cTop.jsp"/>
	<div class="container-fluid applManagement">
		<div class="row"> 
			<div class="col-md-2">
				<c:import url="cAside.jsp" />
			</div>

			<div class="col-md-10" style="background: #fff; border: 1px solid #ddd; padding-left: 30px; min-height: 610px; margin-bottom: 20px">
				<div class="category">
					<h2>우리기업 채용 공고</h2>
					<ul class="nav nav-pills" style="display: inline-block;">
						<li <c:if test='${empty param.type}'>class="active"</c:if>><a href="<c:url value='/hnmanage.do'/>">전체 (${total}건)</a></li>
						<li <c:if test='${param.type=="inProg"}'>class="active"</c:if>><a href="<c:url value='/hnmanage.do?type=inProg'/>">진행중 (${inProg}건)</a></li>
						<li <c:if test='${param.type=="wait"}'>class="active"</c:if>><a href="<c:url value='/hnmanage.do?type=wait'/>">대기 (${wait}건)</a></li>
						<li <c:if test='${param.type=="deadline"}'>class="active"</c:if>><a href="<c:url value='/hnmanage.do?type=deadline'/>">마감 (${deadline}건)</a></li>
					</ul>
					<a href="/assj/hire_noti/hire1.do" class="btn btn-info" style="position: relative; top: -15px; left: 10px">
						<span class="glyphicon glyphicon-list-alt"></span> &nbsp; 채용공고 등록
					</a>
				</div>  
				
				<div class="tab-content noti">
					<ul>
						<c:forEach var="map" items="${list}">
						<li>
							<div class="row">
								<div class="col-md-6 title">
									<p><a href="<c:url value='/applicantManage.do?hnNo=${map.vo.hnNo}'/>">${map.vo.hnNotititle}</a></p>
									<c:if test="${map.vo.deadlineStatus == '진행'}">
										<span class="label label-success">진행중</span> 
									</c:if>
									<c:if test="${map.vo.deadlineStatus == '대기'}">
										<span class="label label-warning">대기</span> 
									</c:if>
									<c:if test="${map.vo.deadlineStatus == '마감'}">
										<span class="label label-danger">마감</span> 
									</c:if>
									<span>
										<fmt:formatDate value="${map.vo.hnStart}" pattern="yyyy.MM.dd"/> ~
										<fmt:formatDate value="${map.vo.hnDeadline}" pattern="yyyy.MM.dd"/> 
									</span>
									<a href="javascript:void(0);" data-hnno="1" class="manage" data-toggle="popover" >
									공고관리</a>
									<a href="javascript:void(0);" data-hnno="1" class="statistics">지원자 통계</a> 
								</div>
								<div class="col-md-6 text-center stats">
									<div class="col-xs-3">
										<p class="ti">전체 지원자</p>
										<p class="num total">${map.stat.totalCnt}</p>
									</div>
									<div class="col-xs-3">
										<p class="ti">미열람</p>
										<p class="num dontRead">${map.stat.dontReadCnt}</p>
									</div>
									<div class="col-xs-3">
										<p class="ti">검토중</p>
										<p class="num">${map.stat.underReviewCnt}</p>
									</div>
									<div class="col-xs-3">
										<p class="ti">서류합격</p>
										<p class="num">${map.stat.passPaperCnt}</p>
									</div>
								</div>
							</div>
						</li>
						
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>	
	</div>
	<script>
	$('[data-toggle="popover"]').popover({
		container:'body', 
		html:true, 
		content:'<div><a href="#">공고보기</a></div><div><a href="#">공고수정</a></div><div><a href="#">공고삭제</a></div>',
		placement: 'bottom',
		trigger:'focus'});   
	</script>
	
	<c:import url="../index/footer.jsp"/>
	
</body>
</html>