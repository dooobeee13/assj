<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 반응형 웹을위한 메타태그 -->
<title>알쓸신job 공고등록</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" 
	src="<c:url value='/jquery/jquery-3.2.1.min.js' />"></script>

<script type="text/javascript">
	$(function(){
		$('#savebtn').click(function(){
			$('#rank_position').modal('hide');
		});
		
		$('.occselectDiv .lb input[type=checkbox]').click(function(){
			var isChecked = $(this).prop('checked');
			var id = $(this).attr('id');
			if (isChecked) {
				
				if ($('.occupation').find('.occuItem [data-id='+ id +']').length == 0) {
					var item = '<span class="occuItem" data-id="'+ id +'">'+ $(this).val() +'<span>';
					$('.occupation').append(item);
				}
			} else {
				$('.occupation .occuItem[data-id='+ id +']').remove();
			}
			
			
		});
		
		$('.occupation').on('click', '.occuItem', function(){
			var id = $(this).data('id');
			$('#' + id).removeAttr("checked");
			$(this).remove();
		})
		
		
	
		
	});


</script>

<style type="text/css">
	.fsmain{
	
		width: 800px;
		padding: 50px;
	}
	
	.sp11{
		font-size: 2em;
		width:300px;
	}
	
	.lb{
		width:100px;
	}
	
	#hh{
		text-align: center;
	}
	
	#ta11{
		width: 350px;
		height: 100px;
	}
	.fsmain{
		width: 70%;
		margin-top: 5%;

		margin-right: 15%;
		
		margin-left: 15%;
	}

	
	.major {
		padding: 10px;
		min-height: 100px;
	    border: 1px solid lightgray;
	    width: 350px;
	    display: inline-block;
	}
	
	#majorbtn{
		vertical-align: top;
	}
	
	
	.occupation {
		padding: 10px;
		min-height: 100px;
	    border: 1px solid lightgray;
	    width: 350px;
	    display: inline-block;
	}
	
	#occbtn{
		vertical-align: top;
	}
	
	.occuItem {
		margin: 5px;
		border: 1px solid;
    	cursor: pointer;
	}

	}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<h1 style="text-align: center">어떤 인재를 원하시나요??</h1>
	<%-- <form role="form" class="form-inline" name="frm" method="post" action="<c:url value='hire1.do'/>"> --%>
	<fieldset class="fsmain">
		
			<div class="container">
				<div class="input-group">
					<span class="sp11">직종/직무</span> <input type="text" placeholder="검색">
					<input type="button" value="검색">


				</div>
				<br>
				<div>
					<span class="sp11">경력여부</span> <label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox1" value="option1">
						신입
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox2" value="option2"> 경력
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox3" value="option3"> 경력무관
					</label> <br> <br>
				</div>
				<div>
					<span class="sp11">고용형태</span> <label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox1" value="option1">
						정규직
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox2" value="option2"> 계약직
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox3" value="option3"> 아르바이트
					</label> <input type="checkbox" id="inlineCheckbox1" value="option1">
					인턴직 <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox2" value="option2"> 프리랜서
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox3" value="option3"> 파트
					</label> <input type="checkbox" id="inlineCheckbox1" value="option1">
					위촉직 <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox2" value="option2"> 파견직
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox3" value="option3"> 전임
					</label> <input type="checkbox" id="inlineCheckbox1" value="option1">
					병역특례 <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox2" value="option2"> 교육생
					</label> <label class="checkbox-inline"> <input type="checkbox"
						id="inlineCheckbox3" value="option3"> 해외취업
					</label><br>
					<hr>
				</div>

				<br> <br>


				<!-- 모집요강  -->


				<h2 id="hh">필수 항목 확인하세요!</h2>
				<hr>

				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">모집요강</th>
						</tr>
					</thead>
					<tr>
						<td>*모집인원</td>
						<td><label class="form_sp frm_rad01" for="collect_3"><input
								type="radio" id="collect_3" name="collect" value="3"><span>1명</span></label>
							<label class="form_sp frm_rad01" for="collect_4"><input
								type="radio" id="collect_4" name="collect" value="4"><span>2명</span></label>
							<label class="form_sp frm_rad01" for="collect_5"><input
								type="radio" id="collect_5" name="collect" value="5"><span>3명</span></label>
							<label class="form_sp frm_rad01" for="collect_1"><input
								type="radio" id="collect_1" name="collect" value="1"><span>0명</span></label>
							<label class="form_sp frm_rad01" for="collect_2"><input
								type="radio" id="collect_2" name="collect" value="2"><span>00명</span></label>
							<label class="form_sp frm_rad01 no_txt" for="collect_6"><input
								type="radio" id="collect_6" name="collect" value="6"><span></span></label>
							<input type="text" id="collect_cnt"
							class="frm_input01 input_length2 _filter" name="collect_cnt"
							data-filter="numeric" maxlength="6"><span
							class="input_txt">명</span></td>

					</tr>

					<tr>
						<td>*담당업무</td>
						<td><textarea id="ta11" title="담당업무"
								placeholder="담당업무를 입력하세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>직급/직책</td>
						<td>
							<div>
								<!-- <textarea id="ta12" title="담당업무" maxlength="300"></textarea> -->
								<div class="occupation">
								
								</div>
								<button id="occbtn" class="btn btn-primary btn-lg" data-toggle="modal"
									data-target="#rank_position">상세보기</button>

							</div>

						</td>

					</tr>
				</table>

