<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>이력서 등록</title>
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<link href="${pageContext.request.contextPath}/css/resume.css" rel="stylesheet">
<script src="<c:url value='/js/resume.js'/>"></script>

<style type="text/css">
body {
	padding-top: 60px;
}
.my-auto{margin:100px 0px;}
/* #sideBar .nav-sidebar .img-profile{
	max-width: 150px;
	max-height: 150px;
	border: .5rem solid rgba(255, 255, 255, .2)
}  */
</style>
<script type="text/javascript">

function OntextCheck(obj)
{
    var str = new String(obj.value);
       var _byte = 0;
               if(str.length != 0)
               {
                      for (var i=0; i < str.length; i++) 
                      {
                              var str2 = str.charAt(i);
                              if(escape(str2).length > 4)
                              {
                                     _byte += 3;
                              }
                              else 
                              {
                                     _byte++;
                              }
                      }
               }
       document.getElementById("txtbyte").value = _byte;
}
</script>
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
		id="topNav">
		<!-- Brand and toggle get grouped for better mobile display -->

		<div class="container">
			<!-- 모바일 화면에서 사이트 로고가 들어가는 부분과 모바일 상태에서 아이콘 처리하는 부분 -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">ASSJ</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<!-- <a class="navbar-brand" href="#">로고 </a> -->
			</div>

			<!-- 데스크탑에서 메뉴가 나오는 부분-->
			<div class="collapse navbar-collapse navbar-ex1-collapse"
				id="topDropMenu">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="nav-link"
						class="dropdown-toggle" data-toggle="dropdown" href="#">이력서 관리</a>
						<ul class="dropdown-menu">
							<li><a href="#">이력서 등록</a></li>
							<li><a href="#">이력서 현황</a></li>
							<li><a href="#">자소서 관리</a></li>
							<li><a href="#">내 이력서 열람기업</a></li>
							<li><a href="#">내 이력서 열람제한 설정</a></li>
						</ul></li>
					<li class="dropdown"><a class="nav-link"
						class="dropdown-toggle" data-toggle="dropdown" href="#">입사지원
							관리</a>
						<ul class="dropdown-menu">
							<li><a href="#">입사지원 현황</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#">아바타서치</a></li>
					<li class="nav-item"><a class="nav-link" href="#">맞춤채용 정보</a>
					</li>
					<li class="dropdown"><a class="nav-link"
						class="dropdown-toggle" data-toggle="dropdown" href="#">스크랩/최근
							본 공고</a>
						<ul class="dropdown-menu">
							<li><a href="#">스크랩한 공고</a></li>
							<li><a href="#">최근 본 공고</a></li>
							<li><a href="#">관심기업정보</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->


		</div>
	</nav>


	<div class="container-fluid" id="main">

		<div class="row">
			<form name="resumeForm" id="resumeForm" action="">
			<input type="hidden" name="resumeBirth" id="resumeBirth">
			<input type="hidden" name="resumePhone" id="resumePhone">			
			
			<div class="col-sm-3 col-md-2 sidebar" id="sideBar">
					<script type="text/javascript">
					$(function(){
						
					
						 $('#imgTest').click(function(){
							 
							var result = confirm("이력서 사진 등록 전에, 사진을 알맞게 편집하시겠습니까?");
							
							if(result){
								window.open("https://fengyuanchen.github.io/photo-editor",
										'imgForm',
										'left=500,top=0,width=550,height=700,locations=yes,resizable=yes');										
							}else{
								$('#file1').click();
							}
							 
						}); 
						
						$('#file1').on("change",function(){
							readURL(this);
						});
						  function readURL(input) {
					            if (input.files && input.files[0]) {
					            var reader = new FileReader();

					            reader.onload = function (e) {
					                    $('#imgTest').attr('src', e.target.result);
					                }

					              reader.readAsDataURL(input.files[0]);
					            }
					        }
						  
						  
					});
					</script>
					
					<ul class="nav nav-sidebar">
						<li>
							<input type="file" name="file1" id="file1" style="display: none;">
							<%-- <a href="#">
								<img class="img-profile img-circle" id="profileImg" src="${pageContext.request.contextPath }/images/img_photo_null.gif" />
							</a> --%>
							
							<a href="#">
								<img class="img-profile img-circle" id="imgTest" src="${pageContext.request.contextPath }/images/img_photo_null.gif" />
							</a>
							
							
						</li>
						
						<li class="nav-item"><a class="nav-link" href="#basic">기본 정보</a></li>
						<li class="nav-item"><a class="nav-link" href="#basic2">기본 정보</a></li>
						<li class="nav-item"><a class="nav-link" href="#mil">병역 사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#sh1">학력 사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#sh2">학력 사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#eh">교육 사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#cre">경력 사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#addSelect">선택 사항</a></li>
						<li class="nav-item"><a class="nav-link" href="#pt">포트폴리오</a></li>
						<li class="nav-item"><a class="nav-link" href="#hope">희망 근무조건</a></li>
						<li class="nav-item"><a class="nav-link" href="#">
						<input type="image" id="imgSubmit" width="100%" height="100%" src="<c:url value='/images/button/write_complete.png'/>">
						</a></li>						
					</ul>
				
			</div>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

				<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="basic">
					<div class="my-auto">
						<h4 class="mb-5">
							기본 정보<span class="res-star">*</span>
						</h4>
						<div class="form-group">
							<label for="insertLb">제목<span class="res-star">*</span></label> 
							<input type="text" class="form-control" maxlength="100" name="resumeTitle" id="resumeTitle" placeholder="이력서 제목을 입력하세요.(100자까지 입력가능)"> 
							
							<br> 
							<label for="insertLb">이름<span class="res-star">*</span></label> 
							<input type="text" class="form-control" name="resumeName" id="resumeName" placeholder="이름"> 
							<br>
							<label for="insertLb">생년월일<span class="res-star">*</span></label>
							<br>
							 <label class="form-inline"> 
							 <select name="birth_year" id="birth_year"  class="form-control" style="width: 100px">
									<c:forEach var="i" begin="0" end="${2016-1900}">
										<c:set var="resultYear" value="${2016-i }" />
										<option value="${resultYear }">${resultYear }</option>
									</c:forEach>
							</select> 년&nbsp;&nbsp; 
							<select name="birth_month" id="birth_month" class="form-control" style="width: 80px">
									<c:forEach var="i" begin="1" end="${12}">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select> 월&nbsp;&nbsp; 
							<select name="birth_day" id="birth_day" class="form-control" style="width: 80px">
									<c:forEach var="i" begin="1" end="${31}">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select> 일
							</label> 
							<br>
							<label for="insertLb">주소<span class="res-star">*</span></label>
							<input type="text" name="resumeAddr" id="resumeAddr" class="form-control" placeholder="주소">
							<input type="text" name="resumeDetailaddr" id="resumeDetailaddr" class="form-control" placeholder="상세주소">
							<br> 
							<label for="insertLb">휴대폰<span class="res-star">*</span></label>
							<br> 
							<label class="form-inline"> 
								<select id="hp1" name="hp1" class="form-control" style="width: 80px">
									 <option value="010">010</option>
						            <option value="011">011</option>
						            <option value="016">016</option>
						            <option value="017">017</option>
						            <option value="018">018</option>
						            <option value="019">019</option>
								</select>
								-
							<input type="text" name="hp2" id="hp2"  class="form-control" style="width: 80px">
							-
							<input type="text" name="hp3" id="hp3"  class="form-control" style="width: 80px">
							</label> 
							<br> 
							<label for="insertLb">이메일<span	class="res-star">*</span></label> 
							<input type="text" name="resumeEmail" id="resumeEmail" class="form-control"> 
							<br> 
							<label for="insertLb">성별<span class="res-star">*</span></label> 
							<br> 
							<label> 
							<input type="radio" name="resumeGender" id="resumeGender" value="Male" checked> 남성 
							</label>
							<label> 
							<input type="radio" name="resumeGender" id="resumeGender" value="Female"> 여성
							</label> 
							<br> 
							<label for="insertLb">구직상태
							<span class="res-star">*</span></label> 
							<select name="resumeStatus" id="resumeStatus" class="form-control">
								<option value="구직준비중(재학생)">구직준비중(재학생)</option>
								<option value="구직중">구직중</option>
								<option value="재학중">재학중</option>
							</select>
						</div>
					</div>
				</section>

				<section class="resume-section p-3 p-lg-5 d-flex flex-column"
					id="basic2">
					<div class="my-auto">
						<h4 class="mb-5">기본 정보</h4>
						<label for="insertLb">취미</label>
						<div class="form-group">
							<input type="text" name="resumeHobby" id="resumeHobby" class="form-control" placeholder="취미">
							<br>
							<label for="insertLb">특기</label> 
							<input type="text" name="resumeSpecialty" id="resumeSpecialty" class="form-control" placeholder="특기"> 
							<br> 
							<label for="insertLb">결혼 여부</label> 
							<br> 
							<label class="radio-inline"> 
								<input type="radio" name="resumeMarried"  value="미혼" checked>미혼
							</label> 
							<label class="radio-inline"> 
								<input type="radio" name="resumeMarried"  value="기혼">기혼
							</label>
							<label class="radio-inline"> 
								<input type="radio" name="resumeMarried"  value="비공개">비공개
							</label> 
							<br> <br>
							<label for="insertLb">보훈대상</label> 
							<br> 
							<select name="resumeVeteran" id="resumeVeteran" class="form-control">
								<option value="비대상">비대상</option>
								<option value="대상">대상</option>
							</select> 
							<br> 
							<label for="insertLb">고용 지원금 대상</label> 
							<br> 
							<label class="radio-inline"> 
							<input type="radio" name="resumeSubsidy" value="비대상" checked>비대상
							</label> 
							<label class="radio-inline"> 
							<input type="radio" name="resumeSubsidy" value="대상">대상
							</label>
						</div>
					</div>

				</section>

				<section class="resume-section p-3 p-lg-5 d-flex flex-column"
					id="mil">
					<div class="my-auto">
						<h4 class="mb-5">병역 사항</h4>

						<label for="insertLb">병역대상</label> 
						<select name="resumeMilTarget" id="resumeMilTarget" class="form-control">
							<option value="대상아님" selected>대상아님</option>
							<option value="군필">군필</option>
							<option value="미필">미필</option>
							<option value="면제">면제</option>
							<option value="복무중">복무중</option>
						</select> 
						<br>
						<div id="milOptionDiv" >
						<div id="milOption1">
						<label for="insertLb">복무 기간</label> 
						<br>
						<label class="form-inline"> 
							<select name="mil_start_year" id="mil_start_year"   class="form-control" style="width: 100px">
									<option value=""></option>
									<c:forEach var="i" begin="0" end="${2016-1930}">
										<c:set var="resultYear" value="${2016-i }" />
										<option value="${resultYear }">${resultYear }</option>
									</c:forEach>
							</select> 년&nbsp;&nbsp; 
							<select name="mil_start_month" id="mil_start_month" class="form-control" style="width: 80px">
							<option value=""></option>
									<c:forEach var="i" begin="1" end="${12}">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select> 월
							
							~ 
							<select name="mil_end_year" id="mil_end_year"  class="form-control" style="width: 100px">
								<option value=""></option>									
							</select> 년&nbsp;&nbsp; 
							<select name="mil_end_month" id="mil_end_month" class="form-control" style="width: 80px">
							<option value=""></option>
									<c:forEach var="i" begin="1" end="${12}">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select> 월
						</label>
						
						<br>
						<label for="insertLb">군별 선택</label> 
						<c:set var="divisionArr">육군,해군,공군,해병,의경,전경,공익,기타</c:set>
						<select name="resumeMilDivision" id="resumeMilDivision" class="form-control">
						<option value=""></option>
							<c:forEach var="division" items="${divisionArr}">
								<option value="${division }">${division }</option>
							</c:forEach>
						</select> 
						<br>
						<label for="insertLb">계급 선택</label> 
						<c:set var="classArr">이병,일병,상병,병장,하사,중사,상사,원사,준위,소위,중위,대위,소령,중령,대령,준장,소장,중장,대장,기타</c:set>
						<select name="resumeMilClass" id="resumeMilClass" class="form-control">
							<option value=""></option>
							<c:forEach var="mil_class" items="${classArr}">
								<option value="${mil_class}">${mil_class}</option>
							</c:forEach>
						</select> 
						<br>
						<label for="insertLb">전역 사유 </label> 
						<c:set var="reasonArr">만기제대,의가사제대,의병제대,소집해제,불명예제대,상이제대,기타</c:set>
						<select name="resumeMilReason" id="resumeMilReason" class="form-control">
							<option value=""></option>
							<c:forEach var="mil_reason" items="${reasonArr}">
								<option value="${mil_reason}">${mil_reason}</option>
							</c:forEach>
						</select> 
						</div>
						<br> 
						<div id="unFnsDiv">
						<label for="insertLb">미필/면제 사유</label> 
						<input type="text" name="resumeMilUnfinish" id="resumeMilUnfinish" class="form-control" >
						</div>
