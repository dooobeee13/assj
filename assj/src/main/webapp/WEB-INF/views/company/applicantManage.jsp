<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원자 관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script type="text/javascript">
	$(function(){
		toastr.options = {
				  "closeButton": false,
				  "debug": false,
				  "newestOnTop": false,
				  "progressBar": false,
				  "positionClass": "toast-top-center",
				  "preventDuplicates": false,
				  "onclick": null,
				  "showDuration": "300",
				  "hideDuration": "1000",
				  "timeOut": "2000",
				  "extendedTimeOut": "1000",
				  "showEasing": "swing",
				  "hideEasing": "linear",
				  "showMethod": "fadeIn",
				  "hideMethod": "fadeOut"
				};
	});
</script>
<style>
	body {
		background: #f2f4f7;
	}
	
	.applicantManage {
		background: #fff;
		min-height: 590px; 
		margin-bottom: 20px
	}
	
	.applicantManage .notiTitle {
		font-size: 1.7em;
		font-weight: bold;
		white-space: nowrap;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    width: 85%;
	    display: inline-block;
	}
	
	.applicantManage .titleLine {
		padding: 10px 10px 20px 10px;
	}
	
	.applicantManage .titleLine .btn {
		background: #fff;
		border: 1px solid black;
	}
	
	.applicantManage .titleLine .dropdown-menu.notis {
		width: 600px;
	}
	
	.applicantManage .titleLine .dropdown-menu.manage {
		min-width: 100px;
	}
	
	.applicantManage .label {
		font-size: 1em;
		position: relative;	
		bottom: 12px;
		margin-right: 5px;
	}

	.applicantManage .table{
		text-align: center;
	}
	
	.applicantManage .table img {
		margin-right: 10px;
	}
	
	.applicantManage .table th {
		text-align: center;
	}
	
	.applicantManage .table .item {
		
	}
	
	.applicantManage .table .item td {
		padding-top: 20px;
		padding-bottom: 20px;
	}
	
	.applicantManage .table .chk, .applicantManage .table .age, .applicantManage .table .gender,
	.applicantManage .table .career, .applicantManage .table .major, .applicantManage .table .condition{
		line-height: 51px;
	}
	
	
	.applicantManage .stats {
		padding: 20px;
	}
	
	.applicantManage .stats .ti:hover{
		background: #d4f3d8;
		cursor: pointer;
	}
	
	.applicantManage .stats .ti:nth-child(-n+5) {
		border-right: 1px solid #b3b3b3;
	}
	
	.applicantManage .stats .ti .header {
		font-weight: bold;
		color: #909090;
	}
	
	.applicantManage .stats .ti p:nth-child(2) {
		font-size: 1.5em;
		font-weight: bold;
	}
	
	.applicantManage .btnLine {
		margin-bottom: 10px;
		padding-left: 20px;
	}
	.applicantManage .notis li {
		padding: 5px 10px;
	}
	
	.applicantManage .notis li .inprogspan {
		color: #4ba4ff;
	}
	.applicantManage .notis li .waitspan {
		color: #f0ad4e;
	}
	.applicantManage .notis li .deadlinespan {
		color: #d9534f;
	}
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


			<div class="col-md-10">
				<div class="applicantManage">
				<div class="row titleLine">
					<div class="col-sm-9">
					
						<c:if test="${vo.deadlineStatus == '진행'}">
							<span class="label label-success">진행중</span> 
						</c:if>
						<c:if test="${vo.deadlineStatus == '대기'}">
							<span class="label label-warning">대기</span> 
						</c:if>
						<c:if test="${vo.deadlineStatus == '마감'}">
							<span class="label label-danger">마감</span> 
						</c:if>
					
						<span class="notiTitle">${vo.hnNotititle}</span>
						<div class="dropdown pull-right" style="display: inline-block;">
					    	<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
					    		<span class="caret"></span>
					    	</button>
					    	<ul class="dropdown-menu dropdown-menu-right notis">
					    		<c:if test="${empty inProgList && empty waitList && empty deadlineList}">
					    			<li><span style="padding: 10px 20px">다른 공고가 없습니다.</span></li>
					    		</c:if>
					    		<c:forEach var="hnVo" items="${inProgList}" varStatus="status">
					    			<c:if test="${status.first}">
					    				<li><span class="inprogspan">진행중 공고</span></li>
					    			</c:if>
					      			<li><a href="<c:url value='/applicantManage.do?hnNo=${hnVo.hnNo}'/>">└ ${hnVo.hnNotititle} (~ <fmt:formatDate value="${hnVo.hnDeadline}" pattern="MM/dd"/>)</a></li>
					    		</c:forEach>
					    		
					    		<c:forEach var="hnVo" items="${waitList}" varStatus="status">
					    			<c:if test="${status.first}">
					    				<li><span class="waitspan">대기중 공고</span></li>
					    			</c:if>
					      			<li><a href="<c:url value='/applicantManage.do?hnNo=${hnVo.hnNo}'/>">└ ${hnVo.hnNotititle} (<fmt:formatDate value="${hnVo.hnStart}" pattern="MM/dd"/> ~ 
					      			<fmt:formatDate value="${hnVo.hnDeadline}" pattern="MM/dd"/>)</a></li>
					    		</c:forEach>
					    		
					    		<c:forEach var="hnVo" items="${deadlineList}" varStatus="status">
					    			<c:if test="${status.first}">
					    				<li><span class="deadlinespan">마감된 공고</span></li>
					    			</c:if>
					      			<li><a href="<c:url value='/applicantManage.do?hnNo=${hnVo.hnNo}'/>">└ ${hnVo.hnNotititle} (<fmt:formatDate value="${hnVo.hnStart}" pattern="MM/dd"/> ~ 
					      			<fmt:formatDate value="${hnVo.hnDeadline}" pattern="MM/dd"/>)</a></li>
					    		</c:forEach>
					    	
					    	</ul>
					    </div>
					</div>
					
					<div class="col-sm-3">
						
					    <div style="padding: 0 20%; display: inline">
					    <a target="_blank" class="btn btn-default" href="/assj/recruit/recruitDetail.do?hnNo=${vo.hnNo}">공고보기</a>
					    <div class="dropdown" style="display: inline-block;">
					    	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">공고관리</button>
					    	<ul class="dropdown-menu dropdown-menu-right manage">
					      		<li><a href="#">공고 수정</a></li>
					      		<li><a href="#">공고 삭제</a></li>
					    	</ul>
					    </div>
					    </div>
					</div>
					<hr>
				</div>
				
				<div class="row text-center stats">
					<div class="col-sm-2 ti">
						<p class="header">전체지원자</p>
						<p id="totalCnt">${stat.totalCnt}</p>
					</div>
					<div class="col-sm-2 ti">
						<p class="header">미열람</p>
						<p id="dontReadCnt">${stat.dontReadCnt}</p>
					</div>
					<div class="col-sm-2 ti">
						<p class="header">검토중</p>
						<p id="underReviewCnt">${stat.underReviewCnt}</p>
					</div>
					<div class="col-sm-2 ti">
						<p class="header">불합격</p>
						<p id="failCnt">${stat.failCnt}</p>
					</div>
					<div class="col-sm-2 ti">
						<p class="header">서류합격</p>
						<p id="passPaperCnt">${stat.passPaperCnt}</p>
					</div>
					<div class="col-sm-2 ti">
						<p class="header">최종합격</p>
						<p>0</p>
					</div>
				</div>
				
				<div class="">
					<div class="btnLine">
						<button class="btn btn-default">지원자목록 엑셀저장</button>
					</div>
					<table class="table table-hover">
						<colgroup>
							<col width="20%">
							<col width="12%">
							<col width="10%">
							<col width="35%">
							<col width="10%">
							<col width="13%">
						</colgroup>
						<tr>
							<th>이름</th>
							<th>성별/나이</th>
							<th>경력</th>
							<th>학력</th>
							<th>상태</th>
							<th></th>
						</tr>
						<c:if test="${empty vo.cEsWithResumeList}">
							<tr><td colspan="7">아직 지원자가 없습니다.</td></tr>
						</c:if>
						<c:forEach var="resume" items="${vo.cEsWithResumeList}">
							<tr class="item" data-esno="${resume.esNo}">
								<td><img src="//www.saraminimage.co.kr/sri/company/talent/bg_photo_nouser.png">${resume.name}</td>
								<td><span class="age">${resume.gender} ${resume.age}세</span></td>
								<td><span class="career">
									<c:if test="${resume.careerNo == 1}">신입</c:if>
									<c:if test="${resume.careerNo == 2}">경력</c:if>
								</span></td>
								<td><div>${resume.schoolName}</div><div>${resume.major} 
									<c:if test="${resume.eduNo == 1}">졸업</c:if>
									<c:if test="${resume.eduNo == 2}">전문학사</c:if>
									<c:if test="${resume.eduNo == 3}">학사</c:if>
									<c:if test="${resume.eduNo == 4}">석사</c:if>
									<c:if test="${resume.eduNo == 5}">박사</c:if>
								</div></td>
								<td><span class="condition">${(empty resume.status) ? '미열람' : resume.status}</span></td>
								<td style="vertical-align: middle">
									<button data-resumeno="${resume.resumeNo}" type="button" class="btn btn-default btn-sm btn-block resumeBtn" style="margin-bottom: 5px">이력서 보기</button>
									<span class="eval">
									<select class="form-control input-sm" onchange="evalResume(${resume.esNo}, this)">
										<option value="0">심사하기</option>
										<option value="1">검토중</option>
										<option value="2">불합격</option>
										<option value="3">서류합격</option>
									</select>
									</span>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				</div>
			</div>
		</div>	
	</div>
	<script>
	
	$(function(){
		$('.resumeBtn').click(function(){
			var resumeNo = $(this).data('resumeno');
			window.open('/assj/resume/resumeView.do?resumeNo='+resumeNo,'new','resizable=no, width=1200, height=800');
		});
	})
	
	function evalResume(esNo, select) {
		var val = $(select).val();
		$.ajax({
			url : '<c:url value="/evalResume.do?hnNo= '+ ${vo.hnNo} +'&esNo='+ esNo +'&status='+ $(select).val() +'" />',
			type : 'post',
			dataType: 'json',
			success : function(res){
				var status = '';
				if (val == 1) {
					status = '검토중';
				} else if (val == 2) {
					status = '불합격';
				} else if (val == 3) {
					status = '서류합격';
				}
				$(select).val(0);
				$('tr[data-esno='+ esNo +'] .condition').text(status);
				$('#totalCnt').text(res.totalCnt);
				$('#dontReadCnt').text(res.dontReadCnt);
				$('#underReviewCnt').text(res.underReviewCnt);
				$('#failCnt').text(res.failCnt);
				$('#passPaperCnt').text(res.passPaperCnt);
				toastr["info"](status + "으로 변경되었습니다.");
			}
		});
	}
	/* $('[data-toggle="popover"]').popover({
		container:'body', 
		html:true, 
		content:'<div><a href="#">공고보기</a></div><div><a href="#">공고수정</a></div><div><a href="#">공고삭제</a></div>',
		placement: 'bottom',
		trigger:'focus'});    */
	</script>
	
</body>
</html>