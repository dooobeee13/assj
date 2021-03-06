<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="stylesheet" type="text/css" 
	href="<c:url value='/css/jquery-ui.css'/>">

<script type="text/javascript" 
src="<c:url value='/jquery/jquery-ui.min.js'/>"></script>


<link href="${pageContext.request.contextPath}/css/resume.css" rel="stylesheet">
<script src="<c:url value='/js/resume.js'/>"></script>

<style type="text/css">
body {
	padding-top: 60px;
}
.my-auto{margin:100px 0px;}

.startDP, .endDP{
	width: 80px;
}
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
$(function(){
	if($('input[name=careerNo]').val() == '1'){
		
	}else if($('input[name=careerNo]').val() == '2'){
		$('#detailCareer').show();
		$('#carLB').show();
		$('#carLB2').show();
		$('#lbChk').show();
	}else if($('input[name=careerNo]').val() == '3'){
		$('#detailCareer').show();
		$('#carLB').show();
		$('#carLB2').show();
		$('#lbChk').show();
	}
});
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
				
				<a href="<c:url value='/index.do' />">
					 <img class="img-responsive" style="width: 60px; height: 50px; float: left;" src="<c:url value='/images/assj_logo2.png' />" alt="로고">
					</a>
	
				 <a class="navbar-brand" style="color: white;margin-left: 10px; " href="<c:url value='/mypageMain.do' />">My 홈</a>
				
				
				  
			</div>

			<!-- 데스크탑에서 메뉴가 나오는 부분-->
			<div class="collapse navbar-collapse navbar-ex1-collapse"
				id="topDropMenu">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="nav-link"
						class="dropdown-toggle" data-toggle="dropdown" href="#">이력서 관리</a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/resume/resumeInsert.do'/>">이력서 등록</a></li>
							<li><a href="<c:url value='/resume/resumeList.do' />">이력서 현황</a></li>
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
			<form name="resumeForm" id="resumeForm" method="post" action="<c:url value='/resume/resumeUpdate.do'/>" enctype="multipart/form-data">
			<input type="hidden" name="resumeNo" id="resumeNo" value="${resumeVO.resumeNo }">
			<input type="hidden" name="resumePhone" id="resumePhone">
			<input type="hidden" name="resumeMilStart" id="resumeMilStart">
			<input type="hidden" name="resumeMilEnd" id="resumeMilEnd">
			<input type='hidden' name='shVOList[0].shMajordetail' value="고졸">
			<input type='hidden' name='shVOList[0].shGrade' id='shGrade0' value="0">
			<input type='hidden' name='shVOList[0].shEduNo' id='shEduNo0' value="1">
			<input type="hidden" name="eduName" id="eduName" value="최종학력예비값">
			
			<input type="hidden" name="eduNo" id="eduNo" value="1">
			<input type="hidden" name="resumeSalOpt" id="resumeSalOpt">
			<input type="hidden" name="resumeVisibility" id="resumeVisibility" value="Y">
			
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
								<img class="img-profile img-circle" name="imgTest" id="imgTest" src="${pageContext.request.contextPath }/images/img_photo_null.gif" />
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
						<li class="nav-item"><a class="nav-link" href="#intro">자기소개서</a></li>
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
							<input type="text" class="form-control" maxlength="100" name="resumeTitle" id="resumeTitle" value="${resumeVO.resumeTitle }" placeholder="이력서 제목을 입력하세요.(100자까지 입력가능)"> 
							
							<br> 
							<label for="insertLb">이름<span class="res-star">*</span></label> 
							<input type="text" class="form-control" name="resumeName" id="resumeName" value="${resumeVO.resumeName}" placeholder="이름"> 
							<br>
							<label for="insertLb">생년월일<span class="res-star">*</span></label>
							<br>
							 <label class="form-inline"> 
							 
								<input type="text" name="resumeBirth" class="form-control startDP" value="${resumeVO.resumeBirth}" >														
							
							</label> 
							<br>
							<label for="insertLb">주소<span class="res-star">*</span></label>
							<input type="text" name="resumeAddr" id="resumeAddr" class="form-control" value="${resumeVO.resumeAddr}" placeholder="주소">
							<input type="text" name="resumeDetailaddr" id="resumeDetailaddr" class="form-control" value="${resumeVO.resumeDetailaddr}" placeholder="상세주소">
							<br> 
							<label for="insertLb">휴대폰<span class="res-star">*</span></label>
							<br> 
							<label class="form-inline"> 
								<select id="hp1" name="hp1" class="form-control" style="width: 80px">
									<option value="010" ${hparr1 eq "010"?"selected":"" }>010</option>
						            <option value="011"  ${hparr1 eq "011"?"selected":"" }>011</option>
						            <option value="016"  ${hparr1 eq "016"?"selected":"" }>016</option>
						            <option value="017"  ${hparr1 eq "017"?"selected":"" }>017</option>
						            <option value="018"  ${hparr1 eq "018"?"selected":"" }>018</option>
						            <option value="019"  ${hparr1 eq "019"?"selected":"" }>019</option>
								</select>
								-
							<input type="text" name="hp2" id="hp2"  class="form-control" style="width: 80px" value="${hparr2}">
							-
							<input type="text" name="hp3" id="hp3"  class="form-control" style="width: 80px" value="${hparr3}">
							</label> 
							<br> 
							<label for="insertLb">이메일<span	class="res-star">*</span></label> 
							<input type="text" name="resumeEmail" id="resumeEmail" class="form-control" value="${resumeVO.resumeEmail}"> 
							<br> 
							<label for="insertLb">성별<span class="res-star">*</span></label> 
							<br> 
							<label> 
							<input type="radio" name="resumeGender" id="resumeGender" value="남" ${resumeVO.resumeGender eq "남"?"checked":"" }> 남성 
							</label>
							<label> 
							<input type="radio" name="resumeGender" id="resumeGender" value="여" ${resumeVO.resumeGender eq "여"?"checked":"" }> 여성
							</label> 
							<br> 
							<label for="insertLb">구직상태
							<span class="res-star">*</span></label> 
							<select name="resumeStatus" id="resumeStatus" class="form-control">
								<option value="구직준비중(재학생)" ${resumeVO.resumeStatus eq "구직준비중(재학생)"?"selected":"" }>구직준비중(재학생)</option>
								<option value="구직중" ${resumeVO.resumeStatus eq "구직중"?"selected":"" }>구직중</option>
								<option value="재학중" ${resumeVO.resumeStatus eq "재학중"?"selected":"" }>재학중</option>
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
							<input type="text" name="resumeHobby" id="resumeHobby" class="form-control" placeholder="취미" value="${resumeVO.resumeHobby }">
							<br>
							<label for="insertLb">특기</label> 
							<input type="text" name="resumeSpecialty" id="resumeSpecialty" class="form-control" placeholder="특기" value="${resumeVO.resumeSpecialty}"> 
							<br> 
							<label for="insertLb">결혼 여부</label> 
							<br> 
							<label class="radio-inline"> 
								<input type="radio" name="resumeMarried" id="resumeMarried" value="미혼" ${resumeVO.resumeMarried eq "미혼"?"checked":"" }>미혼
							</label> 
							<label class="radio-inline"> 
								<input type="radio" name="resumeMarried" id="resumeMarried" value="기혼" ${resumeVO.resumeMarried eq "기혼"?"checked":"" }>기혼
							</label>
							<label class="radio-inline"> 
								<input type="radio" name="resumeMarried" id="resumeMarried" value="비공개" ${resumeVO.resumeMarried eq "비공개"?"checked":"" }>비공개
							</label> 
							<br> <br>
							<label for="insertLb">보훈대상</label> 
							<br> 
							<select name="resumeVeteran" id="resumeVeteran" class="form-control">
								<option value="비대상" ${resumeVO.resumeVeteran eq "비대상"?"selected":"" }>비대상</option>
								<option value="대상" ${resumeVO.resumeVeteran eq "대상"?"selected":"" }>대상</option>
							</select> 
							<br> 
							<label for="insertLb">고용 지원금 대상</label> 
							<br> 
							<label class="radio-inline"> 
							<input type="radio" name="resumeSubsidy" value="비대상" ${resumeVO.resumeSubsidy eq "비대상"?"checked":"" }>비대상
							</label> 
							<label class="radio-inline"> 
							<input type="radio" name="resumeSubsidy" value="대상" ${resumeVO.resumeSubsidy eq "대상"?"checked":"" }>대상
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
							<option value="대상아님" ${resumeVO.resumeMilTarget eq "대상아님"?"selected":"" }>대상아님</option>
							<option value="군필" ${resumeVO.resumeMilTarget eq "군필"?"selected":"" }>군필</option>
							<option value="미필" ${resumeVO.resumeMilTarget eq "미필"?"selected":"" }>미필</option>
							<option value="면제" ${resumeVO.resumeMilTarget eq "면제"?"selected":"" }>면제</option>
							<option value="복무중" ${resumeVO.resumeMilTarget eq "복무중"?"selected":"" }>복무중</option>
						</select> 
						<script type="text/javascript">
						$(function(){
							if($('#resumeMilTarget').val()=='대상아님'){			
								 $('#milOptionDiv').hide(); 
								
								$.milFn();			
								
							}else if($('#resumeMilTarget').val()=='군필' || $('#resumeMilTarget').val()=='복무중'){			
								$('#milOptionDiv').show();
								$('#milOption1').show();
								
								$.milFn();
								
								$('#unFnsDiv').hide(); 
								
							}else if($('#resumeMilTarget').val()=='미필' || $('#resumeMilTarget').val()=='면제'){			
								$('#milOptionDiv').show();
								$('#milOption1').hide();			
								
								$.milFn();
								
								$('#unFnsDiv').show();
								
							}
							
							$.milFn = function(){
								
								$("#mil_start_year").val("");
								$("#mil_start_month").val("");
								$("#mil_end_year").val("");
								$("#mil_end_month").val("");
								$("#resumeMilDivision").val("");
								$("#resumeMilClass").val("");
								$("#resumeMilReason").val("");
								
								$('#resumeMilUnfinish').val("");
							}
						});
						</script>
						<br>
						<div id="milOptionDiv" >
						<div id="milOption1">
						<label for="insertLb">복무 기간</label> 
						<br>
						<label class="form-inline"> 
							<input type="text" name="resumeMilStart" class="form-control startDP" value="${resumeVO.resumeMilStart }">
							
							~ 
							<input type="text" name="resumeMilEnd" class="form-control endDP" value="${resumeVO.resumeMilEnd }">							
							
						</label>
						
						<br>
						<label for="insertLb">군별 선택</label> 
						<c:set var="divisionArr">육군,해군,공군,해병,의경,전경,공익,기타</c:set>
						<select name="resumeMilDivision" id="resumeMilDivision" class="form-control">
						<option value=""></option>
							<c:forEach var="division" items="${divisionArr}">
								<option value="${division }"  ${resumeVO.resumeMilDivision eq "${division}"?"selected":""}>${division }</option>
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
							
							<input type="text" name="shVOList[0].shAyear" class="form-control startDP">
							
							~ 
							<input type="text" name="shVOList[0].shGyear" class="form-control endDP">							
							
						</label>
						
						<br>
						<label class="form-inline"> 
						<select name="shVOList[0].shAwhether"  class="form-control">
								<option value=""></option>
								<option value="입학" selected>입학</option>
								<option value="편입">편입</option>
						</select>
						</label> <span>&nbsp;&nbsp;</span> 
						<label class="form-inline"> 
						<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set> 
						<select name="shVOList[0].shGwhether"  class="form-control">								
								<c:forEach var="gw" items="${gwArr }">
									<option class="shgwOp" value="${gw }">${gw}</option>
								</c:forEach>
								<option value="검정고시 합격" class="shGedOp" disabled="disabled">검정고시 합격</option>
						</select>
						</label> 
						<br><br><br>
						<label for="insertLb">학교명<span class="res-star">*</span></label>
						<input type="text" class="form-control" name="shVOList[0].shSname" id="shSname" placeholder="고등학교 입력"> 
						<br>
							<select name="shVOList[0].shAreaNo" class="form-control">
								<c:forEach var="areaTop" items="${areaListTop}">
									<option value="${areaTop.areaNo}">${areaTop.areaName}</option>
								</c:forEach>
							</select>
						<br> 
						<label class="form-inline"> 
						<input type="checkbox" class="form-control" name="chkSname" id="chkSname" value="검정고시">대입 검정고시(고졸)
						</label> 
						<br> <br><br>
						<label for="insertLb">전공<span class="res-star">*</span></label>
						<select name="shVOList[0].shMajor" class="form-control">						
							<option value="문과계열">문과계열</option>
							<option value="이과계열">이과계열</option>
							<option value="전문(실업)계">전문(실업)계</option>
							<option value="예체능계">예체능계</option>
						</select>

					</div>
				</section>

				<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="sh2">
					
					<div>
					<h4 class="mb-5">학력 사항</h4>
						<label style="color: gray; font-size: 8px;">대학, 석사, 박사 등의 학력을 추가할 수 있습니다</label>
					</div>
					
					
					
						
  <script type="text/javascript">
   $(function(){
	  var majorCnt1 = 1;
	  $(document).on("change",".basicshMajor",function(){
			
			var no =$("option:selected",this).index()+1;	
			var $thisSel = $(this);
		    
			$(this).next().next().find("option").remove();
			
			$.ajax({
				url:"<c:url value='/resume/resumeMajorDetail.do' />",
				type:"post",
				data:"no="+no,
				dataType:"json",
				success:function(majorVO){
					$.each(majorVO,function(index,item){
						$thisSel.next().next().append("<option value='"+item.majorName+"'>"+item.majorName+"</option>");
					});
				},
				error:function(xhr,status,error){
					alert("에러발생:"+status+"=>"+error);
				}
				
			});	
		});		
	 
  }); 
  </script>
							
						
						<div style="clear: both" class="clearDiv"></div>
						<div style="clear: both; display: none;" id="clearBasicDiv"></div>
						
						<div id="addSHDiv">
							<label>
								<img alt="학력추가" id="addSH" src="${pageContext.request.contextPath}/images/button/btn_add.gif" style="text-align: right;">
							</label>
						</div>						
						
						
						
							
						

		<div class="shBasicDiv" style="display: none; border: 1px solid gray; margin-top: 10px; padding: 10px;">					
						
					
						<div class="col-sm-3 col-md-3 shDiv">
							<label for="insertLb">재학 기간<span class="res-star">*</span></label>
						<br>
							
							<label class="form-inline"> 
								<input type="text" name="basicStartDP" class="form-control startDP">
							
								~ 
								<input type="text" name="basicEndDP" class="form-control endDP">							
							
							</label> 
							<br>
							
							<label class="form-inline"> 
								<select name="basicshAwhether" class="form-control">
										<option value="입학">입학</option>
										<option value="편입">편입</option>
								</select>
							&nbsp;&nbsp;
							
							<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set> 
							<select name="basicshGwhether" class="form-control">
									<c:forEach var="gw" items="${gwArr }">
										<option value="${gw }">${gw}</option>
									</c:forEach>
							</select>
							</label> 
						</div>
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">학교명<span class="res-star">*</span></label>
							<input type="text" class="form-control" name="basicshSname"  placeholder="대학교 입력"> 
							<select name="basiceduNo"  class="form-control">
								<option value="2">대학교(2,3년)</option>
								<option value="3">대학교(4년)</option>
								<option value="4">대학원(석사)</option>
								<option value="5">대학원(박사)</option>
							</select> 
							<br>
							<select name="basicareaNo" class="form-control">
								<c:forEach var="areaTop" items="${areaListTop}">
									<option value="${areaTop.areaNo}">${areaTop.areaName}</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">전공<span class="res-star">*</span></label>
					
							
							<select name="basicshMajor"  class="form-control basicshMajor">							
								<c:forEach var="majorTop" items="${majorListTop}">
									<option value="${majorTop.majorName}">${majorTop.majorName }</option>
								</c:forEach>
							</select> 
							
							<br>
							
							<select name="basicshMajordetail"  class="form-control basicshMajordetail">
								<c:forEach var="majorDt" items="${majorListBasicDetail}">
									<option value="${majorDt.majorName}">${majorDt.majorName }</option>
								</c:forEach>
							</select>
							</div>
						
						<div class="col-sm-3 col-md-3 shDiv">
						<label for="insertLb">학점</label>
						<label class="form-inline">
							 <input type="text" class="form-control" name="basicshGrade"> 
						</label>
						<br><br><br>
						<label for="insertLb">최종 학력 선택<span class="res-star">*</span>
							
							<input type="radio" name="basicEduno" class="basicEduNoClass">								
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
							<input type="text" class="form-control" name="ehName"  placeholder="교육 명"> 							
							<br>
						</div>
						
						<div class="col-sm-3 col-md-3 ehDiv">
						<label for="insertLb">교육 기관<span class="res-star">*</span></label>
							<input type="text" class="form-control" name="ehIns"   placeholder="교육기관 명">
						</div>	
						
						<div class="col-sm-3 col-md-3 ehDiv">
							<label for="insertLb">교육 기간<span class="res-star">*</span></label>	
							<label class="form-inline"> 
							<!-- 수료시작일 수료종료일 -->
								<input type="text" name="basicStartDP" class="form-control startDP">
							
								~ 
								<input type="text" name="basicEndDP" class="form-control endDP">							
							
							</label> 												
						</div>
						
						<div class="col-sm-3 col-md-3 ehDiv">
						<label for="insertLb">수료 여부<span class="res-star">*</span></label>
						<br>							
							<label class="form-inline"> 
							<select name="ehConf"  class="form-control">
									<option value="수료">수료</option>
									<option value="수료예정">수료예정</option>
									<option value="중퇴">중퇴</option>
									<option value="자퇴">자퇴</option>									
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
						<input type="radio" name="careerNo" id="rdNewcomer" value="1" ${resumeVO.careerNo eq "1"?"checked":""}> 신입
						</label>
						<label> 
						<input type="radio" name="careerNo" id="rdCareer" value="2" ${resumeVO.careerNo eq "2"?"checked":""}>경력 
						</label>
						<label>
						<input type="radio" name="careerNo" id="rdExec" value="3" ${resumeVO.careerNo eq "3"?"checked":""}> 임원/CEO
						</label>
						<div id="careerDiv">
						<label id="carLB">경력 기간</label>
						<br>
						
							<label class="form-inline" id="carLB2">
								<select name="careerYear" id="careerYear" class="form-control">
								<c:forEach begin="1" end="9" varStatus="1" var="i">
									<option value="${i }">${i }</option>							
								</c:forEach>
								<option value="10">10년 이상</option>
								</select>
								년
								<select name="careerMonth" id="careerMonth"  class="form-control">
								<c:forEach var="j" begin="0" end="11" varStatus="1">
								<option value="${j }">${j }</option>
								
								</c:forEach>
								</select>
								개월
							</label>
							<textarea rows="20" name="resumeCareerList" class="form-control" id="detailCareer" >${resumeVO.resumeCareerList }</textarea>
						</div>
						<script type="text/javascript">
						$(function(){
							
							
							$('#detailCareer').hide();
							$('#carLB').hide();
							$('#carLB2').hide();
							$('#lbChk').hide();
							
							if($('input[name=careerNo]').val()=='2'){
								$('#detailCareer').show();
								$('#carLB').show();
								$('#carLB2').show();
								$('#lbChk').show();
							}else if($('input[name=careerNo]').val()=='3'){
								$('#detailCareer').show();
								$('#carLB').show();
								$('#carLB2').show();
								$('#lbChk').show();
							}
							
							
							$('input[name=careerNo]').change(function(){
								var radioValue=$(this).val();
								if(radioValue=="1"){
									$('#detailCareer').hide();
									$('#carLB').hide();
									$('#carLB2').hide();
									$('#lbChk').hide();
									$('#chkDetailTip').removeAttr("checked");
									$('#detailCarTip').hide();
								}else if(radioValue=="2"){
									$('#detailCareer').show();
									$('#carLB').show();
									$('#carLB2').show();
									$('#lbChk').show();
									$('#chkDetailTip').removeAttr("checked");
								}else if(radioValue=="3"){
									$('#detailCareer').show();
									$('#carLB').show();
									$('#carLB2').show();
									$('#lbChk').show();
								}
								
								
							});
							$('#detailCarTip').hide();
							
							$('input[name=chkDetailTip]').change(function(){
								
								if($(this).is(':checked')){
									$('#detailCarTip').show();
								}else{
									$('#detailCarTip').hide();
								}
							});
							
							
							$('#careerYear').change(function(){
								if($(this).val()=='10'){
									$('#careerMonth').val("0").prop("selected","true");
									$('#careerMonth').attr("disabled","disabled");
								}else{
									$('#careerMonth').removeAttr("disabled");
								}
							});
						});
						</script>
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
						<label class=checkbox-inline> 
						<input type="checkbox"  id="chkAct" value="">대외활동&nbsp;&nbsp;&nbsp;
						</label> 
						<label class=checkbox-inline> 
						<input type="checkbox"  id="chkCer" value="">자격증/어학/수상 내용&nbsp;&nbsp;&nbsp;
						</label> 
						<label class=checkbox-inline> 
						<input type="checkbox"  id="chkSkill" value="">보유 기술 및 능력
						</label>
					</div>




					<div id="addActDiv" style="margin-bottom: 100px"></div>

					<div id="addCerDiv" style="margin-bottom: 100px"></div>

					<div id="addSkillDiv" style="margin-bottom: 100px"></div>
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
										<td><select name='cCate' class='form-control cCate'>
												<option value="자격증/면허증" selected>자격증/면허증</option>
												<option value="어학시험" >어학시험</option>
												<option value="수상/공모" >수상내역/공모전</option>
										</select></td>
										<td>
										<input type="text" name="cName" placeholder="1개의 입력란에 하나의 자격증만 입력하세요." class="form-control">
										</td>
										<td>
										<input type="text" name="cPubl" placeholder="ex) 한국산업인력공단" class="form-control"></td>
										<td>
										<select name='cAS' class='form-control'>
												<option value="1차합격" label="1차합격">1차합격</option>
												<option value="2차합격" label="2차합격">2차합격</option>
												<option value="필기합격" label="필기합격">필기합격</option>
												<option value="실기합격" label="실기합격">실기합격</option>
												<option value="최종합격" label="최종합격">최종합격</option>
										</select></td>
										<td><label class='form-inline'> 
										
											<input type="text" name="basicStartDP" class="form-control startDP">							
								
										</label>
										</td>
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
										<td><select name='cCate' class='form-control cCate'>
												<option value="자격증/면허증" label="자격증/면허증">자격증/면허증</option>
												<option value="어학시험" label="어학시험" selected>어학시험</option>
												<option value="수상/공모" label="수상내역/공모전">수상내역/공모전</option>
										</select></td>
										<td>
											<input type="text" name="cName" placeholder="ex) 한국산업인력공단" class="form-control">								
										</td>
										<td>
										
											<input type="text" name="cPubl" placeholder="ex) 영어" class="form-control">
										
										</td>
										<td>
										<label class='form-inline'> 
											<input type='text' name="cAS" style='width: 80px' class='form-inline'>&nbsp;점(등급)
										</label>
										</td>
										
										<td>
										<label class='form-inline'> 
											<input type="text" name="cerBasicDP" class="form-control startDP">							
								
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
										<td><select name='cCate' class='form-control cCate'>
												<option value="자격증/면허증" label="자격증/면허증">자격증/면허증</option>
												<option value="어학시험" label="어학시험">어학시험</option>
												<option value="수상/공모" label="수상내역/공모전" selected>수상내역/공모전</option>
										</select></td>
										<td><input type="text" name="cName" 
											title="수상명은 정확하고 구체적으로 최종결과까지 표현해주세요. &#13;ex)백상예술 미술경진대회 금상 &#13;&nbsp;&nbsp;청룡기 육상선수권대회 은메달"
											class="form-control"></td>
										<td><input type="text" name="cPubl" 
											title="수여기관은 정확하고 구체적으로 입력해주세요. &#13;ex)서울시청 , 경기교육청"
											class="form-control"></td>
										<td><label class='form-inline'> 
											<input type="text" name="basicSkillDP" class="form-control startDP">
							
							
							
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
										<td>
											<input type="text" name="skAbil" placeholder="ex)컴퓨터-코딩,서버,보안" class="form-control">
										</td>
										<td>
										<select class="form-control" name="skLevel">
												<option value="초급" selected>초급</option>
												<option value="중급">중급</option>
												<option value="고급">고급</option>
										</select>
										</td>
										<td>
										<textarea rows='3' name="skDetail" placeholder="보유능력에서 선택한 기술에 대해서 상세하고 구체적으로 입력해주세요. &#13; ex) - 프로그래밍 언어(Java.php,HTML) 등 언어 능력 섬렵"	class='form-control'></textarea>
										</td>
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
				<%-- <c:if test="${empty resumeVO.resumePortfolio }">
				
				</c:if>
				<c:if test="${!empty resumeVO.resumePortfolio }">
				
				</c:if>
					<div>
					<div style=' padding: 5px; margin-bottom: 10px'>
					<span></span><span name='PFIntroView' style='margin-left: 20px; '>내용 보기</span>
					</div>
						<div style=' padding: 5px; margin-bottom: 10px'> 
						</div>
					</div> --%>
					
				</div>
				
				<!-- Trigger the modal with a button -->
				
				<button type="button" class="btn btn-info btn-lg" style="margin-top: 10px; " id="addPFBtn" data-toggle="modal" data-target="#myModal">등록</button>
				
				<!-- Modal -->
				<div id="myModal" class="modal fade" role="dialog">
				  <div class="modal-dialog" >
				
				    <!-- Modal content-->
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">포트폴리오 / 첨부파일</h4>
				      </div>
				      <div class="modal-body">
				        <input type="file" class="form-control" name="modalFile" >
				        <hr>
				        <textarea rows="5" name="portIntro" placeholder="포트폴리오 혹은 첨부파일을 소개해주세요." class="form-control"></textarea>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" name="portModalOK" data-dismiss="modal">확인</button>
				      </div>
				    </div>
				
				  </div>
				</div>
				<script type="text/javascript">
				$(function(){
					$(document).on("click","button[name=portModalOK]",function(){
						
						var addTag = "<div><div style=' padding: 5px; margin-bottom: 10px'><span></span><span name='PFIntroView' style='margin-left: 20px; '>내용 보기</span></div>"+
						"<div style=' padding: 5px; margin-bottom: 10px'> </div></div> ";
						
						var $cloneFile = $(this).parent().prev().find("input[type=file]").clone();
						
						var $cloneTA = $(this).parent().prev().find('textarea').clone();
						
						
						//alert($(this).parent().parent().parent().parent().prev().prev().attr("class")); -> my-auto
						
						$(this).parent().parent().parent().parent().prev().prev().append(addTag);
						
						
						var fileValue = $cloneFile.val().split("\\");
						var fileName = fileValue[fileValue.length-1]; // 파일명

						var okBtn = "<button type='button' class='btn btn-default' name='PFIntroBtn'>확인</button>";
						
						$(this).parent().parent().parent().parent().prev().prev().find('div').find('div:last-child').hide();
						$(this).parent().parent().parent().parent().prev().prev().find('div').find('input[type=file]').hide();
						$(this).parent().parent().parent().parent().prev().prev().find('div').find('div:last-child').append(
								$(this).parent().prev().find("input[type=file]").clone().hide()
						);
						
						$(this).parent().parent().parent().parent().prev().prev().find("div:last-child").find("span:first-child").html(
							fileName		
						);
						$(this).parent().parent().parent().parent().prev().prev().find("div:last-child").find("div:last-child").append(
							$cloneTA
						);
						$(this).parent().parent().parent().parent().prev().prev().find("div:last-child").find("div:last-child").
							find('textarea').attr("readonly","readonly").after(okBtn);
						
					});
					
					$(document).on("click","span[name=PFIntroView]",function(){
						$(this).parent().next().slideDown(2000);
						$(this).fadeOut(1000,function(){
							$(this).hide();
						});
					});					
					
					$(document).on("click","button[name=PFIntroBtn]",function(){
						$(this).parent().fadeOut(2000);
						$(this).parent().prev().find("span:last-child").fadeIn(3000);						
					});					
					
				});
				</script>
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column"
				id="hope">
				<div class="my-auto">
					<h4 class="mb-5">희망 근무조건</h4>


					<label>근무형태<span class="res-star">*</span></label>
						<select name="etNo" class="form-control">
							<c:forEach var="ETList" items="${ETList}">
								
								<option value="${ETList.etNo}">${ETList.etName}</option>
							</c:forEach>
						
						</select> 
					
					<br> 
					<label>희망연봉<span class="res-star">*</span></label> 
					<br>
					<label class="form-inline">
						<select class="form-control" name="resumeSalStart" id="resumeSalStart">
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
						<select class="form-control" name="resumeSalEnd" id="resumeSalEnd">
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
						
						<label class="form-inline">
							<input type="checkbox" name="chkSalOpt1" id="chkSalOpt1" value="회사내규에 따름" > 회사내규에 따름 
							&nbsp;&nbsp; 	
							<input type="checkbox" name="chkSalOpt2" id="chkSalOpt2"  value="면접 후 결정" > 면접 후 결정 				
						</label>	
						
					</label>
					
					<br> 
					<label>희망 근무지역<span class="res-star">*</span></label> 
					<br>

					<select name="areaNoTop" class="form-control">
					<c:forEach var="areaTop" items="${areaListTop}">
						<option value="${areaTop.areaNo }">${areaTop.areaName }</option>
					</c:forEach>
						
					</select> 
					
					<select name="areaNo" class="form-control">
						<c:forEach var="areaBasicDt" items="${selectBasicArea}">
						<option value="${areaBasicDt.areaNo }">${areaBasicDt.areaName }</option>
					</c:forEach>
						
					</select>

					<br> 
					
					<label>희망 직종<span class="res-star">*</span></label> <br>
					<select name="occuNoTop" class="form-control">
						<c:forEach var="occuTop" items="${occuListTop}">
						<option value="${occuTop.occuNo }">${occuTop.occuName }</option>
						</c:forEach>
					</select> 
					
					<select name="occuNo" class="form-control">
						<c:forEach var="selectBasicOccu" items="${selectBasicOccu}">
						<option value="${selectBasicOccu.occuNo }">${selectBasicOccu.occuName }</option>
						</c:forEach>
					</select> 
					   
					<br> 
					
					<label>희망 업종<span class="res-star">*</span></label> 
						
					<br>
					
					<select name="secNoTop" class="form-control">
						<c:forEach var="secTop" items="${sectorsListTop}">
						<option value="${secTop.secNo}">${secTop.secName }</option>
					</c:forEach>
					</select> 
					
					<select name="secNo" class="form-control">
						<c:forEach var="selectBasicSec" items="${selectBasicSec}">
						<option value="${selectBasicSec.secNo }">${selectBasicSec.secName }</option>
						</c:forEach>
					</select> 
					<br>

 <script type="text/javascript">
  $(function(){
		$(document).on("change","select[name=areaNoTop]",function(){
			var no =$("option:selected",this).index()+1;	
			var $thisSel = $(this);
			$(this).next().find("option").remove();
			
			$.ajax({
				url:"<c:url value='/resume/resumeAreaDetail.do' />",
				type:"post",
				data:"no="+no,
				dataType:"json",
				success:function(res){
					$.each(res,function(index,item){
						$thisSel.next().append("<option value='"+item.areaNo+"'>"+item.areaName+"</option>");
					});
				},
				error:function(xhr,status,error){
					alert("에러발생:"+status+"=>"+error);
				}
				
			});	
		});		
		
		$(document).on("change","select[name=occuNoTop]",function(){
			var no =$("option:selected",this).index()+1;	
			var $thisSel = $(this);
			$(this).next().find("option").remove();
			
			$.ajax({
				url:"<c:url value='/resume/resumeOccuDetail.do' />",
				type:"post",
				data:"no="+no,
				dataType:"json",
				success:function(res){
					$.each(res,function(index,item){
						$thisSel.next().append("<option value='"+item.occuNo+"'>"+item.occuName+"</option>");
					});
				},
				error:function(xhr,status,error){
					alert("에러발생:"+status+"=>"+error);
				}
				
			});	
		});	
		
		$(document).on("change","select[name=secNoTop]",function(){
			var no =$("option:selected",this).index()+1;	
			var $thisSel = $(this);
			$(this).next().find("option").remove();
			
			$.ajax({
				url:"<c:url value='/resume/resumeSectorsDetail.do' />",
				type:"post",
				data:"no="+no,
				dataType:"json",
				success:function(res){
					$.each(res,function(index,item){
						$thisSel.next().append("<option value='"+item.secNo+"'>"+item.secName+"</option>");
					});
				},
				error:function(xhr,status,error){
					alert("에러발생:"+status+"=>"+error);
				}
				
			});	
		});	
		
			 var ii = 1;
		$('#addSH').click(function(){
			 
			 $('#addSHDiv').before(
					$('.shBasicDiv').clone(true).show().attr("class","copySHDiv").append(
						$('#clearBasicDiv').clone().show().attr("id","").attr("name","").attr("class","copyClearDiv")
					)
				);	
			 $.applyDatePicker(
			 	$('.copySHDiv').find('input[name=basicStartDP]').attr("name","shVOList["+ii+"].shAyear")
			 );
			 $.applyDatePicker(
				 $('.copySHDiv').find('input[name=basicEndDP]').attr("name","shVOList["+ii+"].shGyear")
			 );
			 $('.copySHDiv').find('input[name=basicEduno]').attr("class","eduNoClass");
			 $('.copySHDiv').find('select[name=basicshAwhether]').attr("name","shVOList["+ii+"].shAwhether");
			 $('.copySHDiv').find('select[name=basicshGwhether]').attr("name","shVOList["+ii+"].shGwhether");
			 $('.copySHDiv').find('input[name=basicshSname]').attr("name","shVOList["+ii+"].shSname");
			 $('.copySHDiv').find('select[name=basiceduNo]').attr("name","shVOList["+ii+"].shEduNo");
			 $('.copySHDiv').find('select[name=basicareaNo]').attr("name","shVOList["+ii+"].shAreaNo");
			 $('.copySHDiv').find('select[name=basicshMajor]').attr("name","shVOList["+ii+"].shMajor");
			 $('.copySHDiv').find('select[name=basicshMajordetail]').attr("name","shVOList["+ii+"].shMajordetail");
			 $('.copySHDiv').find('input[name=basicshGrade]').attr("name","shVOList["+ii+"].shGrade");	 			
			  
			ii++;
		});
	
		var ehIdx = 0;
		$('#addEhImg').click(function(){
			$('.addBtnDiv').before(
					$('#ehBasicDiv').clone(true).show().attr("id","").attr("class","addEhCopyDiv").append(
							$('#clearBasicDiv').clone().show().attr("id","").attr("class","copyClearDiv")
							)
						);
			
			$.applyDatePicker(
			 $('.addEhCopyDiv').find('input[name=basicStartDP]').attr("name","ehVOList["+ehIdx+"].ehAdmission")
			 );
			
			$.applyDatePicker(
			 $('.addEhCopyDiv').find('input[name=basicEndDP]').attr("name","ehVOList["+ehIdx+"].ehCompletion")			
			 );
			
			 $('.addEhCopyDiv').find('input[name=ehName]').attr("name","ehVOList["+ehIdx+"].ehCsname");
			 $('.addEhCopyDiv').find('input[name=ehIns]').attr("name","ehVOList["+ehIdx+"].ehInstitution");
			 $('.addEhCopyDiv').find('select[name=ehConf]').attr("name","ehVOList["+ehIdx+"].ehConfirm");			 
			 
			
			 ehIdx++;
		});
		
		$.applyDatePicker("input[name=resumeBirth]");
		$.applyDatePicker("input[name='shVOList[0].shAyear']");
		$.applyDatePicker("input[name='shVOList[0].shGyear']");
		$.applyDatePicker("input[name='resumeMilStart']");
		$.applyDatePicker("input[name='resumeMilEnd']");
		
		var divIndex = 0;
		$(document).on("click",".cCate",function(){
			
			divIndex = $(this).parent().parent().parent().parent().parent().parent().index();				
			
		});	
		
		$(document).on("change",".cCate",function(){
			if($(this).val()=='자격증/면허증'){
				
				$(this).parent().parent().parent().parent().parent().parent().replaceWith(
						$('#actDiv').clone().show().attr("class","actDivClass"+divIndex).attr("id","")					
				);
				$('.actDivClass'+divIndex).find('select[name=cCate]').attr("name","cerVOList["+divIndex+"].cerCategory")
				$('.actDivClass'+divIndex).find('input[name=cName]').attr("name","cerVOList["+divIndex+"].cerName")
				$('.actDivClass'+divIndex).find('input[name=cPubl]').attr("name","cerVOList["+divIndex+"].cerPublisher")
				$('.actDivClass'+divIndex).find('select[name=cAS]').attr("name","cerVOList["+divIndex+"].cerAcceptScore");
			
				$('.actDivClass'+divIndex).find('input[name=basicStartDP]').attr("name","cerVOList["+divIndex+"].cerAcquiDate")
			
				
			}else if($(this).val()=='어학시험'){
				
				$(this).parent().parent().parent().parent().parent().parent().replaceWith(
						$('#cerDiv').clone().show().attr("class","cerDivClass"+divIndex).attr("id","")								
				);
				
				$('.cerDivClass'+divIndex).find('select[name=cCate]').attr("name","cerVOList["+divIndex+"].cerCategory")
				$('.cerDivClass'+divIndex).find('input[name=cName]').attr("name","cerVOList["+divIndex+"].cerName")
				$('.cerDivClass'+divIndex).find('input[name=cPubl]').attr("name","cerVOList["+divIndex+"].cerPublisher")
				$('.cerDivClass'+divIndex).find('input[name=cAS]').attr("name","cerVOList["+divIndex+"].cerAcceptScore");
				$.applyDatePicker(
				$('.cerDivClass'+divIndex).find('input[name=cerBasicDP]').attr("name","cerVOList["+divIndex+"].cerAcquiDate")
				);
			}else if($(this).val()=='수상/공모'){
				$(this).parent().parent().parent().parent().parent().parent().replaceWith(
						$('#awardsDiv').clone().show().attr("class","awardsDivClass"+divIndex).attr("id","")								
				);
				$('.awardsDivClass'+divIndex).find('select[name=cCate]').attr("name","cerVOList["+divIndex+"].cerCategory")
				$('.awardsDivClass'+divIndex).find('input[name=cName]').attr("name","cerVOList["+divIndex+"].cerName")
				$('.awardsDivClass'+divIndex).find('input[name=cPubl]').attr("name","cerVOList["+divIndex+"].cerPublisher")
				$('.awardsDivClass'+divIndex).find('select[name=cAS]').attr("name","cerVOList["+divIndex+"].cerAcceptScore");
				$.applyDatePicker(
				$('.awardsDivClass'+divIndex).find('input[name=basicSkillDP]').attr("name","cerVOList["+divIndex+"].cerAcquiDate")
				);
			}
		});    
		
  });
		 
   $.applyDatePicker=function(dp){
		$(dp).removeClass('hasDatepicker').datepicker({
			dateFormat:"yy-mm-dd",
			changeYear:true,
			changeMonth:true,
			showMonthAfterYear: true,
			dayNamesMin:['일','월','화','수','목','금','토'],
			monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월',
				'10월','11월','12월'],
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
			
		});
	} 
	
	$.convertDate=function(date){
		return date.getFullYear()+"-"+$.formatDate(date.getMonth()+1)+"-"
		 + $.formatDate(date.getDate());
	}
	
	$.formatDate = function(d){
		var result=d;
		if(d<10){
			result="0"+d;
		}
		return result;
	}
  
  </script>
				</div>
				
			</section>

					<section class="resume-section p-3 p-lg-5 d-flex flex-column"
						id="intro">
						<div class="my-auto">
							<h4 class="mb-5">
								자기소개서<span class="res-star">*</span>
							</h4>
							
							<div id="introAddDiv">
								<div class='addIntroBtnDiv' style='text-align: left; margin-bottom: 5px;'>
									<img alt='추가버튼' name='addIntroImg' id="addIntroImg"
									src='${pageContext.request.contextPath}/images/button/btn_add.gif' />
								</div>
							
							</div>
						
						
							
						</div>
					</section>
<script type="text/javascript">
$(function(){
	var introCnt = 0;
	$('#addIntroImg').click(function(){
		
		var addIntroTag = "<div class='form-group'><div><input type='text' class='form-control' name='introVOList["+introCnt+"].introTitle' placeholder='자기소개서 제목을 입력해주세요. ex) 자기소개 ,성장과정 '></div>"+
		"<div><textarea rows='20' name='introVOList["+introCnt+"].introContent' class='form-control' ></textarea></div>"+
		"</div>";
		
		$('#introAddDiv').before(addIntroTag);
		
		introCnt++;
	});
	$(document).on("click","img[name=delIntroImg]",function(){
		$(this).parent().parent().remove();
	});
	
	
	$(document).on("click",".eduNoClass",function(){
		/* alert('최종학력 선택 클릭'); */
		if($(this).is(":checked")){
			var chkEdu = $(this).parent().parent().prev().prev().find('select').val();
			$('#eduNo').val(chkEdu);
			/* alert($('#eduNoParam').val()); */
		}	
	});
	
});
</script>

				</div>
		

	</form>
	</div>

	</div>



</body>
</html>