<!-- 자격요건 및 우대조건 -->

				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">자격요건 및 우대조건</th>
						</tr>
					</thead>
					<tr>
						<td>*학력</td>
						<td>
							<div>
								<input type="radio" id="collect_3" name="collect" value="3"><span>학력무관</span>
								<input type="radio" id="collect_4" name="collect" value="4"><span>제한</span>
								<select>
									<option>고등학교졸업이상</option>
									<option>대학교졸업(2,3년)이상</option>
									<option>대학교졸업(4년) 이상</option>
									<option>석사졸업이상</option>
									<option>박사졸업</option>
								</select>
							</div> <label>기타 학력사항 </label> <input type="text">


						</td>

					</tr>
					<tr>
						<td>전공/학과</td>

						<td>
							<div>
								<div class="major" >
								
								</div>

								<button id="majorbtn" class="btn btn-primary btn-lg" data-toggle="modal"
									data-target="#myModal">상세보기</button>
								<span id="majorbtn" class="glyphicon glyphicon-zoom-in"></span>
							</div>
						</td>

					</tr>
					<tr>
						<td>우대조건</td>
						<td><textarea id="ta11" title="우대사항"
								placeholder="우대사항을 입력해주세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>자격요건</td>
						<td><textarea id="ta11" title="자격요건"
								placeholder="자격요건을 입력해주세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>성별</td>
						<td><input type="radio" id="collect_3" name="collect"
							value="입력"><span>성별무관</span> <input type="radio"
							id="collect_4" name="collect" value="미입력"><span>남자</span>
							<input type="radio" id="collect_4" name="collect" value="미입력"><span>여자</span>

						</td>

					</tr>

				</table>
<!-- 채용절차 및 제출서류  -->
								<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">채용절차 및 제출서류</th>
						</tr>
					</thead>
					
					<tr>
						<td>채용절차</td>
						<td><textarea id="ta11" title="채용절차"
								placeholder="채용절차를 입력하세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>제출서류</td>
						<td><textarea id="ta11" title="제출서류"
								placeholder="제출서류를 입력해주세요." maxlength="300"></textarea></td>

					</tr>

				</table>

