<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ include file="top.jsp"%> --%>
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
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js' />"></script>
<link rel="stylesheet" type="text/css"  href="<c:url value='/css/jquery-ui.css'/>">
<script type="text/javascript" src="<c:url value='/jquery/jquery-ui.min.js'/>"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327f7603fcf7a8ba155dfe89ac2d2057&libraries=services"></script>
<script type="text/javascript">
	
 	$.applyDatePicker = function(id) {
		$(id).datepicker(
				{
					dateFormat : "yy-mm-dd",
					changeYear : true,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ]
				});
	}
 
	$(function() {
		$('#savebtn').click(function() {
			$('#rank_position').modal('hide');
		});
		
 		$.applyDatePicker('#startDay');
		$.applyDatePicker('#endDay'); 
		
		//
		$('.rankselectDiv .lb input[type=checkbox]').click(function() {
			var isChecked = $(this).prop('checked');
			var id = $(this).attr('id');
			if (isChecked) {
				if ($('.rank').find(
						'.rankItem [data-id=' + id + ']').length == 0) {
					var item = '<span class="rankItem" data-id="'+ id +'">'
							+ $(this).data('name') + '<span>';
					$('.rank').append(item);
				}
			} else {
				$('.rank .rankItem[data-id=' + id + ']').remove();
			}
		});
		
		$('.rank').on('click', '.rankItem', function() {
			var id = $(this).data('id');
			$('#' + id).prop("checked", false);
			$(this).remove();
		});

		//
		$('.posiselectDiv .lb input[type=checkbox]').click(function() {
			var isChecked = $(this).prop('checked');
			var id = $(this).attr('id');
			if (isChecked) {
				if ($('.rank').find(
						'.positionItem [data-id=' + id + ']').length == 0) {
					var item = '<span class="positionItem" data-id="'+ id +'">'
							+ $(this).data('name') + '<span>';
					$('.rank').append(item);
				}
			} else {
				$('.rank .positionItem[data-id=' + id + ']').remove();
			}
		});
		$('.rank').on('click', '.positionItem', function() {
			var id = $(this).data('id');
			$('#' + id).prop("checked", false);
			$(this).remove();
		});
		
		//
		$('.majorselectDiv input[type=checkbox]').click(function() {
			var isChecked = $(this).prop('checked');
			var id = $(this).attr('id');
			if (isChecked) {
				if ($('.major').find(
						'.majorItem [data-id=' + id + ']').length == 0) {
					var item = '<span class="majorItem" data-id="'+ id +'">'
							+ $(this).parent().text()
							+ '<span>';
					$('.major').append(item);
				}
			} else {
				$('.major .majorItem[data-id=' + id + ']').remove();
			}
		});
		$('.major').on('click', '.majorItem', function() {
			var id = $(this).data('id');
			$('#' + id).prop("checked", false);
			$(this).remove();
		});
		
		//
		$('.occuselectDiv input[type=checkbox]').click(function() {
			var isChecked = $(this).prop('checked');
			var id = $(this).attr('id');
			if (isChecked) {
				if ($('.occupation').find(
						'.occuItem [data-id=' + id + ']').length == 0) {
					var item = '<span class="occuItem" data-id="'+ id +'">'
							+ $(this).parent().text()
							+ '<span>';
					$('.occupation').append(item);
				}
			} else {
				$('.occupation .occuItem[data-id=' + id + ']').remove();
			}
		});
		$('.occupation').on('click', '.occuItem', function() {
			var id = $(this).data('id');
			$('#' + id).prop("checked", false);
			$(this).remove();
		});
		
		//
		$('.sectorsselectDiv input[type=checkbox]').click(function() {
			var isChecked = $(this).prop('checked');
			var id = $(this).attr('id');
			if (isChecked) {
				if ($('.sectors').find(
						'.sectorsItem [data-id=' + id + ']').length == 0) {
					var item = '<span class="sectorsItem" data-id="'+ id +'">'
							+ $(this).parent().text()
							+ '<span>';
					$('.sectors').append(item);
				}
			} else {
				$('.sectors .sectorsItem[data-id=' + id + ']').remove();
			}
		});
		$('.sectors').on('click', '.sectorsItem', function() {
			var id = $(this).data('id');
			$('#' + id).prop("checked", false);
			$(this).remove();
		});
	});
	
	
