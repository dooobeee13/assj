<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="TStopion_div option_flo all"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<!-- 상세보기 부분 -->
	<div class="col-div-33-100" style="border-right: 1px solid #b8b8b8;">
		<!-- 경력/나이 및 성별 부분 -->
		<div class="col-div-100-50">
			<div class="col-div-100-20" style="border-bottom: 1px solid #b8b8b8;">
				<h3 class="content_title">경력</h3>
			</div>
			<div class="col-div-100-80">
				<div class="col-div-100-50"
					style="padding-top: 1em; padding-left: 1em; text-align: center;">
					<label><input id="career" class="mini-checkbox" type="checkbox">경력</label> 
					<label><input id="newcomer" class="mini-checkbox" type="checkbox">신입</label>
					 <label for="none"><input id="none" class="mini-checkbox" type="checkbox">무관</label>
				</div>
				<div class="col-div-100-50" style="padding-top: 0.5em; text-align: center;">
					<select class="one-list" id="CareerDayStart">
						<option value="0">선택</option>
						<option value="1">1년 이상</option>
						<option value="2">2년 이상</option>
						<option value="3">3년 이상</option>
						<option value="4">4년 이상</option>
						<option value="5">5년 이상</option>
						<option value="6">6년 이상</option>
						<option value="7">7년 이상</option>
					</select> ~ <select class="one-list" id="CareerDayEnd">
						<option value="0">선택</option>
						<option value="1">1년 이하</option>
						<option value="2">2년 이하</option>
						<option value="3">3년 이하</option>
						<option value="4">4년 이하</option>
						<option value="5">5년 이하</option>
						<option value="6">6년 이하</option>
						<option value="7">7년 이하</option>
					</select>
				</div>
			</div>
		</div>
		<div class="col-div-100-50">
			<div class="col-div-100-20"
				style="border-top: 1px solid #b8b8b8; border-bottom: 1px solid #b8b8b8;">
				<h3 class="content_title">성별 및 나이</h3>
			</div>
			<div class="col-div-100-80">
				<div class="col-div-100-50"
					style="padding-top: 1em; padding-left: 1em; text-align: center;">
					<label ><input id="m" class="mini-checkbox" type="checkbox" value="M">남자</label> 
					<label ><input id="f" class="mini-checkbox" type="checkbox" value="F">여자</label>
				</div>
				<div class="col-div-100-50"
					style="padding-top: 0.5em; text-align: center;">
					<select class="one-list" id="oldStart">
						<option>선택</option>
						<option>20살</option>
						<option>21살</option>
						<option>22살</option>
						<option>23살</option>
						<option>24살</option>
						<option>25살</option>
						<option>26살</option>
					</select> ~ <select class="one-list" id="oldEnd">
						<option>선택</option>
						<option>20살</option>
						<option>21살</option>
						<option>22살</option>
						<option>23살</option>
						<option>24살</option>
						<option>25살</option>
						<option>26살</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<!-- 경력/나이 및 성별 부분 끝-->
	<div class="col-div-33-100" style="border-right: 1px solid #b8b8b8;">
		<div class="col-div-100-10" style="border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">학력</h3>
		</div>
		<div class="col-div-100-20"
			style="text-align: center; padding-top: 1em; padding-left: 1.5em;">
			<input id="domestic" type="checkbox"><label for="domestic">국내</label>
		</div>
		<div class="col-div-100-50"
			style="text-align: center; padding-left: 7.5em;">
			<ul class="col-ul-100-100">
				<li class="col-li-70">대학교 4년</li>
				<li class="col-li-70">대학교 2,3년</li>
				<li class="col-li-70">대학원 석/박사</li>
				<li class="col-li-70">고등학교 이하</li>
			</ul>
		</div>
		<div class="col-div-100-20"
			style="padding-top: 1.5em; padding-left: 1.5em; text-align: center;">
			<input id="mercy" type="checkbox"><label for="mercy">재학·휴학·수료·중퇴·자퇴
				제외</label>
		</div>
	</div>
	<div class="col-div-33-100">
		<div class="col-div-100-10" style="border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">희망근무지역</h3>
		</div>
		<div class="col-div-100-90" style="overflow-y: scroll;">
			<ul class="col-ul-100-100">
				<li class="col-li-70-nb" style="height: 4.2em;">서울</li>
				<li class="col-li-70-nb" style="height: 4.2em;">경기</li>
				<li class="col-li-70-nb" style="height: 4.2em;">광주</li>
				<li class="col-li-70-nb" style="height: 4.1em;">대구</li>
				<li class="col-li-70-nb">대전</li>
				<li class="col-li-70-nb">부산</li>
				<li class="col-li-70-nb">울산</li>
				<li class="col-li-70-nb">인천</li>
				<li class="col-li-70-nb">강원</li>
				<li class="col-li-70-nb">경남</li>
				<li class="col-li-70-nb">경북</li>
				<li class="col-li-70-nb">전남</li>
				<li class="col-li-70-nb">전북</li>
				<li class="col-li-70-nb">충북</li>
				<li class="col-li-70-nb">충남</li>
				<li class="col-li-70-nb">제주</li>
				<li class="col-li-70-nb">세종</li>
				<li class="col-li-70-nb">전국</li>
			</ul>
		</div>
	</div>
</div>
<!-- 상세보기 끝 -->