<!-- 근무조건  -->
				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">근무조건</th>
						</tr>
					</thead>
					<tr>
						<td>*급여</td>
						<td><select>
								<option>0~1500만원이하</option>
								<option>1500~2000만원</option>
								<option>2000~2500만원</option>
								<option>2500~3000만원</option>
								<option>3000~3500만원</option>
								<option>3500~4000만원</option>
								<option>4000~4500만원</option>
								<option>4500~5000만원</option>
								<option>5000~6000만원</option>
								<option>6000~7000만원</option>
								<option></option>

						</select></td>
					</tr>
					<tr>
						<td>복리후생</td>
						<td><textarea id="ta11" title="복리후생"
								placeholder="복리후생을 입력해주세요." maxlength="300"></textarea></td>


					</tr>
					<tr>
						<td>*업종</td>
						<td><input type="text" placeholder="  업종을 입력하세요  "></td>

					</tr>
					<tr>
						<td>*근무지역</td>
						<td><input type="text" placeholder="  근무지역을 입력하세요 ">
							<input type="text" placeholder="  상세지역 "></td>

					</tr>
				</table>

				<!-- 접수기간 및 방법  -->
				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">접수기간 및 방법</th>

						</tr>
					</thead>
					<tr>
						<td>*접수기간</td>
						<td><input type="text" placeholder="  시작일 "><label>
								~ </label> <input type="text" placeholder="  마감일 "></td>
					</tr>
					<tr>
						<td>*접수방법</td>
						<td><label class="checkbox-inline"> <input
								type="checkbox" id="inlineCheckbox1" value="option1">
								홈페이지접수 <input type="text" placeholder="http://">
						</label><br> <label class="checkbox-inline"> <input
								type="checkbox" id="inlineCheckbox1" value="option1"> 우편
						</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" value="option1"> 방문
						</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" value="option1"> 전화
						</label> <label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" value="option1"> FAX
						</label></td>

					</tr>


				</table>
				<!-- 담당자 연락처 -->
				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">담당자 연락처</th>
						</tr>
					</thead>
					<tr>
						<td>담당자</td>
						<td><label>이름<input type="text"></label> <label>담당부서<input
								type="text"></label></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><label>휴대폰 <input type="text"></label><br> <label>이메일
								<input type="text">@<input type="text">
						</label></td>
					</tr>
				</table>

				<!--  채용제목 -->
				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">채용공고제목</th>
						</tr>
						<tr>
							<td>*공고제목</td>
							<td><input type="text" class="form-control" placeholder="제목"></td>

						</tr>

					</thead>

				</table>
			</div>
			<input type="submit" class="btn btn-primary btn-lg" value="채용공고 등록"
				onClick="self.location='hire2.do';">
		
	</fieldset>
	

	<!-- 전공/학과 모달  -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog modal-lg" >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">전공 상세보기</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered" >
						<tr>
							<th>인문/사회</th>
							<th>어학계열</th>
							<th>자연계열</th>
							<th>공학계열</th>
						</tr>
						<tr>
							<td>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-1"> 인문과학계열</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-2"> 사회과학계열</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-3"> 인문과학계열</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-4"> 법학계열</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-5"> 심리학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-6"> 국사/세계사</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-7"> 언론정보학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-8"> 문헌정보학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-9"> 문예창작과</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-10"> 사회복지학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value="major-11"> 종교계열학</label>
								</div>

							</td>
							<td>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 영어영문학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 중어중문학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 일어일문학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 국어국문학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 불어불문학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 독어독문학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 노어노문학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 서반어학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 어학계열</label>
								</div>	
							</td>
							<td>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 농수산/해양학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 임학/임예학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 수학/통계학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 물리</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 화학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 생명과학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 생활과학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 지구과학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 지리학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 자연계열</label>
								</div>
									
							</td>
							<td rowspan="3">
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 컴퓨터/시스템공학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 금속/비금속공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 생명/환경공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 화학공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 전기/전자공학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 반도체공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 건축/토목/조경/도시공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 에너지/원자력공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 산업공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 기계/자동차/조선공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 섬유공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 신소재/재료공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 우주/항공공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 식품/유전/바이오</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 공학계열</label>
								</div>
									
							</td>

						</tr>
						<tr>
							<th>상경계열</th>
							<th>사범계열</th>
							<th>의학/예체능</th>
							
						</tr>
						<tr>
							<td>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 경영학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 경제학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 회계학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 광고홍보학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 유통/무역학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 호텔경영학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 비서학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 상경계열</label>
								</div>
									
							</td>
							<td>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 특수교육학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 유아교육학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 교육심리학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 교육공학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 초등교육</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 중등교육</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 사범계열</label>
								</div>	
							</td>
							<td>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 의/약학</label>
								</div>
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 간호학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 방사선과</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 안경학과</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 임상병리학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 재활의료학</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 치기공/치위생학과</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 수의학과</label>
								</div>	
								<div class="checkbox majorselectDiv">
									<label> <input type="checkbox" value=""> 예/체능계열</label>
								</div>	
								<div class="checkbox majorselectDiv">
								
									<label> <input type="checkbox" value=""> 응급구조학과</label>
								</div>		
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">변경 사항 저장</button>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
	
