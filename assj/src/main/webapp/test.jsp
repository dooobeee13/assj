<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		background: #fff;
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
	
	.applManagement .noti .ti {
		font-weight: bold;
	}
</style>
</head>
<body>
	<div class="container-fluid applManagement">
		<div class="row"> 
			<div class="col-md-2">
				<ul class="list-group">
					<li class="list-group-item">전체공고(0)</li>
					<li class="list-group-item">진행중 공고(0)</li>
					<li class="list-group-item">대기중 공고(0)</li>
					<li class="list-group-item">마감된 공고(0)</li>
					<li class="list-group-item">미완성 공고(0)</li>
				</ul>
			</div>


			<div class="col-md-10">
				<h2>전체 공고/지원자 관리</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home">전체 (0건)</a></li>
					<li><a href="#">진행중 (0건)</a></li>
					<li><a href="#">대기 (0건)</a></li>
					<li><a href="#menu2">마감 (0건)</a></li>
					<li><a href="#menu3">미완성 (0건)</a></li>
				</ul>

				<div class="tab-content noti">
					<ul>
						<c:forEach begin="1" end="5">
						
						<li>
							<div class="row">
								<div class="col-md-6">
									<p>각 부분 신입 및 경력 모집</p>
									<span>채용중 2017.02.03 ~ 2017.03.10</span>
								</div>
								<div class="col-md-6 text-center">
									<div class="col-xs-3">
										<p class="ti">전체 지원자</p>
										<p>2,750</p>
									</div>
									<div class="col-xs-3">
										<p class="ti">미열람</p>
										<p>2,750</p>
									</div>
									<div class="col-xs-3">
										<p class="ti">검토중</p>
										<p>0</p>
									</div>
									<div class="col-xs-3">
										<p class="ti">서류합격</p>
										<p>0</p>
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


</body>
</html>