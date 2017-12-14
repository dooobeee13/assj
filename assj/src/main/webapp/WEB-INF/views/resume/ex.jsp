<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>이력서 등록화면</title>
    
   

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="css/resume.min.css" rel="stylesheet">
    
    <script src="vendor/jquery/jquery.min.js"></script>
    
<style type="text/css">
	body{
		padding-top: 60px; 
	}
	#sideNav{background-color:#2594cf;}
</style>
      <script type="text/javascript">
	$(function(){
		$('[data-toggle="tooltip"]').tooltip();
		$('#detailCareer').hide();
		$('#lbChk').hide();
		$('input[name=optionsRadios1]').change(function(){
			var radioValue=$(this).val();
			if(radioValue=="신입"){
				$('#detailCareer').hide();
			}else if(radioValue=="경력"){
				$('#detailCareer').show();
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
		
		
		
		$('#checkDiv input[type=checkbox]').change(function(){	
			if($(this).is(":checked")){				
				if($(this).attr("id")=="chkAct"){
					alert('대외활동 체크');
					var str = "";
					var actBasic = "";
					
					var txt = "인턴/아르바이트/동아리/자원봉사/사회활동/교내활동/수행과제&#13;&#10;"+
					"ex ) &#13;&#10;"+
					"기간 : 2017-08-03 ~ 2017-02-03 &#13;&#10;"+
					"활동 구분 : 직업 훈련&#13;&#10;"+
					"기관/장소 : 서울 현대 직업 전문학교&#13;&#10;"+
					"내용 : 프로젝트 위주의 Java 개발자 과정";
					
					str += "<div id='actDiv' style='margin-top: 10px'><textarea rows='8' data-toggle='tooltip' title='"+txt+"'  class='form-control' name='actTA'></textarea>"+
					"<br><div name='delBtnDiv' style='text-align: right; margin-bottom: 5px;'><img alt='삭제버튼'  name='delActImg' src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif'/></div></div>";
	              	
					var actBasic = "<div id='actBasic'><h5>대외 활동</h5><div id='addBtnDiv'>"+
					"<textarea rows='8' data-toggle='tooltip' title='"+txt+"' placeholder='"+txt+"' class='form-control' name='taAct'></textarea>"+
					"<img alt='추가버튼' name='addActImg' src='${pageContext.request.contextPath}/images/button/btn_add.gif'/>	</div></div>";
					
					$('#addActDiv').append(actBasic);
					
					$('img[name=addActImg]').click(function(){
						$('img[name=addActImg]').before(str);
					});					
					
					$(document).on("click","img[name=delActImg]",function(){
						$(this).parent().parent().remove();						
					});					
					
				}else if($(this).attr("id")=="chkCer"){
					var cerBasic="";
					var cerTop = "";
					cerTop += "<div id='cerBasic'><h5>자격증 / 어학/ 수상 내역</h5><ul><li>[직접입력]시 유사하한 자격증이 있지 않은지 다시 확인해주세요.</li><li>1개의 입력란에 하나의 자격증만 입력해주세요. 추후 인재정보 등록 시 검색 및 자격증 개수에 반영되지 않을 수 있습니다.</li></ul>"+
					"<div id='addCerImgDiv'><img alt='추가버튼' name='addCerImg' src='${pageContext.request.contextPath}/images/button/btn_add.gif'/></div>";
					cerBasic += 
					"<div id='cerContent' class='form-group'><table class='table'><tr id='topTr'><th>항목선택</th><th>자격증 / 어학 / 수상</th><th>발행처 / 수여기관</th><th>합격 구분</th><th>취득일 / 수상일</th></tr>"+
					"<tr id='ptr'><td id='ptd'>"+
					"<select name='cerCateSelect' class='form-control'>"+
					"<option value='1' selected>자격증/면허증</option>"+
					"<option value='2'>어학시험</option>"+
					"<option value='3'>수상내역/공모전</option>	"+							
					"</select>"+
					"</td>"+					
					"<td><input type='text' class='form-control' placeholder='1개의 입력란에 하나의 자격증만 입력하세요'></td>"+
					"<td><input type='text' class='form-control'></td>"+
					"<td>"+
					"<select name='cerAccept' class='form-control'>"+
					"<option value='1차합격' selected>1차합격</option>"+
					"<option value='2차합격'>2차합격</option>"+
					"<option value='필기합격'>필기합격</option>	"+							
					"<option value='실기합격'>실기합격</option>	"+							
					"<option value='최종합격'>최종합격</option>	"+							
					"</select></td>"+
					"<td><label class='form-inline'><input type='text' style='width:30px' class='form-inline'>&nbsp;.&nbsp;<input type='text' style='width:30px' class='form-inline'></label></td>"+
					"</tr></table>"+
					"<div name='delBtnDiv' style='text-align: right; margin-bottom: 5px;'><img alt='삭제버튼'  name='delCerImg' src='${pageContext.request.contextPath}/images/button/btn_layer_del.gif'/></div></div>";
					
					$('#addCerDiv').append(cerTop);
					$('#addCerImgDiv').before(cerBasic);
					$('img[name=addCerImg]').click(function(){
						$('#addCerImgDiv').before(cerBasic);
					});					
					
					$(document).on("click","img[name=delCerImg]",function(){
						$(this).parent().parent().remove();						
					});	
					
					$(document).on("change","select[name=cerCateSelect]",function(){
						if($("select[name=cerCateSelect]").val()==1){
							alert('자격증');
							
						}else if($("select[name=cerCateSelect]").val()==2){
							alert('어학');
							alert($(this).parent().parent().eq(0).attr("id"));
							
						}else if($("select[name=cerCateSelect]").val()==3){
							alert('수상');
						}
					});
	              	
				}else if($(this).attr("id")=="chkSkill"){
					
					
				}
			}else{
				if($(this).id='chkAct'){
					$('#addActDiv').empty();
				}else if($(this).id='chkCer'){
					$('#addCerDiv').empty();
				}else if($(this).id='chkSkill'){
					$('#addSkillDiv').empty();
				}
			}
		});
		
		
		
	});
	</script>	

</head>
 <body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top"  id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Start Bootstrap</span>
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/hyo.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#basic">기본 정보<span class="res-star">*</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#basic2">기본 정보</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#mil">병역 사항</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#sh1">학력 사항<span class="res-star">*</span></a>
          </li> 
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#sh2">학력 사항</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#cre">경력 사항</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#addSelect">선택 사항</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#pt">포트폴리오</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#hope">희망 근무조건</a>
          </li>
        </ul>
      </div>
    </nav>

    <div  class="container-fluid p-0" >

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="basic">
        <div class="my-auto">
          <h4 class="mb-5">기본 정보<span class="res-star">*</span></h4>
	          <div class="form-group">
	          	<label for="insertLb">이름<span class="res-star">*</span></label>
					<input type="text"  class="form-control" placeholder="이름">
					<br>
					<label for="insertLb">생년월일<span class="res-star">*</span></label>
					<br>
					<label class="form-inline">
						<select id="birth_year" class="form-control" style="width: 100px">
							<c:forEach var="i" begin="0" end="${2016-1900}">
							<c:set var="resultYear" value="${2016-i }"/>
								<option value="${resultYear }">${resultYear }</option>
							</c:forEach>
						</select>
						년&nbsp;&nbsp;			
						<br>					
						<select id="birth_month" class="form-control" style="width: 80px">
							<c:forEach var="i" begin="1" end="${12}">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select>	
						월&nbsp;&nbsp;						
						<select id="birth_day" class="form-control" style="width: 80px">
							<c:forEach var="i" begin="1" end="${31}">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select>               
						일
					</label>
					<label for="insertLb">주소<span class="res-star">*</span></label>
					<input type="text"  readonly class="form-control" placeholder="주소">
					<input type="text" class="form-control" placeholder="상세주소">
					<br>
					<label for="insertLb">휴대폰<span class="res-star">*</span></label>
					<br>
					<label class="form-inline">
						<input type="text" class="form-inline" style="width:50px"> -
						<input type="text" class="form-inline" style="width:50px"> -            
			 			<input type="text" class="form-inline" style="width:50px">
					</label>
			 		<br>			
		 			<label for="insertLb">이메일<span class="res-star">*</span></label>
		 			<input type="text" class="form-control">	
		 			<br>
		 			<label for="insertLb">성별<span class="res-star">*</span></label>
					<br>
					<label> 
					<input type="radio" name="optionsRadios" id="" value="M" checked> 남성
					<input type="radio" name="optionsRadios" id="" value="F"> 여성
					</label>
					<!-- <label>
<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
여기는 라디오 속성이 적용되는 곳입니다.
<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
여기는 라디오 속성이 적용되는 곳입니다.
</label> -->
					<br>
					<label for="insertLb">구직상태<span class="res-star">*</span></label>
					<select name="" id="" class="form-control" >
					<option value="구직준비중(재학생)">구직준비중(재학생)</option>
					<option value="구직중">구직중</option>
					<option value="재학중">재학중</option>									
				</select>		          
	          </div>
        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="basic2">
        <div class="my-auto">
          <h4 class="mb-5">기본 정보</h4>
			<label for="insertLb">취미</label>	
	 			<input type="text" class="form-control" placeholder="취미">
	 			<label for="insertLb">특기</label>
	 			<input type="text" class="form-control" placeholder="특기">
	 			<br>
				<label for="insertLb">결혼 여부</label>
				<br>
				<label class="radio-inline"> <input type="radio" value="미혼" checked>미혼</label>
				<label class="radio-inline"> <input type="radio" value="기혼">기혼</label>
				<label class="radio-inline"> <input type="radio" value="비공개">비공개</label>
				<br>
				<label for="insertLb">보훈대상</label>
				<br>
				<select name="" id="" class="form-controll">
					<option value="비대상">비대상</option>
					<option value="대상">대상</option>								
				</select>
				<br>
				<label for="insertLb">고용 지원금 대상</label>
				<br>
				<label class="radio-inline"> <input type="radio" value="비대상" checked>비대상</label>
				<label class="radio-inline"> <input type="radio" value="대상">대상</label>
        </div>

      </section>
      
       <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="mil">
        <div class="my-auto">
          <h4 class="mb-5">병역 사항</h4>

          	<label for="insertLb">병역대상</label>
   				<select name="" id="" class="form-control" >
					<option value="대상아님">대상아님</option>
					<option value="군필">군필</option>	
					<option value="미필">미필</option>
					<option value="면제">면제</option>
					<option value="복무중">복무중임</option>									
				</select>
				<br>
				<label class="form-inline">
					<input type="text" class="form-control" name="" id="" style="width:60px;">
					 . <input type="text" class="form-control" name="" id="" style="width:60px;"> ~ 
					<input type="text" class="form-control" name="" id="" style="width:60px;">
					 . <input type="text" class="form-control" name="" id="" style="width:60px;">
				
				</label>				
				<c:set var="divisionArr">육군,해군,공군,해병,의경,전경,공익,기타</c:set>
				<select name="" id="" class="form-control" >
					<c:forEach var="division" items="${divisionArr}">
						<option value="${division }">${division }</option>
					</c:forEach>								
				</select>
				<br>
				<c:set var="classArr">이병,일병,상병,병장,하사,중사,상사,원사,준위,소위,중위,대위,소령,중령,대령,준장,소장,중장,대장,기타</c:set>
				<select name="" id="" class="form-control">
					<c:forEach var="mil_class" items="${classArr}">
						<option value="${mil_class}">${mil_class}</option>
					</c:forEach>								
				</select>
				<br>
				<c:set var="reasonArr">만기제대,의가사제대,의병제대,소집해제,불명예제대,상이제대,기타</c:set>
				<select name="" id="" class="form-control">
					<c:forEach var="mil_reason" items="${reasonArr}">
						<option value="${mil_reason}">${mil_reason}</option>
					</c:forEach>								
				</select>
				<br>
				<label for="insertLb">미필/면제 사유 :</label>
				<input type="text" class="form-control" name="" id="">   

        </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="sh1">
        <div class="my-auto">
          <h4 class="mb-5">학력 사항<span class="res-star">*</span></h4>

          <label for="insertLb">재학 기간<span class="res-star">*</span></label>
				<label class="form-inline">
					<input type="text" class="form-control" name="" id="" style="width:50px">.
					<input type="text" class="form-control" name="" id="" style="width:50px">~
					<input type="text" class="form-control" name="" id="" style="width:50px">.
					<input type="text" class="form-control" name="" id="" style="width:50px">
				</label>
				<label class="form-inline">
					<select class="form-control">
						<option value="입학">입학</option>
						<option value="편입">편입</option>								
					</select>
				</label>
				<span>&nbsp;&nbsp;</span>
				<label class="form-inline">
					<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set>
					<select class="form-control">
					<c:forEach var="gw" items="${gwArr }">
						<option value="${gw }">${gw}</option>	
					</c:forEach>							
					</select>
				</label>
				<label for="insertLb">학교명<span class="res-star">*</span></label>
				<input type="text" class="form-control" name="" id="" placeholder="고등학교 입력">
				<br>
				<label class="form-inline">
					<input type="checkbox" class="form-control" name="" id="" value="검정고시">대입 검정고시 (고졸)
				</label>
				<br>
				<label for="insertLb">전공<span class="res-star">*</span></label>
				<select class="form-control">
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

          	<label for="insertLb">재학 기간<span class="res-star">*</span></label>
				<label class="form-inline">
					<input type="text" class="form-control" name="" id="" style="width:50px">.
					<input type="text" class="form-control" name="" id="" style="width:50px">~
					<input type="text" class="form-control" name="" id="" style="width:50px">.
					<input type="text" class="form-control" name="" id="" style="width:50px">
				</label>
				<label class="form-inline">
					<select class="form-control">
						<option value="입학">입학</option>
						<option value="편입">편입</option>								
					</select>
				</label>
				<span>&nbsp;&nbsp;</span>
				<label class="form-inline">
					<c:set var="gwArr">졸업,재학중,휴학중,수료,중퇴,자퇴,졸업예정</c:set>
					<select class="form-control">
					<c:forEach var="gw" items="${gwArr }">
						<option value="${gw }">${gw}</option>	
					</c:forEach>							
					</select>
				</label>
				<br>
				<label for="insertLb">학교명<span class="res-star">*</span></label>
				<input type="text" class="form-control" name="" id="" placeholder="대학교 입력">				
				<select class="form-control">
					<option value="대학(2,3)년">입학</option>
					<option value="대학교(4년)">대학교(4년)</option>	
					<option value="대학원(석사)">대학원(석사)</option>
					<option value="대학원(박사)">대학원(박사)</option>							
				</select>
				<br>
				<label class="form-inline">
					<select class="form-control">
						<option value="주간">주간</option>
						<option value="야간">야간</option>								
					</select>
				</label>
				<br>
				<c:set var="areaArr">서울,경기,인천,부산,대구,대전,세종,광주,울산,강원
				,경남,경북,전남,전북,충남,충북,제주</c:set>
				<select class="form-control">
					<c:forEach var="area_item" items="${areaArr }">
					<option value=""${area_item }>${area_item }</option>
					</c:forEach>
				</select>
				<br>
				<label for="insertLb">전공<span class="res-star">*</span></label>
   				<c:set var="majorArr">기계공학,전기전자,건축토목,재료금속,산업공학,법학사회,어문학,화학공학,생명공학,디자인,컴퓨터 IT,전공무관</c:set>
				<select class="form-control">
				<c:forEach var="majorItem" items="${majorArr}">
					<option value="${majorItem}">${majorItem }</option>								
				</c:forEach>
				</select>
				<br>
				<input type="text" class="form-control" name="" id="" placeholder="전공학과 입력">
				
				<label class="form-inline">
					<input type="checkbox" name="" id="" >부전공(복수/이중전공)				
				</label>
				
				<div id="addSH" class="form-group">
				
				</div>
					<label for="insertLb">최종 학력 선택<span class="res-star">*</span></label>
				<label class="form-inline">
	   				<input type="radio" value="">대학교(4년) 재학중<span> | 한국방송통신대학교</span>
	   				<br>
	   				<input type="radio" value="">고등학교 졸업<span> | 부명고등학교</span>			
				</label>
   				
          
        </div>
      </section>
      


      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cre">
        <div class="my-auto">
			<h4 class="mb-5">경력 사항</h4>			
			<label> 
			<input type="radio" name="optionsRadios1" id="rdNewcomer" value="신입" checked> 신입
			<input type="radio" name="optionsRadios1" id="rdCareer" value="경력"> 경력
			</label>
			<div id="careerDiv">
				<textarea rows="20" class="form-control" id="detailCareer"></textarea>					
			</div>
			<label id="lbChk"><input type="checkbox" name="chkDetailTip" id="chkDetailTip">경력 기술서 쓰는 요령</label>
			<div id="detailCarTip">
				<p>
					<b>[경력기술서]를 잘 써야 '이직'이 쉬워집니다.</b><br />인사담당자에게 실무에 바로 투입해도 문제없다는
					인상을 주어야 합니다.<br /> 관련없는 경력은 과감히 삭제하시고,<br /> 지원분야와 관련된 경력/프로젝트에
					집중하세요.<br />
					<br /> 예) 2015년 2월 ~ 2016년 9월<br />
					&nbsp;&nbsp;&nbsp;&nbsp;앙크루띠(구인구직사이트) E-biz기획실 실장 <br />&nbsp;&nbsp;&nbsp;&nbsp;-
					취업사이트 앙크루띠 입사지원시스템 개편기획 (지원률 15%향상) <br />&nbsp;&nbsp;&nbsp;&nbsp;-
					검색엔진 도입 프로젝트, 로그분석 프로젝트 총괄책임 (성공적 완료) <br />&nbsp;&nbsp;&nbsp;&nbsp;-
					구직사이트 앙크루띠 포토이력서 도입 (사진첨부 일 3만회 돌파)<br />
					<br /> &nbsp;&nbsp;&nbsp; 2017년 1월 ~ 2050년 2월<br />
					&nbsp;&nbsp;&nbsp;&nbsp;온라인 채용대행사이트 알쓸신잡 서비스기획팀 팀장 <br />&nbsp;&nbsp;&nbsp;&nbsp;-
					ASP개념의 채용대행 프로세스 10개 그룹 수주 <br />&nbsp;&nbsp;&nbsp;&nbsp;- 기본형,
					심플형, 파워형 등용문 버전별 리스트 기획 <br />&nbsp;&nbsp;&nbsp;&nbsp;- 채용대행사이트 분야
					랭키닷컴 순위 1위 (2030.12~현재까지)<br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&lt;업무지식
					및 교육&gt; <br />&nbsp;&nbsp;&nbsp;&nbsp;- 2008 웹컨퍼런스 세미나 사회/진행 <br />&nbsp;&nbsp;&nbsp;&nbsp;-
					2028 허넷 온라인 MBA과정 수료
				</p>
			</div>
			
		</div>
          
        </div>
      </section>
      
       <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="addSelect">
        <div class="my-auto">
          <h4 class="mb-5">선택 사항 추가</h4>
                
          	<div id="checkDiv">
				<label class=checkbox-inline>
				<input type="checkbox" id="chkAct" value="">대외활동&nbsp;&nbsp;&nbsp;
				</label>
				<label class=checkbox-inline>
				<input type="checkbox" id="chkCer" value="">자격증/어학/수상 내용&nbsp;&nbsp;&nbsp;
				</label>
				<label class=checkbox-inline>
				<input type="checkbox" id="chkSkill" value="">보유 기술 및 능력
				</label>
			</div>
			
<script type="text/javascript">
	$(function(){
		
		$('#checkDiv input[type=checkbox]').change(function(){
			if($(this).is(":checked")){
				if($(this).id='chkCer'){
					var cerBasic="";
					cerBasic += "<div id='cerBasic' style='border: 1px solid red'><h5>자격증 / 어학/ 수상 내역</h5><ul><li>[직접입력]시 유사하한 자격증이 있지 않은지 다시 확인해주세요.</li><li>1개의 입력란에 하나의 자격증만 입력해주세요. 추후 인재정보 등록 시 검색 및 자격증 개수에 반영되지 않을 수 있습니다.</li></ul>"+
					"<div id="cerContent" class='form-group'><table class='table'><tr><th>항목선택</th><th>자격증 / 어학 / 수상</th><th>발행처 / 수여기관</th><th>합격 구분</th><th>취득일 / 수상일</th></tr>"+
					"<tr><td>"+
					"<select id='cerCateSelect' class='form-control'>"+
					"<option value='1' selected>자격증/면허증</option>"+
					"<option value='2'>어학시험</option>"+
					"<option value='3'>수상내역/공모전</option>	"+							
					"</select>"+
					"</td>"+					
					"<td><input type='text' class='form-group' placeholder='1개의 입력란에 하나의 자격증만 입력하세요'></td>"+
					"<td><input type='text' class='form-group'></td>"+
					"<td>"+
					"<select id='cerAccept' class='form-control'>"+
					"<option value='1차합격' selected>1차합격</option>"+
					"<option value='2차합격'>2차합격</option>"+
					"<option value='필기합격'>필기합격</option>	"+							
					"<option value='실기합격'>실기합격</option>	"+							
					"<option value='최종합격'>최종합격</option>	"+							
					"</select></td>"+
					"<td><input type='text' class='form-group'>.<input type='text' class='form-group'></td>"+
					"</tr></table></div>";
					$('#addCerDiv').append(cerBasic);
				}
			}
		});
	});
</script>
			
			<%-- <div id='cerBasic' style='border: 1px solid red'>
				<h5>자격증 / 어학/ 수상 내역</h5>
				<ul>
					<li>[직접입력]시 유사하한 자격증이 있지 않은지 다시 확인해주세요.</li>
					<li>1개의 입력란에 하나의 자격증만 입력해주세요. 추후 인재정보 등록 시 검색 및 자격증 개수에 반영되지 않을 수 있습니다.</li>					
				</ul>	
					
				
				<div id="cerContent" class='form-group'>
					<table class='table'>					
						<tr>
							<th>항목선택</th>
							<th>자격증 / 어학 / 수상</th>
							<th>발행처 / 수여기관</th>
							<th>합격 구분</th>
							<th>취득일 / 수상일</th>
						</tr>
						<tr>
							<td>
							<select id='cerCateSelect' class='form-control'>
								<option value='1' selected>자격증/면허증</option>
								<option value='2'>어학시험</option>
								<option value='3'>수상내역/공모전</option>								
							</select>
							</td>							
							<td><input type='text' class='form-group' placeholder='1개의 입력란에 하나의 자격증만 입력하세요'></td>
							<td><input type='text' class='form-group'></td>
							<td>
								<select id='cerAccept' class='form-control'>
									<option value='1차합격' selected>1차합격</option>
									<option value='2차합격'>2차합격</option>
									<option value='필기합격'>필기합격</option>								
									<option value='실기합격'>실기합격</option>								
									<option value='최종합격'>최종합격</option>								
								</select>
							</td>
							<td><input type='text' class='form-group'>.<input type='text' class='form-group'></td>
						</tr>
						
					</table>
				</div>
				
				<div id="cerContent" class='form-group'>
					<table class='table'>					
						<tr>
							<th>항목선택</th>
							<th>자격증 / 어학 / 수상</th>
							<th>언어</th>
							<th>시험점수(등급)</th>
							<th>취득일 / 수상일</th>
						</tr>
						<tr>
							<td>
							<select id='cerCateSelect' class='form-control'>
								<option value='1' selected>자격증/면허증</option>
								<option value='2'>어학시험</option>
								<option value='3'>수상내역/공모전</option>								
							</select>
							</td>							
							<td><input type='text' class='form-group' placeholder='1개의 입력란에 하나의 자격증만 입력하세요'></td>
							<td><input type='text' class='form-group'></td>
							<td>
								<select id='cerAccept' class='form-control'>
									<option value='1차합격' selected>1차합격</option>
									<option value='2차합격'>2차합격</option>
									<option value='필기합격'>필기합격</option>								
									<option value='실기합격'>실기합격</option>								
									<option value='최종합격'>최종합격</option>								
								</select>
							</td>
							<td><input type='text' class='form-group'>.<input type='text' class='form-group'></td>
						</tr>
						
					</table>
				</div>
				
				<div id="cerContent" class='form-group'>
					<table class='table'>					
						<tr>
							<th>항목선택</th>
							<th>수상명</th>
							<th>수여기관</th>
							<th>취득일 / 수상일</th>
						</tr>
						<tr>
							<td>
							<select id='cerCateSelect' class='form-control'>
								<option value='1' selected>자격증/면허증</option>
								<option value='2'>어학시험</option>
								<option value='3'>수상내역/공모전</option>								
							</select>
							</td>							
							<td><input type='text' class='form-group' placeholder='1개의 입력란에 하나의 자격증만 입력하세요'></td>
							<td><input type='text' class='form-group'></td>							
							<td><input type='text' class='form-group'>.<input type='text' class='form-group'></td>
						</tr>
						
					</table>
				</div>
				
				<div id="cerAddBtnDiv">
					<img alt='추가버튼' name='addCerImg' src='${pageContext.request.contextPath}/images/button/btn_add.gif'/>
				</div>
			</div> --%>
			
			<div id="addActDiv" >
			
          	</div>
          	
          	<div id="addCerDiv" >
			
          	</div>
          	
          	<div id="addSkillDiv" >
			
          	</div>
			
          	
          </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="pt">
        <div class="my-auto">
          <h4 class="mb-5">포트폴리오</h4>
          
          
          </div>
      </section>

      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="hope">
        <div class="my-auto">
          <h4 class="mb-5">희망 근무조건</h4>
          
          
          
        </div>
      </section>

    </div>

    <!-- Bootstrap core JavaScript -->
    
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>
	


  </body>
</html>