<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	$(document).ready(function() {
			//휴대폰번호 받아오기
			if ($('#cmTel').val() != "") {
				var cmTel = $('#cmTel').val();
				var cmPhone = cmTel.split("-");

				$('#cmMgrTel1').val(cmPhone[0]).prop("selected", true);
				$('#cmMgrTel2').val(cmPhone[1]);
				$('#cmMgrTel3').val(cmPhone[2]);
			}
			//이메일 받아오기
			if ($('#cmMail').val() != "") {
				var Email = $('#cmMail').val();
				var setEmail = Email.split("@");

				$('#cmEmail1').val(setEmail[0]);
				$('#cmEmail2').val(setEmail[1]).prop("selected", true);
			}

		$('#cmEmail2').change(function() {
			if ($(this).val() == 'etc') {
				//$('#memEmail3').css('visibility','visible');
				$('#cmEmail3').attr('style', 'visibility: visible');
			} else {
				$('#cmEmail3').css('visibility', 'hidden');
			}
		});

		$('#complete').click(function() {
			$('#cmRegnum').val($('#cmRegnumModal').val());
			$('#csNo').val($('[name=csNoModal]:checked').val());
			$('#CpModal').modal('hide');
		});

	});
</script>
    <style type="text/css">
    	#cmMemEdit span{
     		color:blue;
     	}
     	#cmMemEdit{
     		padding:20px; 
    		margin:0 auto;	
     		background-color:#ffff;
    	}
   		#cmMemEdit fieldset{
 			width:700px;
	 		margin:0 auto;
			padding:30px;
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
		.radio-inline{
			width:130px;
		}


 /* 사이드바 스타일 */
  #sidebar-wrapper {
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 1440px;
  } 
  
  
   .sidebar-nav {
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
   <c:import url="../../index/top.jsp" />

	<div class="container">
		<div class="row">
			<!-- 사이드바 -->
			<div id="page-wrapper" class="col-md-3">
				<div id="sidebar-wrapper">
					<ul class="sidebar-nav">
						<li class="sidebar-brand"><h1>My Page</h1></li>
						<hr>
						<li><a href="<c:url value='/member/edit/cmMemEdit.do'/>"><span
								class="glyphicon glyphicon-chevron-right"></span>기업정보 수정</a></li>
						<li><a href="<c:url value='/member/trans/pwdTrans2.do'/>"><span
								class="glyphicon glyphicon-chevron-right"></span>비밀번호 변경</a></li>
					</ul>
				</div>
			</div>
			<!-- /사이드바 -->

			<div class="col-md-9">
				<form role="form" class="form-inline" method="post"
					action="<c:url value='/member/edit/cmMemEdit.do'/>"
					enctype="multipart/form-data">
					<div id="cmMemEdit">
						<h1>기업정보 수정</h1>
						<br>
						<hr>
						<br>
						<fieldset>
							<h4>
								<b><span>${vo.cmName}</span> 님,안녕하세요.</b><br>
							</h4>
							<table class="table">
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;아이디
									</td>
									<td>${vo.cmId}</td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;사업자등록번호
									</td>
									<td><input type="text" class="form-control"
										name="cmRegnum" id="cmRegnum" value="${vo.cmRegnum}" size="12"
										readonly="readonly"> <input type="button"
										class="form-control" value="사업자등록번호 변경요청" data-toggle="modal"
										data-target="#CpModal"></td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;기업구분
									</td>
									<td>일반기업 구분은 임의로 변경할 수 없습니다.<br> 변경을 원하시는 경우,고객센터로
										연락해주세요.<br> 기업의 확인을 위해 사업자등록증 사본을 요청할 수 있습니다.<br>
									<a href="#CpModal" data-toggle="modal">기업 구분 수정요청</a></td>
								</tr>
							</table>
							<input type="text" name="csNo" id="csNo" value="${vo.csNo}">
							<br>
							<br>
							<h4>
								<b>인사담당자 정보</b>
							</h4>
							<input type="hidden" id="cmNo" name="cmNo" value="${vo.cmNo}">
							<input type="hidden" id="cmTel" value="${vo.cmMgrTel}"> <input
								type="hidden" id="cmMail" value="${vo.cmEmail}">
							<table class="table">
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;담당자
									</td>
									<td>${vo.cmManager}</td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;담당자
										전화번호
									</td>
									<td><select class="form-control" id="cmMgrTel1"
										name="cmMgrTel1">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
									</select>&nbsp;- <input type="text" class="form-control" size="8"
										maxlength="4" id="cmMgrTel2" name="cmMgrTel2">&nbsp; <input
										type="text" class="form-control" size="8" maxlength="4"
										id="cmMgrTel3" name="cmMgrTel3">&nbsp;</td>
								</tr>
								<tr>

									<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;이메일</td>
									<td><input type="text" class="form-control" size="12"
										maxlength="15" id="cmEmail1" name="cmEmail1">&nbsp;@ <select
										class="form-control" id="cmEmail2" name="cmEmail2">
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="etc">직접입력</option>
									</select>&nbsp; <input type="text" class="form-control" size="12"
										maxlength="15" id="cmEmail3" name="cmEmail3"
										style="visibility: hidden"></td>
								</tr>
							</table>
							<br>
							<br>
							<div class="well well-lg">
								<br>
								<p>
									ㆍ기업정보는 NICE 평가정보, 이크레더블, 금융감독원(DART) 등의 정보 제공처 자료를 사용하여<br>
									&nbsp;&nbsp;&nbsp;&nbsp;<span>최신정보로 업데이트하고</span> 있습니다.<br>
									ㆍ직접입력한 항목은 <span>6개월 동안 업데이트 되지 않을 경우 기업정보 제공처의 최신정보로
										업데이트</span> 됩니다.<br> ㆍ비노출하고 싶은 항목이 있으면 <span>고객센터 (TEL
										02-2025-4733)</span>로 연락바랍니다.<br> ㆍ기업정보는 다른곳에 사용되지 않습니다.
								</p>
							</div>
							<br>
							<br>
							<h4>
								<b>기본정보 </b>
							</h4>
							<table class="table">
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;회사명
									</td>
									<td><input type="text" class="form-control" name="cmName"
										value="${vo.cmName}"></td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;<span class="r">*</span>&nbsp;대표자명
									</td>
									<td><input type="text" class="form-control" name="cmRepre"
										value="${vo.cmRepre}"></td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;회사주소</td>
									<td><input type="text" class="form-control"
										placeholder="우편번호" size="10" value="${vo.cmZipcode}"
										name="cmZipcode"> <input type="button"
										class="form-control" value="우편번호 검색" data-toggle="modal"
										data-target="#ZipModal"> <input type="text"
										class="form-control" placeholder="주소" size="38"
										value="${vo.cmAddr}" name="cmAddr"> <input type="text"
										class="form-control" placeholder="상세주소" size="38"
										value="${vo.cmDetailAddr}" name="cmDetailAddr"></td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;회사 로고/사진등록</td>
									<td><input type="file" class="form-control" name="Logo">
									</td>
								</tr>
								<tr>
									<td class="titleTD">&nbsp;&nbsp;&nbsp;&nbsp;홈페이지 주소</td>
									<td><input type="text" class="form-control" size="38"
										id="cmHomepage" name="cmHomepage" value="${vo.cmHomepage}">
									</td>
								</tr>
							</table>
							<br>
							<hr>
							<br>
							<div id="btnDiv">
								<button type="submit" class="btn btn-primary btn-lg">수정하기</button>
								<a href="<c:url value='/index.do'/>"><button type="button"
										class="btn btn-default btn-lg">취소하기</button></a>
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
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-envelope"> </span>
											</span> <input type="text" class="form-control"
												placeholder="예)판교역로 235, 분당 주공,삼평동 681"> <span
												class="input-group-btn">
												<button class="btn btn-default" type="button">검색</button>
											</span>
										</div>
									</div>
									<div class="modal-body">
										<h3>tip</h3>
										<p>아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>

										<p>
											도로명 + 건물번호<br> <span>예) 판교역로 235, 제주 첨단로 242<br></span>
											지역명(동/리) + 번지<br> <span>예) 삼평동 681, 제주 영평동 2181<br></span>
											지역명(동/리) + 건물명(아파트명)<br> <span>예) 분당 주공, 연수동 주공3차<br></span>
											사서함명 + 번호<br> <span>예) 분당우체국사서함 1~100<br></span>
										</p>
									</div>
									<div class="modal-footer"></div>
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
									<b>사업자등록번호 변경 신청을 위해 사업자등록증 사본을 첨부해 보내주시기<br> 바랍니다.
									</b> <br>
									<br> 업무시간: 월~금 09:00~18:00(주말, 공휴일 휴무)
									<hr>
									<table class="table table-bordered">
										<colgroup>
											<col width=20%>
											<col width=80%>
										</colgroup>
										<tr>
											<td>아이디</td>
											<td>${vo.cmId}</td>
										</tr>
										<tr>
											<td>기업명</td>
											<td>${vo.cmName}</td>
										</tr>
										<tr>
											<td>사업자<br>등록번호
											</td>
											<td><input type="text" class="form-control"
												id="cmRegnumModal" name="cmRegnumModal"
												value="${vo.cmRegnum}"></td>
										</tr>
										<tr>
											<td>기업구분</td>
											<td>&nbsp;&nbsp; <label class="radio-inline"> <input
													type="radio" name="csNoModal" value="1"> 대기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="2"> 중견기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="3"> 강소기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="4"> 중소기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="5"> 외국계(법인)
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="6"> 코스닥
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="7"> 벤처
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="8"> 코스피
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="9"> 기술혁신기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="10"> 공사.공기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="11"> 외부감사법인
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="12"> 수출입기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="13"> 학교.교육기관
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="14"> 코넥스
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="15"> 경영혁신기업
											</label> <label class="radio-inline"> <input type="radio"
													name="csNoModal" value="16"> 우수기업
											</label>
											</td>
										</tr>
										<tr>
											<td>담당자명</td>
											<td>${vo.cmManager}</td>
										</tr>
										<tr>
											<td>전화번호</td>
											<td>${vo.cmMgrTel}</td>
										</tr>
									</table>
									<br>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary btn-lg"
										id="complete">신청완료</button>
								</div>
							</div>
							<!-- 모달 콘텐츠 -->
						</div>
						<!-- 모달 다이얼로그 -->
					</div>
					<!-- 모달 전체 윈도우 -->

				</form>
			</div>
		</div>
	</div>
	<c:import url="../../index/footer.jsp" />
</body>
</html>