</script>

<style type="text/css">
.fsmain {
	width: 800px;
	padding: 50px;
}
.sp11 {
	font-size: 2em;
	width: 300px;
}
.lb {
	width: 100px;
}
#hh {
	text-align: center;
}
#ta11 {
	width: 350px;
	height: 100px;
}
.fsmain {
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
#majorbtn {
	vertical-align: top;
}
.rank {
	padding: 10px;
	min-height: 100px;
	border: 1px solid lightgray;
	width: 350px;
	display: inline-block;
}
.occupation {
	padding: 10px;
	min-height: 100px;
	border: 1px solid lightgray;
	width: 350px;
	display: inline-block;
}
.sectors {
	padding: 10px;
	min-height: 100px;
	border: 1px solid lightgray;
	width: 350px;
	display: inline-block;
}
#rankbtn {
	vertical-align: top;
}
#sectorsbtn {
	vertical-align: top;
}

.rankItem {
	margin: 5px;
	border: 1px solid;
	cursor: pointer;
}
.sectorsItem {
	margin: 5px;
	border: 1px solid;
	cursor: pointer;
}
.occuItem {
	margin: 5px;
	border: 1px solid;
	cursor: pointer;
}.majorItem {
	margin: 5px;
	border: 1px solid;
	cursor: pointer;
}
.positionItem {
	margin: 5px;
	border: 1px solid;
	cursor: pointer;
}

	
.position{
	padding: 10px;
	min-height: 100px;
	border: 1px solid lightgray;
	width: 350px;
	display: inline-block;
}
</style>