<!-- 직급/직책 모달  -->
	<div class="modal fade" id="rank_position" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog " >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">직급/직책보기</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered" >
						<tr>
							<th >직급</th>
							<td >
								<div class="checkbox occselectDiv">
									<%-- <c:forEach var="vo" items=${list}>
										<label class="lb"> <input id="occu-${vo.no}" type="checkbox" value="${vo.no}"> ${vo.name}</label>
									</c:forEach> --%>
								
									<label class="lb"> <input id="occu-1" type="checkbox" value="사원"> 사원</label>
									<label class="lb"> <input id="occu-2" type="checkbox" value="주임"> 주임</label>
									<label class="lb"> <input id="occu-3" type="checkbox" value="계장"> 계장</label>
									<label class="lb"> <input id="occu-4" type="checkbox" value="대리"> 대리</label>
									<label class="lb"> <input id="occu-5" type="checkbox" value="과장"> 과장</label>
									<label class="lb"> <input id="occu-6" type="checkbox" value="차장"> 차장</label>
									<label class="lb"> <input id="occu-7" type="checkbox" value="부장"> 부장</label>
									<label class="lb"> <input id="occu-8" type="checkbox" value="감사"> 감사</label>
									<label class="lb"> <input id="occu-9" type="checkbox" value="이사"> 이사</label>
									<label class="lb"> <input id="occu-10" type="checkbox" value="상무"> 상무</label>
									<label class="lb"> <input id="occu-11" type="checkbox" value="전무"> 전무</label>
									<label class="lb"> <input id="occu-12" type="checkbox" value="부사장"> 부사장</label>
									<label class="lb"> <input id="occu-13" type="checkbox" value="임원"> 임원</label>
									<label class="lb"> <input id="occu-14" type="checkbox" value="사장"> 사장</label>
									<label class="lb"> <input id="occu-15" type="checkbox" value="연구원"> 연구원</label>
									<label class="lb"> <input id="occu-16" type="checkbox" value="주임연구원"> 주임연구원</label>
									<label class="lb"> <input id="occu-17" type="checkbox" value="선임연구원"> 선임연구원</label>
									<label class="lb"> <input id="occu-18" type="checkbox" value="책임연구원"> 책임연구원</label>
									<label class="lb"> <input id="occu-19" type="checkbox" value="수석연구원"> 수석연구원</label>
									<label class="lb"> <input id="occu-20" type="checkbox" value="연구소장"> 연구소장</label>
									<label class="lb"> <input id="occu-21" type="checkbox" value="면접후결정"> 면접후결정</label>
								</div>							
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td >
								<div class="checkbox occselectDiv">
									<label class="lb"> <input id="posi-1" type="checkbox" value="팀원"> 팀원</label>
									<label class="lb"> <input id="posi-2" type="checkbox" value="팀장"> 팀장</label>
									<label class="lb"> <input id="posi-3" type="checkbox" value="실장"> 실장</label>
									<label class="lb"> <input id="posi-4" type="checkbox" value="총무"> 총무</label>
									<label class="lb"> <input id="posi-5" type="checkbox" value="지점장"> 지점장</label>
									<label class="lb"> <input id="posi-6" type="checkbox" value="지사장"> 지사장</label>
									<label class="lb"> <input id="posi-7" type="checkbox" value="파트장"> 파트장</label>
									<label class="lb"> <input id="posi-8" type="checkbox" value="그룹장"> 그룹장</label>
									<label class="lb"> <input id="posi-9" type="checkbox" value="센터장"> 센터장</label>
									<label class="lb"> <input id="posi-10" type="checkbox" value="매니저"> 매니저</label>
									<label class="lb"> <input id="posi-11" type="checkbox" value="본부장"> 본부장</label>
									<label class="lb"> <input id="posi-12" type="checkbox" value="사업부장"> 사업부장</label>
									<label class="lb"> <input id="posi-13" type="checkbox" value="원장"> 원장</label>
									<label class="lb"> <input id="posi-14" type="checkbox" value="국장"> 국장</label>
								
								</div>							
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="savebtn">변경 사항 저장</button>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->

</body>
</html>


	