</div>
					</div>
				</section>

				<section class="resume-section p-3 p-lg-5 d-flex flex-column"
					id="sh1">
					<div class="my-auto">
						<h4 class="mb-5">학력 사항<span class="res-star">*</span></h4>

						<label for="insertLb">재학 기간<span class="res-star">*</span></label>
						<br>
						<label class="form-inline"> 
							<select name="sh_start_year" id="sh_start_year"   class="form-control" style="width: 100px">
									<option value=""></option>
									<c:forEach var="i" begin="0" end="${2016-1930}">
										<c:set var="resultYear" value="${2016-i }" />
										<option value="${resultYear }">${resultYear }</option>
									</c:forEach>
							</select> 
							.
							<select name="sh_start_month" id="sh_start_month" class="form-control" style="width: 80px">
							<option value=""></option>
									<c:forEach var="i" begin="1" end="${12}">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select> 
							
							~ 
							<select name="sh_end_year" id="sh_end_year"  class="form-control" style="width: 100px">
								<option value=""></option>									
							</select> 
							.
							<select name="sh_end_month" id="sh_end_month" class="form-control" style="width: 80px">
							<option value=""></option>
									<c:forEach var="i" begin="1" end="${12}">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select> 
						</label> 
						<br>
						<label class="form-inline"> 
						<select name="shAwhether" id="shAwhether" class="form-control">
								<option value=""></option>
								<option value="입학" selected>입학</option>
								<option value="편입">편입</option>
						</select>
						</label> <span>&nbsp;&nbsp;</span> 
						<label class="form-inline"> 
						<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set> 
						<select name="shGwhether" id="shGwhether" class="form-control">
								
								<c:forEach var="gw" items="${gwArr }">
									<option class="shgwOp" value="${gw }">${gw}</option>
								</c:forEach>
								<option value="검정고시 합격" class="shGedOp" disabled="disabled">검정고시 합격</option>
						</select>
						</label> 
						<br><br><br>
						<label for="insertLb">학교명<span class="res-star">*</span></label>
						<input type="text" class="form-control" name="shSname" id="shSname" placeholder="고등학교 입력"> 
						<br> 
						<label class="form-inline"> 
						<input type="checkbox" class="form-control" name="chkSname" id="chkSname" value="검정고시">대입 검정고시(고졸)
						</label> 
						<br> <br><br>
						<label for="insertLb">전공<span class="res-star">*</span></label>
						<select name="shMajor" id="shMajor" class="form-control">
						<option value=""></option>
							<option value="문과계열">문과계열</option>
							<option value="이과계열">이과계열</option>
							<option value="전문(실업)계">전문(실업)계</option>
							<option value="예체능계">예체능계</option>
						</select>

					</div>
				</section>

				<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="sh2">
					<div class="my-auto">
					
					<h4 class="mb-5">학력 사항</h4>
					
						<div class="col-sm-3 col-md-3 shDiv">
							<label for="insertLb">재학 기간<span class="res-star">*</span></label>
						<br>
							
							<label class="form-inline"> 
							<input type="text" class="form-control" name="" id="" style="width: 50px">.
							<input type="text" class="form-control" name="" id="" style="width: 50px">~ 
							<input type="text" class="form-control" name="" id="" style="width: 50px">.
							<input type="text" class="form-control" name="" id="" style="width: 50px">
							</label> 
							<br>
							<label class="form-inline"> 
							<select name="shAwhether" id="shAwhether" class="form-control">
									<option value="입학">입학</option>
									<option value="편입">편입</option>
							</select>
							 <span>&nbsp;&nbsp;</span> 							
							<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set> 
							<select name="shGwhether" id="shGwhether" class="form-control">
									<c:forEach var="gw" items="${gwArr }">
										<option value="${gw }">${gw}</option>
									</c:forEach>
							</select>
							</label> 
						</div>
						
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">학교명<span class="res-star">*</span></label>
							<input type="text" class="form-control" name="shName" id="shName" placeholder="대학교 입력"> 
							<select name="eduNo" id="eduNo" class="form-control">
							<!-- 학력 테이블 참조해서 반복문 -->
								<option value="대학(2,3)년">입학</option>
								<option value="대학교(4년)">대학교(4년)</option>
								<option value="대학원(석사)">대학원(석사)</option>
								<option value="대학원(박사)">대학원(박사)</option>
							</select> 
							<br> 
							
							
						</div>
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">전공<span class="res-star">*</span></label>
					<!-- 	지역 테이블 참조해서 반복문 -->
						<c:set var="areaArr">서울,경기,인천,부산,대구,대전,세종,광주,울산,강원,경남,경북,전남,전북,충남,충북,제주</c:set>
							<select name="shMajor" id="shMajor" class="form-control">
								<c:forEach var="area_item" items="${areaArr }">
									<option value="" ${area_item }>${area_item }</option>
								</c:forEach>
							</select>
							
							 <br>
							  
							 <!--  전공 테이블 참조해서 반복문  -->
							 <!-- select 2개로 큰전공 카테고리, 작은전공 카테고리 사용
							 작은 카테고리 안에 세부전공이 없다면 입력할 수 잇는 text박스 제공
							  -->
							<c:set var="majorArr">기계공학,전기전자,건축토목,재료금속,산업공학,법학사회,어문학,화학공학,생명공학,디자인,컴퓨터 IT,전공무관</c:set>
							<select name="shMajordetail1" id="shMajordetail1" class="form-control">
								<c:forEach var="majorItem" items="${majorArr}">
									<option value="${majorItem}">${majorItem }</option>
								</c:forEach>
							</select> 
							
							<br>
							
							 <input type="text" class="form-control" name="shMajordetail2" id="shMajordetail2" placeholder="전공학과 입력"> 
						</div>
						
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">학점</label>
						<label class="form-inline">
							 <input type="text" class="form-control" name="shGrade" id="shGrade" > 
						</label>
						<br><br><br>
						<label for="insertLb">최종 학력 선택<span class="res-star">*</span></label>
							<label>
							<input type="radio" name="shNo" checked >							
							</label>
							<br><br>
							<img alt="학력 삭제" name="delSHImg"  src="${pageContext.request.contextPath}/images/button/btn_layer_del.gif">
						</div>
						
						</div>
						
						<div style="clear: both" class="clearDiv"></div>
						<div style="clear: both; display: none;" id="clearBasicDiv"></div>
						
						<div id="addSHDiv">
							<label>
								<img alt="학력추가" id="addSH" src="images/button/btn_add.gif" style="text-align: right;">
							</label>
						</div>						
						
						
							
						

		<div id="shBasicDiv" style="display: none;">
					
					<h4 class="mb-5">학력 사항</h4>
					
						<div class="col-sm-3 col-md-3 shDiv">
							<label for="insertLb">재학 기간<span class="res-star">*</span></label>
						<br>
							
							<label class="form-inline"> 
							<input type="text" class="form-control" name="" id="" style="width: 50px">.
							<input type="text" class="form-control" name="" id="" style="width: 50px">~ 
							<input type="text" class="form-control" name="" id="" style="width: 50px">.
							<input type="text" class="form-control" name="" id="" style="width: 50px">
							</label> 
							<br>
							
							<label class="form-inline"> 
								<select name="shAwhether" id="shAwhether" class="form-control">
										<option value="입학">입학</option>
										<option value="편입">편입</option>
								</select>
							&nbsp;&nbsp;
							
							<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set> 
							<select name="shGwhether" id="shGwhether" class="form-control">
									<c:forEach var="gw" items="${gwArr }">
										<option value="${gw }">${gw}</option>
									</c:forEach>
							</select>
							</label> 
						</div>
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">학교명<span class="res-star">*</span></label>
							<input type="text" class="form-control" name="shName" id="shName" placeholder="대학교 입력"> 
							<select name="eduNo" id="eduNo" class="form-control">
								<option value="대학(2,3)년">입학</option>
								<option value="대학교(4년)">대학교(4년)</option>
								<option value="대학원(석사)">대학원(석사)</option>
								<option value="대학원(박사)">대학원(박사)</option>
							</select> 
							<br>
						</div>
						
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">전공<span class="res-star">*</span></label>
					<!-- 	지역 테이블 참조해서 반복문 -->
						<c:set var="areaArr">서울,경기,인천,부산,대구,대전,세종,광주,울산,강원,경남,경북,전남,전북,충남,충북,제주</c:set>
							<select name="shMajor" id="shMajor" class="form-control">
								<c:forEach var="area_item" items="${areaArr }">
									<option value="" ${area_item }>${area_item }</option>
								</c:forEach>
							</select>
							
							 <br>
							  
							 <!--  전공 테이블 참조해서 반복문  -->
							 <!-- select 2개로 큰전공 카테고리, 작은전공 카테고리 사용
							 작은 카테고리 안에 세부전공이 없다면 입력할 수 잇는 text박스 제공
							  -->
							<c:set var="majorArr">기계공학,전기전자,건축토목,재료금속,산업공학,법학사회,어문학,화학공학,생명공학,디자인,컴퓨터 IT,전공무관</c:set>
							<select name="shMajordetail1" id="shMajordetail1" class="form-control">
								<c:forEach var="majorItem" items="${majorArr}">
									<option value="${majorItem}">${majorItem }</option>
								</c:forEach>
							</select> 
							
							<br>
							
							 <input type="text" class="form-control" name="shMajordetail2" id="shMajordetail2" placeholder="전공학과 입력"> 
						</div>
						
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">학점</label>
						<label class="form-inline">
							 <input type="text" class="form-control" name="shHrade" id="shGrade" > 
						</label>
						<br><br><br>
						<label for="insertLb">최종 학력 선택<span class="res-star">*</span>
							
							<input type="radio" name="shNo">								
							</label>
							<br><br>
							<img alt="학력 삭제" name="delSHImg" src="${pageContext.request.contextPath}/images/button/btn_layer_del.gif">
						</div>
						
						</div>

					
				</section>				
				

				<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="eh">
					<div class="my-auto">
						<h4 class="mb-5">교육 사항</h4>
						<div id="ehAddDiv">
						<div class='addBtnDiv' style='text-align: left; margin-bottom: 5px;'>
							<img alt='추가버튼' name='addEhImg' id="addEhImg"
							src='${pageContext.request.contextPath}/images/button/btn_add.gif' />
						</div>
						
						</div>
						
						<div id="ehBasicDiv" style="display: none;">						
						
						<div class="col-sm-3 col-md-3 ehDiv">
						<label for="insertLb">교육명<span class="res-star">*</span></label>
							<input type="text" class="form-control" name="ehCsname" id="ehCsname" placeholder="교육 명"> 							
							<br>
						</div>
						
						<div class="col-sm-3 col-md-3 ehDiv">
						<label for="insertLb">교육 기관<span class="res-star">*</span></label>
							<input type="text" class="form-control" name="ehInstitution" id="ehInstitution" placeholder="교육기관 명">
						</div>	
						
						<div class="col-sm-3 col-md-3 ehDiv">
							<label for="insertLb">교육 기간<span class="res-star">*</span></label>	
							<label class="form-inline"> 
							<!-- 수료시작일 수료종료일 -->
							<input type="text" class="form-control" name="" id="" style="width: 50px">.
							<input type="text" class="form-control" name="" id="" style="width: 50px">~ 
							<input type="text" class="form-control" name="" id="" style="width: 50px">.
							<input type="text" class="form-control" name="" id="" style="width: 50px">
							</label> 												
						</div>
						
						<div class="col-sm-3 col-md-3 ehDiv">
						<label for="insertLb">수료 여부<span class="res-star">*</span></label>
						<br>							
							<label class="form-inline"> 
							<select name="ehConfirm" id="ehConfirm" class="form-control">
									<option value="수료">수료</option>
									<option value="수료예정">수료예정</option>
									<option value="중퇴">중퇴</option>
									<option value="자퇴">중퇴</option>									
							</select>
							</label>
							<br>
							<div class='delBtnDiv' style='text-align: right; margin-bottom: 5px;'>
							<img alt='교육사항 삭제' name='delEhImg'
							src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif' />
						</div>
						</div>					
						
						</div>
					</div>
				</section>
				


				<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cre">
					<div class="my-auto">
						<h4 class="mb-5">경력 사항</h4>
						<label> 
						<input type="radio" name="optionsRadios1" id="rdNewcomer" value="신입" checked> 신입
						</label>
						<label> 
						<input type="radio" name="optionsRadios1" id="rdCareer" value="경력">경력 
						</label>
						<label>
						<input type="radio" name="optionsRadios1" id="rdExec" value="임원/CEO"> 임원/CEO
						</label>
						<div id="careerDiv">
							<textarea rows="20" class="form-control" id="detailCareer"></textarea>
						</div>
						<label id="lbChk">
						<input type="checkbox" name="chkDetailTip" id="chkDetailTip">경력 기술서 쓰는 요령</label>
						<div id="detailCarTip">
							<p>
								<b>[경력기술서]를 잘 써야 '이직'이 쉬워집니다.</b><br />인사담당자에게 실무에 바로 투입해도
								문제없다는 인상을 주어야 합니다.<br /> 관련없는 경력은 과감히 삭제하시고,<br /> 지원분야와 관련된
								경력/프로젝트에 집중하세요.<br /> <br /> 예) 2015년 2월 ~ 2016년 9월<br />
								&nbsp;&nbsp;&nbsp;&nbsp;앙크루띠(구인구직사이트) E-biz기획실 실장 <br />&nbsp;&nbsp;&nbsp;&nbsp;-
								취업사이트 앙크루띠 입사지원시스템 개편기획 (지원률 15%향상) <br />&nbsp;&nbsp;&nbsp;&nbsp;-
								검색엔진 도입 프로젝트, 로그분석 프로젝트 총괄책임 (성공적 완료) <br />&nbsp;&nbsp;&nbsp;&nbsp;-
								구직사이트 앙크루띠 포토이력서 도입 (사진첨부 일 3만회 돌파)<br /> <br />
								&nbsp;&nbsp;&nbsp; 2017년 1월 ~ 2050년 2월<br />
								&nbsp;&nbsp;&nbsp;&nbsp;온라인 채용대행사이트 알쓸신잡 서비스기획팀 팀장 <br />&nbsp;&nbsp;&nbsp;&nbsp;-
								ASP개념의 채용대행 프로세스 10개 그룹 수주 <br />&nbsp;&nbsp;&nbsp;&nbsp;- 기본형,
								심플형, 파워형 등용문 버전별 리스트 기획 <br />&nbsp;&nbsp;&nbsp;&nbsp;- 채용대행사이트
								분야 랭키닷컴 순위 1위 (2030.12~현재까지)<br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&lt;업무지식
								및 교육&gt; <br />&nbsp;&nbsp;&nbsp;&nbsp;- 2008 웹컨퍼런스 세미나 사회/진행 <br />&nbsp;&nbsp;&nbsp;&nbsp;-
								2028 허넷 온라인 MBA과정 수료
							</p>
						</div>

					</div>
			
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column"
				id="addSelect">
				<div class="my-auto">
					<h4 class="mb-5">선택 사항 추가</h4>

					<div id="checkDiv">
						<label class=checkbox-inline> <input type="checkbox"
							id="chkAct" value="">대외활동&nbsp;&nbsp;&nbsp;
						</label> <label class=checkbox-inline> <input type="checkbox"
							id="chkCer" value="">자격증/어학/수상 내용&nbsp;&nbsp;&nbsp;
						</label> <label class=checkbox-inline> <input type="checkbox"
							id="chkSkill" value="">보유 기술 및 능력
						</label>
					</div>




					<div id="addActDiv"></div>

					<div id="addCerDiv" style="margin-top: 100px"></div>

					<div id="addSkillDiv" style="margin-top: 100px"></div>
					<!-- style="display:none;" -->

					<div id="actDiv" style="display: none;">
						<div class="form-group">
							<table id="" class="table" cellspacing="0" summary="자격증/어학/수상"
								width="100%">
								<thead>
									<tr>
										<th width="15%">항목선택</th>
										<th width="35%">자격증/어학/수상</th>
										<th width="15%">발행처/기관</th>
										<th width="15%">합격구분</th>
										<th width="20%">취득일/수상일</th>
									</tr>
								</thead>
								<tbody>
									<tr class="contents">
										<td><select name='cer_category' class='form-control'>
												<option value="license" label="자격증/면허증" selected>자격증/면허증</option>
												<option value="language_exam" label="어학시험">어학시험</option>
												<option value="certification" label="수상내역/공모전">수상내역/공모전</option>
										</select></td>
										<td><input type="text" name="cer_name" id="cer_name"
											placeholder="1개의 입력란에 하나의 자격증만 입력하세요." class="form-control">
										</td>
										<td><input type="text" name="cer_publisher"
											id="cer_publisher" placeholder="ex) 한국산업인력공단"
											class="form-control"></td>
										<td><select name='cer_accept_score' class='form-control'>
												<option value="1차합격" label="1차합격">1차합격</option>
												<option value="2차합격" label="2차합격">2차합격</option>
												<option value="필기합격" label="필기합격">필기합격</option>
												<option value="실기합격" label="실기합격">실기합격</option>
												<option value="최종합격" label="최종합격">최종합격</option>
										</select></td>
										<td><label class='form-inline'> <select name=""
												id="" class="form-control" style="width: 90px">
													<c:forEach var="i" begin="0" end="${2016-1900}">
														<c:set var="resultYear" value="${2016-i }" />
														<option value="${resultYear }">${resultYear }</option>
													</c:forEach>
											</select> &nbsp;.&nbsp; <select name="" id="" class="form-control"
												style="width: 60px">
													<c:forEach var="i" begin="1" end="${12}">
														<option value="${i}">${i}</option>
													</c:forEach>
											</select>
										</label></td>
									</tr>

								</tbody>
							</table>
							<div class='delBtnDiv'
								style='text-align: right; margin-bottom: 5px;'>
								<img alt='삭제버튼' name='delCerImg'
									src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif' />
							</div>
						</div>
					</div>
					<div id="cerDiv" style="display: none;">
						<div class="form-group">
							<table id="" class="table" cellspacing="0" summary="자격증/어학/수상"
								width="100%">
								<thead>
									<tr>
										<th width="15%">항목선택</th>
										<th width="35%">자격증/어학/수상</th>
										<th width="15%">언어</th>
										<th width="15%">시험점수(등급)</th>
										<th width="20%">취득일/수상일</th>
									</tr>
								</thead>

								<tbody>
									<tr class="cerContent">
										<td><select name='cer_category' class='form-control'>
												<option value="license" label="자격증/면허증">자격증/면허증</option>
												<option value="language_exam" label="어학시험" selected>어학시험</option>
												<option value="certification" label="수상내역/공모전">수상내역/공모전</option>
										</select></td>
										<td>
											<input type="text" name="cer_publisher" id="cer_publisher" 
											placeholder="ex) 한국산업인력공단" class="form-control">								
										</td>
										<td>
										<select name="" id="" class="form-control">
												<option value="1" label="영어">영어</option>
												<option value="2" label="일본어">일본어</option>
												<option value="3" label="중국어">중국어</option>
												<option value="4" label="독일어">독일어</option>
												<option value="5" label="불어">불어</option>
												<option value="6" label="스페인어">스페인어</option>
												<option value="7" label="러시아어">러시아어</option>
												<option value="8" label="이탈리아어">이탈리아어</option>
												<option value="45" label="한국어">한국어</option>
												<option value="99" label="기타">기타</option>
										</select>
										</td>
										<td><label class='form-inline'> 
										<input type='text' style='width: 80px' class='form-inline'>&nbsp;점(등급)
										</label></td>
										<td><label class='form-inline'> <select id=""
												class="form-control" style="width: 90px">
													<c:forEach var="i" begin="0" end="${2016-1900}">
														<c:set var="resultYear" value="${2016-i }" />
														<option value="${resultYear }">${resultYear }</option>
													</c:forEach>
											</select> &nbsp;.&nbsp; <select id="" class="form-control"
												style="width: 60px">
													<c:forEach var="i" begin="1" end="${12}">
														<option value="${i}">${i}</option>
													</c:forEach>
											</select>
										</label></td>
									</tr>

								</tbody>
							</table>
							<div class='delBtnDiv'
								style='text-align: right; margin-bottom: 5px;'>
								<img alt='삭제버튼' name='delCerImg'
									src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif' />
							</div>
						</div>
					</div>

					<div id="awardsDiv" style="display: none;">
						<div class="form-group">
							<table id="" class="table" cellspacing="0" summary="자격증/어학/수상"
								width="100%">
								<thead>
									<tr>
										<th width="15%">항목선택</th>
										<th width="45%">수상명</th>
										<th width="20%">수여기관</th>
										<th width="20%">취득일/수상일</th>
									</tr>
								</thead>

								<tbody>
									<tr class="awardsContent">
										<td><select name='cer_category' class='form-control'>
												<option value="license" label="자격증/면허증">자격증/면허증</option>
												<option value="language_exam" label="어학시험">어학시험</option>
												<option value="certification" label="수상내역/공모전" selected>수상내역/공모전</option>
										</select></td>
										<td><input type="text" name="" id=""
											title="수상명은 정확하고 구체적으로 최종결과까지 표현해주세요. &#13;ex)백상예술 미술경진대회 금상 &#13;&nbsp;&nbsp;청룡기 육상선수권대회 은메달"
											class="form-control"></td>
										<td><input type="text" name="" id=""
											title="수여기관은 정확하고 구체적으로 입력해주세요. &#13;ex)서울시청 , 경기교육청"
											class="form-control"></td>
										<td><label class='form-inline'> <select id=""
												class="form-control" style="width: 90px">
													<c:forEach var="i" begin="0" end="${2016-1900}">
														<c:set var="resultYear" value="${2016-i }" />
														<option value="${resultYear }">${resultYear }</option>
													</c:forEach>
											</select> &nbsp;.&nbsp; <select id="" class="form-control"
												style="width: 60px">
													<c:forEach var="i" begin="1" end="${12}">
														<option value="${i}">${i}</option>
													</c:forEach>
											</select>
										</label></td>
									</tr>

								</tbody>
							</table>
							<div class='delBtnDiv'
								style='text-align: right; margin-bottom: 5px;'>
								<img alt='삭제버튼' name='delCerImg'
									src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif' />
							</div>
						</div>
					</div>

					<div id="skillDiv" style="display: none;">
						<div class="form-group">
							<table id="" class="table" cellspacing="0" summary="자격증/어학/수상"
								width="100%">
								<thead>
									<tr>
										<th width="20%%">보유 능력</th>
										<th width="20%">수준</th>
										<th width="60%">상세 내용</th>
									</tr>
								</thead>

								<tbody>
									<tr class="skillContent">
										<td><input type="text" name="skill_abil" id="skill_abil"
											placeholder="ex)컴퓨터-코딩,서버,보안" class="form-control"></td>
										<td><select class="form-control" name="skill_level"
											id="skill_level">
												<option value="초급">초급</option>
												<option value="중급">중급</option>
												<option value="고급">고급</option>
										</select></td>
										<td><textarea rows='3' name="" id="skill_detail"
												placeholder="보유능력에서 선택한 기술에 대해서 상세하고 구체적으로 입력해주세요. &#13; ex) - 프로그래밍 언어(Java.php,HTML) 등 언어 능력 섬렵"
												class='form-control'></textarea></td>
									</tr>

								</tbody>
							</table>
							<div class='delBtnDiv'
								style='text-align: right; margin-bottom: 5px;'>
								<img alt='삭제버튼' name='delSkillImg'
									src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif' />
							</div>
						</div>
					</div>


				</div>
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="pt">
				<div class="my-auto">
					<h4 class="mb-5">포트폴리오</h4>
					<input type="file" class="form-control" name="" id="">

				</div>
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column"
				id="hope">
				<div class="my-auto">
					<h4 class="mb-5">희망 근무조건</h4>


					<label>근무형태<span class="res-star">*</span></label> <select
						class="form-control">
						<!-- emp_type 테이블 반복문 option -->
						<option value="">근무형태</option>
					</select> 
					<br> 
					<label>희망연봉<span class="res-star">*</span></label> 
					<br>
					<label class="form-inline">
						<select class="form-control" name="" id="">
							<option value="0">회사내규에 따름</option>
							<option value="1">면접후 결정</option>
							<c:forEach var="sal" begin="1400" end="4000" step="200">
								<option value="${sal}">${sal}만원 이상</option>
								<c:if test="${sal==4000 }">
									<c:forEach var="sal2" begin="5000" end="6000" step="1000">
										<option value="${sal2}">${sal2}만원 이상</option>
									</c:forEach>
								</c:if>
							</c:forEach>
						</select> 
						&nbsp;&nbsp;~&nbsp;&nbsp;
						<select class="form-control" name="" id="">
							<c:forEach var="sal3" begin="1400" end="4000" step="200">
								<option value="${sal3}">${sal3}만원 이하</option>
								<c:if test="${sal3==4000 }">
									<c:forEach var="sal4" begin="5000" end="9000" step="1000">
										<option value="${sal4}">${sal4}만원 이하</option>
									</c:forEach>
								</c:if>
							</c:forEach>
							<option value="10000">1억원 이하</option>
						</select>
						&nbsp;&nbsp; 
						<label>
							<input type="checkbox" name="" id="" value="0">회사 내규에 따름&nbsp;&nbsp; 
						</label>
						<label>
							<input type="checkbox" name="" id="" value="1" >면접 후 결정&nbsp;&nbsp; 					
						</label>	
						
					</label>
					
					<br> 
					<label>희망 근무지역<span class="res-star">*</span></label> 
					<br>

					<select class="form-control">
						<option>지역 (경기 서울)</option>
					</select> <select class="form-control">
						<option>상세지역(당산동)</option>
					</select>



					<!-- 
	희망 업종과 직종에 따라 큰 카테고리에 셀프조인 하여서 상세 업종및 상세 직종을 selectbox 두개로 표현할것
	셀렉트 박스 1 (서비스업)  셀렉트 박스 2 (서비스업에 해당하는 상세직종)
	 -->
					<br> <label>희망직종<span class="res-star">*</span></label> <br>
					<select class="form-control">
						<option>occu카테고리</option>
					</select> <select class="form-control">
						<option>occu_top_no에따른 name</option>
					</select> <br> <label>희망직종<span class="res-star">*</span></label> <br>
					<select class="form-control">
						<option>sectors카테고리</option>
					</select> <select class="form-control">
						<option>sec_top_no에따른 name</option>
					</select> <br>

				</div>
			</section>
		</div>

	</form>
	</div>

	</div>



</body>
</html>