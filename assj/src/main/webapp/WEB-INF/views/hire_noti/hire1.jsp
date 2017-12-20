<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	<fieldset class="fsmain">
		<div class="container">
			<div class="input-group">
				<span class="sp11">직종/직무</span>
				<input type="text" placeholder="검색">
				<input type="button" value="검색">
				
				
			</div>
			<br>
			<div> 
				<span class="sp11">경력여부</span>
				<label class="checkbox-inline"> 
					<input type="checkbox" id="inlineCheckbox1" value="option1"> 신입 </label> 
				<label class="checkbox-inline"> 
					<input type="checkbox" id="inlineCheckbox2" value="option2"> 경력 </label> 
				<label class="checkbox-inline"> 
					<input type="checkbox"id="inlineCheckbox3" value="option3"> 경력무관 </label>
				<br><br>
			</div>
			<div>
				<span class="sp11">고용형태</span>
				<label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox1" value="option1"> 정규직
				</label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox2" value="option2"> 계약직
				</label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox3" value="option3"> 아르바이트
				</label> <input type="checkbox" id="inlineCheckbox1" value="option1">
				인턴직 </label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox2" value="option2"> 프리랜서
				</label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox3" value="option3"> 파트
				</label> <input type="checkbox" id="inlineCheckbox1" value="option1">
				위촉직 </label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox2" value="option2"> 파견직
				</label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox3" value="option3"> 전임
				</label> <input type="checkbox" id="inlineCheckbox1" value="option1">
				병역특례 </label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox2" value="option2"> 교육생
				</label> <label class="checkbox-inline"> <input type="checkbox"
					id="inlineCheckbox3" value="option3"> 해외취업
				</label><br>
				<hr>
			</div>

			<br><br>
			
			
<!-- 모집요강  -->


			<h2 id="hh">필수 항목 확인하세요!</h2>
			<hr>
	
			<table class="table table-condended">
				<thead>
					<tr class="active">
						<th class="sp11" >모집요강</th>
					</tr>
				</thead>
				<tr >
					<td>*모집인원</td>
					<td><label class="form_sp frm_rad01"
						for="collect_3"><input type="radio" id="collect_3"
							name="collect" value="3"><span>1명</span></label> <label
						class="form_sp frm_rad01" for="collect_4"><input
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
						data-filter="numeric" maxlength="6"><span class="input_txt">명</span>

					</td>
				
				</tr>
				
				<tr >
					<td>담당업무</td>
					<td>
						<textarea id="ta11"  title="담당업무" placeholder="담당업무를 입력하세요." maxlength="300"></textarea>
					</td>
				
				</tr>
				<tr >
					<td>직급/직책</td>
					<td>
						<div>
							<label class="checkbox-inline">
				
							<input type="checkbox" value="option1"> 대리</label> <label
								class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox2" value="option2"> 과장
							</label> <label class="checkbox-inline"> <input
								type="checkbox" id="inlineCheckbox3" value="option3"> 부장
							</label> <br>
							<button class="btn btn-primary btn-lg" data-toggle="modal"
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
				<tr >
					<td>*학력</td>
					<td>
						<div>
							<input type="radio" id="collect_3" name="collect" value="3"><span>학력무관</span>
							<input type="radio" id="collect_4" name="collect" value="4"><span>제한</span>
							<select >
								<option>고등학교졸업이상</option>
								<option>대학교졸업(2,3년)이상</option>
								<option>대학교졸업(4년) 이상</option>
								<option>석사졸업이상</option>
								<option>박사졸업</option>
							</select>
						</div> <label>기타 학력사항 </label>
					<input type="text" >


					</td>
				
				</tr>
				<tr >
					<td>전공/학과</td>
					<td>
						<button class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#myModal">상세보기</button>
						<span class="glyphicon glyphicon-zoom-in"></span>
					</td>
					
				</tr>
				<tr >
					<td>우대조건</td>
					<td>
						<textarea id="ta11"  title="우대사항" placeholder="우대사항을 입력해주세요." maxlength="300"></textarea>
					</td>
					
				</tr>
				<tr >
					<td>성별</td>
					<td>
					<input type="radio" id="collect_3" name="collect"
						value="입력"><span>성별무관</span> 
						<input type="radio"
						id="collect_4" name="collect" value="미입력"><span>남자</span>
						<input type="radio"
						id="collect_4" name="collect" value="미입력"><span>여자</span>

					</td>

				</tr>
				
			</table>
			
			
