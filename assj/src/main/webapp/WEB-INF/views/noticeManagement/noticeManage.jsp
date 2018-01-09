<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1상담문의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
</script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	fieldset {
		/* width: 720px;
		margin: 0 auto; */
		padding: 50px;
		background-color: #ffff;
	}
	#searchTable{
		text-align:center;
		margin:0 auto;
	}
	/* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 940px;
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
	<c:import url="../index/top.jsp" />
	<div class="container">
	<div class="row">
		<!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h2>
							<b>공고 등록하기</b>
						</h2></li>
					<hr>
					<li><h5>
							<b>전체공고(0)</b>
						</h5></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>진행중 공고(0)</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>대기중 공고(0)</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>마감된 공고(0)</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>미완성 공고(0)</a></li>
				</ul>
			</div>
		</div>
		<!-- /사이드바 -->

		<!-- 본문 -->
		<div class="col-md-9">
			<fieldset id="Service">
				<h1>전체 공고/지원자 관리</h1>
				<br>
				<div class="well well-lg">
				<br>img
				<br>img
				<br>img
				<br>img
				</div>
				<ul class="nav nav-tabs nav-justified">
					<li><a href="#" class="step1">진행중 (0건)</a></li>
					<li><a href="#" class="step2">대기 (0건)</a></li>
					<li><a href="#" class="step3">마감 (0건)</a></li>
					<li><a href="#" class="step4">미완성 (0건)</a></li>
					<li><a href="#" class="step5">전체 (0건)</a></li>
				</ul>
				 <!-- 공고 리스트 시작 -->
				<table class="table table-bordered">
					<tr>
						<th>제목1</th>
						<th>제목2</th>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
					</tr>		
				</table>
				 <!-- 공고 리스트 끝 -->
				 
				<div class="form-group">
					<table id="searchTable">
						<tr>
							<td style=width:20%>
							<select class="form-control">
								<option value="공고제목">공고제목</option>
								<option value="담당자명">담당자명</option>
							</select>
							</td>
							<td style=width:70%>
								<input type="text" class="form-control"  size="8" maxlength="4">
							</td>
							<td style=width:10%>
								<input type="button" class="btn btn-primary btn-sm" value="검색">
							</td>
						</tr>
					</table>
				</div>
				<br>
				<div class="well well-lg">
					ㆍ미완성 공고는 등록이 완료되지 않은 상태에서 '중간저장' 된 공고입니다.<br>
					ㆍ미완성 공고는 필수항목을 모두 입력하신 후 등록을 완료하셔야 사이트에 노출됩니다.<br>
					ㆍ미완성 공고는 수정일로부터 60일간 보관되며, 이후 일괄 삭제됩니다.<br>
					 <br>
					※ 알쓸신JOB 채용정보 등록 규정상 부적합한 공고로 판별된 경우, 별도 통보 없이 공고가 마감/삭제 처리될 수 있습니다.			
				</div>
			</fieldset>
			</div>
			</div>
		</div>
		<c:import url="../index/footer.jsp" />
</body>
</html>