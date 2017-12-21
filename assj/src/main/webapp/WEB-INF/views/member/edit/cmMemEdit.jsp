<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>    
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>기업정보 수정</title> 
    <!-- Bootstrap -->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="../../js/bootstrap.min.js"></script>
	<link href="../../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
	<script type="text/javascript">
		$(document).ready(function(){
			$('#cmEmail2').change(function(){
    			if($(this).val()=='etc'){
    				//$('#memEmail3').css('visibility','visible');
    				//console.log($('#memEmail3').attr('style'));
    				$('#cmEmail3').attr('style','visibility: visible');
    			}else{
    				$('#cmEmail3').css('visibility','hidden');
    			}	
    		});
		});
	</script>
    <style type="text/css">
    	#cmMemEdit span{
     		color:blue;
     	}
     	#cmMemEdit{
    		width:720px;
     		padding:20px;
    		margin:0 auto;	
     		background-color:#ffff;
    	}
   		#cmMemEdit fieldset{
 			width:650px;
	 		margin:0 auto;
			padding:20px;
			background-color:#f6f9ff;
 		}
		#cmMemEdit .titleTD{
			width:160px;
		}
		#cmMemEdit #btnDiv{
			text-align:center;
			margin:0 auto;
		}
		#cmMemEdit p{
			font-size:12px;
		}
		#cmMemEdit .r{
    		color:red;
    	}
    	#cmMemEdit h1{
    		font-weight:bold;
    	}
    	.modal-body table{
			background-color:#f6f9ff;
		}
		
		
		 		 /* 사이드바 스타일 */
   	 #page-wrapper {
    padding-left: 380px;
  }
  
  #sidebar-wrapper {
    position:absolute;
    width: 190px;
    height: 63%;
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  
  .sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
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
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <c:import url="../../index/top.jsp" />
   <!-- 사이드바 -->
		<div id="page-wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h1>My Page</h1></li>
				<hr>
				<li><h5><b>이력서 관리</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이력서 등록</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>이력서 현황</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>자소서 관리</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>맞춤채용 정보</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>맞춤채용 설정</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>나의 맞춤채용 정보</a></li>
			</ul>
			<hr>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>스크랩한 공고</b></h5></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>스크랩 공고</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span>관심기업정보</a></li>
			</ul>
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><h5><b>개인정보 관리</b></h5></li>
				<li><a href="<c:if test="${!empty sessionScope.memberVO.memId}"><c:url value='/member/edit/psMemEdit.do'/></c:if><c:if test="${!empty sessionScope.cmMemberVO.cmId}"><c:url value='/member/edit/cmMemEdit.do'/></c:if>"><span class="glyphicon glyphicon-chevron-right"></span>개인정보 수정</a></li>
				<li><a href="<c:url value='/member/out/cmMemOut.do'/>"><span class="glyphicon glyphicon-chevron-right"></span>비밀번호 변경</a></li>
			</ul>
		</div>
	</div>
		<!-- /사이드바 -->
    <div class="container">
    	<div id="cmMemEdit">
    	<h1>기업정보 수정</h1>
    	<br>
		<hr>
		<br>
    	<br><br>
    	<fieldset>
    	<h4><b><span>${vo.cmName}</span> 님,안녕하세요.</b><br></h4>
	    	<form role="form" class="form-inline">
					<table class="table">
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;아이디</td>
							<td>${vo.cmId}</td>			
						</tr>
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;사업자등록번호</td>
							<td>${vo.cmRegnum}&nbsp;&nbsp;<input type="button" class="form-control" value="사업자등록번호 변경요청" data-toggle="modal" data-target="#CpModal"></td>				
						</tr>
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;기업구분</td>
							<td>일반기업 구분은 임의로 변경할 수 없습니다.<br> 
							변경을 원하시는 경우,고객센터로 연락해주세요.<br>
							기업의 확인을 위해 사업자등록증 사본을 요청할 수 있습니다.<br><a href="#">기업 구분 수정요청</a></td>		
						</tr>
				</table><br><br>
				<h4><b>인사담당자 정보</b></h4>
				<input type="text" id="cmTel" value="${vo.cmMgrTel3}">
				<input type="text" id="cmEmail" value="${vo.cmEmail1}">
				<table class="table">
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;담당자</td>
							<td>${vo.cmManager}</td>				
						</tr>
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;담당자 전화번호</td>
							<td>
							<select class="form-control" id="cmMgrTel1" name="cmMgrTel1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>&nbsp;-
							<input type="text" class="form-control" size="8" maxlength="4" id="cmMgrTel2" name="cmMgrTel2">&nbsp;
							<input type="text" class="form-control" size="8" maxlength="4" id="cmMgrTel3" name="cmMgrTel3">&nbsp;
							</td>
						</tr>
						<tr>
							
							<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;이메일</td>
							<td>
							<input type="text" class="form-control" size="12" maxlength="15" id="cmEmail1" name="cmEmail1">&nbsp;@
							<select class="form-control" id="cmEmail2" name="cmEmail2">
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="daum.net">daum.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="etc">직접입력</option>
							</select>&nbsp;
							<input type="text" class="form-control" size="12" maxlength="15" id="cmEmail3" name="cmEmail3" style="visibility:hidden">
							</td>		
						</tr>
				</table><br><br>
				<div class="well well-lg"><br>		
					<p>ㆍ기업정보는 NICE 평가정보, 이크레더블, 금융감독원(DART) 등의 정보 제공처 자료를 사용하여<br>
					 &nbsp;&nbsp;&nbsp;&nbsp;<span>최신정보로 업데이트하고</span> 있습니다.<br>
					ㆍ직접입력한 항목은  <span>6개월 동안 업데이트 되지 않을 경우 기업정보 제공처의 최신정보로 업데이트</span> 됩니다.<br>
					ㆍ비노출하고 싶은 항목이 있으면  <span>고객센터 (TEL 02-2025-4733)</span>로 연락바랍니다.<br>
					ㆍ기업정보는 다른곳에 사용되지 않습니다.</p>
				</div><br><br>
				<h4><b>기본정보 </b></h4>
					<table class="table">
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;회사명</td>
							<td><input type="text" class="form-control" 
							value="${vo.cmName}"></td>				
						</tr>
						<tr>
							<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;대표자명</td>
							<td><input type="text" class="form-control"
							value="${vo.cmRepre}"></td>
						</tr>
						<tr>
							<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;회사주소</td>
							<td>
								<input type="text" class="form-control" placeholder="우편번호" size="10" value="${vo.cmZipcode}">
								<input type="button" class="form-control" value="우편번호 검색" data-toggle="modal" data-target="#ZipModal">
								<input type="text" class="form-control" placeholder="주소" size="38" value="${vo.cmAddr}">
								<input type="text" class="form-control" placeholder="상세주소" size="38" value="${vo.cmDetailAddr}">
							</td>		
						</tr>
						<tr>
							<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;회사 로고/사진등록</td>
							<td>
								<input type="button" class="form-control" value="사진수정" data-toggle="modal" data-target="#myModal1">
							</td>
						</tr>	
					</table><br>
				<hr>
			</form><br>
				<div id="btnDiv">
					<button type="button" class="btn btn-primary btn-lg">수정하기</button>
					<button type="button" class="btn btn-default btn-lg">취소하기</button>
				</div>
		</fieldset>

		<!-- 우편번호 검색 -->
		
		<div class="modal fade" id="ZipModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h2 class="modal-title" id="myModalLabel">우편번호 검색</h2>
					<div class="input-group">
					     <span class="input-group-addon"> <span class="glyphicon glyphicon-envelope"> </span> </span>
					     <input type="text" class="form-control" placeholder="예)판교역로 235, 분당 주공,삼평동 681">
					     <span class="input-group-btn"> <button class="btn btn-default" type="button">검색</button> </span>
					</div>
				</div>
				<div class="modal-body">
				 	<h3>tip</h3>
		   			<p>아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>
					
					<p>도로명 + 건물번호<br>
					<span>예) 판교역로 235,  제주 첨단로 242<br></span>
					지역명(동/리) + 번지<br>
					<span>예) 삼평동 681,  제주 영평동 2181<br></span>
					지역명(동/리) + 건물명(아파트명)<br>
					<span>예) 분당 주공,  연수동 주공3차<br></span>
					사서함명 + 번호<br>
					<span>예) 분당우체국사서함 1~100<br></span></p>
				</div>
				<div class="modal-footer">
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
    </div>    
    
    
    <!-- 기업정보 수정 모달 -->
    
    <div class="modal fade" id="CpModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">기업정보 수정</h4>

				</div>
				<div class="modal-body">
					<b>사업자등록번호 변경 신청을 위해 사업자등록증 사본을 첨부해 보내주시기<br>
					바랍니다.</b>
					<br><br>
					업무시간: 월~금 09:00~18:00(주말, 공휴일 휴무)
					<hr>
					<table class="table table-bordered">
						<tr>
							<td class="titleTD">아이디</td>
							<td><c:if test="${!empty sessionScope.cmMemberVO}">${sessionScope.cmMemberVO.cmId}</c:if></td>				
						</tr>
						<tr>
							<td class="titleTD">기업명</td>
							<td><c:if test="${!empty sessionScope.cmMemberVO}">${sessionScope.cmMemberVO.cmName}</c:if></td>
						</tr>
						<tr>
							<td class="titleTD">사업자<br>등록번호</td>
							<td><input type="text" class="form-control" id="cmRegnum" name="cmRegnum"
								<c:if test="${!empty sessionScope.cmMemberVO}">value="${sessionScope.cmMemberVO.cmRegnum}"</c:if>></td>		
						</tr>	
						<tr>
							<td class="titleTD">인증상태</td>
							<td>인증</td>		
						</tr>	
						<tr>
							<td class="titleTD">담당자명</td>
							<td><input type="text" class="form-control"></td>		
						</tr>	
						<tr>
							<td class="titleTD">전화번호</td>
							<td><input type="text" class="form-control"></td>		
						</tr>	
						<tr>
							<td class="titleTD">사업자<br>등록첨부</td>
							<td><input type="file" class="form-control"></td>		
						</tr>	
						<tr>
							<td class="titleTD">신청내용</td>
							<td><textarea rows="6" cols="60"></textarea></td>		
						</tr>	
					</table><br>		 
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn-lg">신청완료</button>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
	
	
	<!-- 프로필 사진수정 모달 -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h2 class="modal-title" id="myModalLabel">&nbsp;로고등록 / 수정</h2><br>
				</div>
				<div class="modal-body">
				 	<div class="well well-lg">	 			 
						<p>1 .	[찾아보기] 를 클릭 후 로고를 선택하세요.<br>
						2 .	[등록하기]를 클릭시 로고가 바로 등록됩니다.<br>
						3 .	로고를 신규 등록 혹은 변경시, 작성한 채용정보에서도<br>
						&nbsp;&nbsp;&nbsp;로고가 변경 됩니다.<br>
						<br>
						<span class=r>- 파일형식은 jpg, jpeg, gif, png만 업로드 가능합니다.<br>
						- 등록 가능한 최대 용량은 1M입니다.</span></p>
				 		<input type="file" class="form-control">
				 		<br>
				 		<button type="button" class="btn btn-default btn-block">사진 등록하기</button>
				 	</div>
				</div>
				<div class="modal-footer">
				
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
	
	 </div>
	 <c:import url="../../index/footer.jsp" />
</body>
</html>