<!-- 근무조건  -->
			<table class="table table-condended">
				<thead>
					<tr class="active">
						<th class="sp11">근무조건</th>
					</tr>
				</thead>
				<tr >
					<td>*급여</td>
					<td>
					<select >
							<option>1500만원이하</option>
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
						
					</select>
					</td>
				</tr>
				<tr >
					<td>복리후생</td>
					<td>
						<textarea id="ta11"  title="복리후생" placeholder="복리후생을 입력해주세요." maxlength="300"></textarea>
					</td>
					
					
				</tr>
				<tr >
					<td>업종</td>
					<td>
						<input type="text" placeholder="  업종을 입력하세요  "  >
					</td>
			
				</tr>
				<tr >
					<td>근무지역</td>
					<td>
						<input type="text" placeholder="  근무지역을 입력하세요 ">
						<input type="text" placeholder="  상세지역 ">
						
					</td>
				
				</tr>
			</table>

<!-- 접수기간 및 방법  -->
		<table class="table table-condended">
				<thead>
					<tr class="active">
						<th class="sp11">접수기간 및 방법</th>
						
					</tr>
				</thead>
				<tr >
					<td>접수기간</td>
					<td>
						<input type="text" placeholder="  시작일 "><label> ~ </label>
						<input type="text" placeholder="  마감일 ">
					</td>
				</tr>
				<tr >
					<td>접수방법</td>
					<td>
						<label class="checkbox-inline">
						 	<input type="checkbox" id="inlineCheckbox1" value="option1">
						 	홈페이지접수
						 	<input type="text" placeholder="http://">
						</label><br>
						<label class="checkbox-inline">
						 	<input type="checkbox" id="inlineCheckbox1" value="option1">
						 	우편
						</label>
						<label class="checkbox-inline">
						 	<input type="checkbox" id="inlineCheckbox1" value="option1">
						 	방문
						</label>
						<label class="checkbox-inline">
						 	<input type="checkbox" id="inlineCheckbox1" value="option1">
						 	전화
						</label>
						<label class="checkbox-inline">
						 	<input type="checkbox" id="inlineCheckbox1" value="option1">
						 	FAX
						</label>
						
					</td>
					
					
				</tr>
				<tr >
					<td>접수양식</td>
					<td>
						<input type="radio" id="collect_3"
							name="collect" value="사람인이력서"><span>사람인 이력서</span>
						<input
							type="radio" id="collect_4" name="collect" value="자사양식"><span>자사양식</span>
						<input
							type="radio" id="collect_4" name="collect" value="자사양식"><span>자유양식</span>
					</td>
			
				</tr>
				
			</table>
<!-- 담당자 연락처 -->
		<table class="table table-condended">
				<thead>
					<tr class="active">
						<th class="sp11">담당자 연락처</th>
					</tr>
				</thead>
				<tr >
					<td>담당자</td>
					<td>
						<label>이름<input type="text"  ></label>
						<label>담당부서<input type="text"></label>
					</td>
				</tr>
				<tr >
					<td>연락처</td>
					<td>
						<label>휴대폰 <input type="text"  ></label><br>
						<label>이메일 <input type="text"  >@<input type="text"  ></label>
					</td>
			
					
				</tr>
			
			</table>
			