<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
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
	<c:import url="../index/top.jsp" />
	<div>
	<h1 style="text-align: center">어떤 인재를 원하시나요??</h1>
	<form name="frm" method="post" action="<c:url value='hire1.do'/>"
		onsubmit="return send(this)">
		<fieldset class="fsmain">

			<div class="container">
				<table class="table table-condended">
					<thead>
						<tr class="active">
							<th class="sp11">직종/직무</th>
						</tr>
					</thead>
					<tr>
						<td>* 직종/직무</td>
						<td>
							<div>
								<div class="occupation"></div>

								<button type="button" id="majorbtn"
									class="btn btn-primary btn-lg" data-toggle="modal"
									data-target="#occupation_task">상세보기</button>
								
								
							</div>
						</td>

					</tr>
					<tr>
						<td>* 경력여부</td>
						<td>
							<c:import url="/hire_noti/career.do" />
						</td>
					</tr>
					
					<tr>
						<td> *고용형태</td>
						<td>
							<c:import url="/hire_noti/empType.do"/>
						</td>
					</tr>
				</table>	
				<br>
				

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
						<td>
							<input type="text" id="collect_cnt" class="frm_input01 input_length2 _filter" name="hnRecruitNum" value="0"
							data-filter="numeric" maxlength="6"><span class="input_txt">명</span>
						</td>

					</tr>

					<tr>
						<td>*담당업무</td>
						<td><textarea id="ta11" title="담당업무" name="hnTask"
								placeholder="담당업무를 입력하세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>직급/직책</td>
						<td>
							<div>
								<!-- <textarea id="ta12" title="담당업무" maxlength="300"></textarea> -->
								<div class="rank"></div>
								<button type="button" id="rankbtn" class="btn btn-primary btn-lg"
									data-toggle="modal" data-target="#rank_position">상세보기</button>

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
						<c:import url="/hire_noti/education.do"/>
					</tr>
					<tr>
						<td>전공/학과</td>

						<td>
							<div>
								<div class="major"></div>

								<button type="button" id="majorbtn"
									class="btn btn-primary btn-lg" data-toggle="modal"
									data-target="#myModal">상세보기</button>
							</div>
						</td>

					</tr>
					<tr>
						<td>우대조건</td>
						<td><textarea id="ta11" title="우대사항" name="hnPreference"
								placeholder="우대사항을 입력해주세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>자격요건</td>
						<td><textarea id="ta11" title="자격요건" name="hnEligibility"
								placeholder="자격요건을 입력해주세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>성별</td>
						<td><input type="radio" id="collect_3" name="hnGender" checked="checked"
							value=""><span>성별무관</span> <input type="radio"
							id="collect_4" name="hnGender" value="남자"><span>남자</span>
							<input type="radio" id="collect_4" name="hnGender" value="여자"><span>여자</span>

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
						<td><textarea id="ta11" title="채용절차" name="hnStep"
								placeholder="채용절차를 입력하세요." maxlength="300"></textarea></td>

					</tr>
					<tr>
						<td>제출서류</td>
						<td><textarea id="ta11" title="제출서류" name="hnDocument"
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
						<td><select name="sal">
								<option value="0~1500">0~1500만원이하</option>
								<option value="1500~2000">1500~2000만원</option>
								<option value="2000~2500">2000~2500만원</option>
								<option value="2500~3000">2500~3000만원</option>
								<option value="3000~3500">3000~3500만원</option>
								<option value="3500~4000">3500~4000만원</option>
								<option value="4000~4500">4000~4500만원</option>
								<option value="4500~5000">4500~5000만원</option>
								<option value="5000~6000">5000~6000만원</option>
								<option value="6000~7000">6000~7000만원</option>
								<option value="7000~8000">7000~8000만원</option>
								<option value="8000~9000">8000~9000만원</option>
								<option value="9000~10000">9000~1억</option>
								<option value="10000~0">1억이상</option>

						</select></td>
					</tr>
					<tr>
						<td>복리후생</td>
						<td><textarea id="ta11" title="복리후생" name="hnBenefits"
								placeholder="복리후생을 입력해주세요." maxlength="300"></textarea></td>


					</tr>
					<tr>
						<td>업종</td>
						<td>
							<div>
								<!-- <textarea id="ta12" title="담당업무" maxlength="300"></textarea> -->
								<div class="sectors"></div>
								<button type="button" id="sectorsbtn" class="btn btn-primary btn-lg" name="sectorList"
									data-toggle="modal" data-target="#sectors">상세보기</button>

							</div>

						</td>
					</tr>
					<tr>
						<td>*근무지역</td>
						<td>
							<input type="text" id="zipcode" placeholder="우편번호">
							<input type="button" onclick="findZipcode()" value="우편번호 찾기"><br>
							<input type="text" name="hnAddr" id="address" placeholder="  기본주소 " size="50">
						
							<input type="text" id="addressDetail" name="hnDetailAddr" placeholder="  상세주소 ">
							<div id="map" style="width:100%; height: 400px; display: none"></div>
							<p class="text-danger" style="margin-top: 20px; display: none;">지도를 움직여 정확한 위치를 표시하세요</p>
							<input type="hidden" id="lat" name="hnLat" >
							<input type="hidden" id="lng" name="hnLng" >
							<input type="hidden" id="sigungu" name="sigungu" >
							
							
							<script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div
							        mapOption = {
							            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
							            level: 5 // 지도의 확대 레벨
							        };
		
							    //지도를 미리 생성
							    var map = new daum.maps.Map(mapContainer, mapOption);
							    //주소-좌표 변환 객체를 생성
							    var geocoder = new daum.maps.services.Geocoder();
							    //마커를 미리 생성
							    var marker = new daum.maps.Marker({
							        position: new daum.maps.LatLng(37.537187, 127.005476),
							        map: map
							    });
							    
							    daum.maps.event.addListener(map, 'center_changed', function() {        
								    
								    // 지도 중심좌표를 얻어옵니다 
								    var latlng = map.getCenter(); 
								    
								    marker.setPosition(latlng);
								    
								    $('#lat').val(latlng.getLat());
								    $('#lng').val(latlng.getLng());
								    
								});
							
							    function findZipcode() {
							        new daum.Postcode({
							            oncomplete: function(data) {
							                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
							                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							                var fullAddr = ''; // 최종 주소 변수
							                var extraAddr = ''; // 조합형 주소 변수
							                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							                    fullAddr = data.roadAddress;
							                } else { // 사용자가 지번 주소를 선택했을 경우(J)
							                    fullAddr = data.jibunAddress;
							                }
							                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
							                if(data.userSelectedType === 'R'){
							                    //법정동명이 있을 경우 추가한다.
							                    if(data.bname !== ''){
							                        extraAddr += data.bname;
							                    }
							                    // 건물명이 있을 경우 추가한다.
							                    if(data.buildingName !== ''){
							                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
							                    }
							                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
							                }
							                // 우편번호와 주소 정보를 해당 필드에 넣는다.
							                document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
							                document.getElementById('address').value = fullAddr;
							                document.getElementById('sigungu').value = data.sigungu;
							                // 커서를 상세주소 필드로 이동한다.
							                document.getElementById('addressDetail').focus();
							                
							                geocoder.addressSearch(data.address, function(results, status) {
							                    // 정상적으로 검색이 완료됐으면
							                    if (status === daum.maps.services.Status.OK) {
							                        var result = results[0]; //첫번째 결과의 값을 활용
							
							                        // 해당 주소에 대한 좌표를 받아서
							                        var coords = new daum.maps.LatLng(result.y, result.x);
							                        // 지도를 보여준다.
							                        mapContainer.style.display = "block";
							                        $('#map').next().css('display', 'block');
							                        map.relayout();
							                        // 지도 중심을 변경한다.
							                        map.setCenter(coords);
							                        // 마커를 결과값으로 받은 위치로 옮긴다.
							                        marker.setPosition(coords)
							                        $('#lat').val(coords.getLat());
							            		    $('#lng').val(coords.getLng());
							                    }
							                });
							            }
							        }).open();
							    }
							</script>
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
					<tr>
						<td>*접수기간</td>
						<td><input type="text" name="hnStart" id="startDay"
							value="${dateSearchVO.startDay }"> ~ <input type="text"
							name="hnDeadline" id="endDay" value="${dateSearchVO.endDay }">

						</td>
					</tr>
					<tr>
						<td>*접수방법</td>
						<td>
						<label class=""> <input
								type="checkbox" name="hnHows" id="inlineCheckbox1" checked="checked" value="온라인">
								알쓸신JOB 이력서 
						</label><br> 
						<label class="checkbox-inline"> <input
								type="checkbox" id="inlineCheckbox1" name="hnHows" value="홈페이지">
								홈페이지접수 :  
						</label> ${sessionScope.cmMemberVO.cmHomepage }<br>   
						<label class="checkbox-inline"> <input type="checkbox" name="hnHows"
								id="inlineCheckbox1" value="전화"> 전화
						</label> </td> 

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
						<td><label for="cmName" >이름 : </label> 
						<%-- <input type="text" name="cmName" id="cmName" value="${sessionScope.cmMemberVO.cmManager }"> --%>
						${sessionScope.cmMemberVO.cmManager }
						<input type="button" class="btn btn-primary btn-lg" style="margin-left: 50px" value="정보수정">
						
					</tr>
					<tr>
						<td>연락처</td>
						<td><label>휴대폰 : </label> ${sessionScope.cmMemberVO.cmMgrTel } <br> 
						<label>이메일 : </label> ${sessionScope.cmMemberVO.cmEmail }
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
							<td>*공고제목</td>
							<td><input type="text" class="form-control" placeholder="제목"
								id="hnNotiTitle" name="hnNotiTitle"></td>

						</tr>

					</thead>

				</table>
			</div>
			<input type="submit" class="btn btn-primary btn-lg" value="채용공고 등록" />

		</fieldset>
	

	<!-- 전공/학과 모달  -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">전공 상세보기</h4>
				</div>
				<div class="modal-body">
				
					<c:import url="/hire_noti/major.do" />
					
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
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">직급/직책보기</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered">
						<tr>
							<th>직급</th>
							<td>
								<c:import url="/hire_noti/rank.do"/>
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td>
							
								<c:import url="/hire_noti/position.do"/>
								
							</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="savebtn">변경
						사항 저장</button>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
	
	<!-- 직종/직무 모달  -->
	<div class="modal fade" id="occupation_task" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">직종/직무 상세보기</h4>
				</div>
				<div class="modal-body">
				<c:import url="/hire_noti/occupation.do" />
					
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
	
	<!-- 업종 모달 -->
	<div class="modal fade" id="sectors" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">업종 상세보기</h4>
				</div>
				<div class="modal-body">
				
				<c:import url="/hire_noti/sectors.do" />
					
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
	</form>
	<!-- 모달 전체 윈도우 -->
	</div>
	
	<c:import url="../index/footer.jsp" />
</body>
</html>