<!--  채용제목 -->
			<table class="table table-condended">
				<thead>
					<tr class="active">
						<th class="sp11">채용공고제목</th>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" class="form-control" placeholder="제목"></</td>

					</tr>

				</thead>

			</table>
		</div>

		
			<input type="button" class="btn btn-primary btn-lg" value="채용공고 등록" onClick="self.location='hire2.do';">
		
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
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 인문과학계열</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 사회과학계열</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 인문과학계열</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 법학계열</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 심리학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 국사/세계사</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 언론정보학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 문헌정보학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 문예창작과</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 사회복지학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 종교계열학</label>
								</div>

							</td>
							<td>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 영어영문학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 중어중문학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 일어일문학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 국어국문학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 불어불문학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 독어독문학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 노어노문학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 서반어학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 어학계열</label>
								</div>	
							</td>
							<td>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 농수산/해양학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 임학/임예학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 수학/통계학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 물리</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 화학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 생명과학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 생활과학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 지구과학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 지리학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 자연계열</label>
								</div>
									
							</td>
							<td rowspan="3">
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 컴퓨터/시스템공학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 금속/비금속공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 생명/환경공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 화학공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 전기/전자공학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 반도체공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 건축/토목/조경/도시공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 에너지/원자력공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 산업공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 기계/자동차/조선공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 섬유공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 신소재/재료공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 우주/항공공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 식품/유전/바이오</label>
								</div>	
								<div class="checkbox">
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
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 경영학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 경제학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 회계학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 광고홍보학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 유통/무역학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 호텔경영학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 비서학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 상경계열</label>
								</div>
									
							</td>
							<td>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 특수교육학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 유아교육학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 교육심리학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 교육공학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 초등교육</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 중등교육</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 사범계열</label>
								</div>	
							</td>
							<td>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 의/약학</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 간호학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 방사선과</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 안경학과</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 임상병리학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 재활의료학</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 치기공/치위생학과</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 수의학과</label>
								</div>	
								<div class="checkbox">
									<label> <input type="checkbox" value=""> 예/체능계열</label>
								</div>	
								<div class="checkbox">
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
								<div class="checkbox">
									<label class="lb"> <input type="checkbox" value=""> 사원</label>
									<label class="lb"> <input type="checkbox" value=""> 주임</label>
									<label class="lb"> <input type="checkbox" value=""> 계장</label>
									<label class="lb"> <input type="checkbox" value=""> 대리</label>
									<label class="lb"> <input type="checkbox" value=""> 과장</label>
									<label class="lb"> <input type="checkbox" value=""> 차장</label>
									<label class="lb"> <input type="checkbox" value=""> 부장</label>
									<label class="lb"> <input type="checkbox" value=""> 감사</label>
									<label class="lb"> <input type="checkbox" value=""> 이사</label>
									<label class="lb"> <input type="checkbox" value=""> 상무</label>
									<label class="lb"> <input type="checkbox" value=""> 전무</label>
									<label class="lb"> <input type="checkbox" value=""> 부사장</label>
									<label class="lb"> <input type="checkbox" value=""> 임원</label>
									<label class="lb"> <input type="checkbox" value=""> 사장</label>
									<label class="lb"> <input type="checkbox" value=""> 연구원</label>
									<label class="lb"> <input type="checkbox" value=""> 주임연구원</label>
									<label class="lb"> <input type="checkbox" value=""> 선임연구원</label>
									<label class="lb"> <input type="checkbox" value=""> 책임연구원</label>
									<label class="lb"> <input type="checkbox" value=""> 수석연구원</label>
									<label class="lb"> <input type="checkbox" value=""> 연구소장</label>
									<label class="lb"> <input type="checkbox" value=""> 면접후결정</label>
								</div>							
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td >
								<div class="checkbox">
									<label class="lb"> <input type="checkbox" value=""> 팀원</label>
									<label class="lb"> <input type="checkbox" value=""> 팀장</label>
									<label class="lb"> <input type="checkbox" value=""> 실장</label>
									<label class="lb"> <input type="checkbox" value=""> 총무</label>
									<label class="lb"> <input type="checkbox" value=""> 지점장</label>
									<label class="lb"> <input type="checkbox" value=""> 지사장</label>
									<label class="lb"> <input type="checkbox" value=""> 파트장</label>
									<label class="lb"> <input type="checkbox" value=""> 그룹장</label>
									<label class="lb"> <input type="checkbox" value=""> 센터장</label>
									<label class="lb"> <input type="checkbox" value=""> 매니저</label>
									<label class="lb"> <input type="checkbox" value=""> 본부장</label>
									<label class="lb"> <input type="checkbox" value=""> 사업부장</label>
									<label class="lb"> <input type="checkbox" value=""> 원장</label>
									<label class="lb"> <input type="checkbox" value=""> 국장</label>
								
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

</body>
</html>


	








