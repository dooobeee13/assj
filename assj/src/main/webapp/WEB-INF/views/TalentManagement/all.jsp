<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<div class="col-div-100-50 CareerCheckBox"
					style="padding-top: 1em; padding-left: 1em; text-align: center;">
					<label><input name="manCareer" id="career" class="mini-checkbox" type="checkbox" value="경력">경력</label> 
					<label><input name="newcomer" id="newcomer" class="mini-checkbox" type="checkbox" value="신입">신입</label>
					<label><input name="ceo" id="none" class="mini-checkbox" type="checkbox" value="임원/CEO">임원/CEO</label>
				</div>
				<div class="col-div-100-50" style="padding-top: 0.5em; text-align: center;">
					<select class="one-list" id="CareerDayStart">
						<option value="0">전체</option>
						<option value="1">1년 이상</option>
						<option value="2">2년 이상</option>
						<option value="3">3년 이상</option>
						<option value="4">4년 이상</option>
						<option value="5">5년 이상</option>
						<option value="6">6년 이상</option>
						<option value="7">7년 이상</option>
					</select> ~ <select class="one-list" id="CareerDayEnd">
						<option value="0">전체</option>
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
					<label ><input class="mini-checkbox gender-m" type="checkbox" name="Genderm" value="남자">남자</label> 
					<label ><input class="mini-checkbox gender-f" type="checkbox" name="Gender" value="여자">여자</label>
				</div>
				<div class="col-div-100-50"
					style="padding-top: 0.5em; text-align: center;">
					<select class="one-list OldStart">
						<option value="">선택</option>
						<c:forEach var="i" begin="18" end="80" step="1">
					<option value="${i }">${i }살</option>
					</c:forEach>
					</select> ~ <select class="one-list OldEnd">
						<option value="">선택</option>
						<c:forEach var="i" begin="18" end="80" step="1">
					<option value="${i }">${i }살</option>
					</c:forEach>
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
		<div class="col-div-100-10">
		</div>
		<div class="col-div-50 EduCollist"
			style="padding-top: 4em;">
			<ul class="col-ul-100-100" style="height: 60%; text-align: center;">
				<li class="col-li-1 bb-none" style="width: 80%; margin-left: 2.2em; padding:0;" value="1">
					<input type="checkbox" name="Educol" value="대학교졸업(4년)" style="display:none;"/>대학교 4학년</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em; padding:0;" value="2">
					<input type="checkbox" name="Educol" value="대학졸업(2, 3년)" style="display:none;"/>대학(2,3년)</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em; padding:0;" value="3">
					<input type="checkbox" name="Educol" value="석사졸업" style="display:none;"/>대학원(석사)</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em; padding:0;" value="4">
					<input type="checkbox" name="Educol" value="박사졸업" style="display:none;"/>대학원(박사)</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em; padding:0;" value="5">
					<input type="checkbox" name="Educol" value="고등학교 졸업" style="display:none;"/>고등학교</li>
			</ul>
		</div>
	</div>
	<div class="col-div-33-100">
		<div class="col-div-100-10" style="border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">희망근무지역</h3>
		</div>
		<div class="col-div-100-90 AreaSelectLI" style="overflow-y: scroll;">
			<ul class="col-ul-100-100">
				<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==null }">
							<li class="col-li-70-nb"><input type="checkbox" value="${vo.AREA_NAME}" style="display:none;"/>${vo.AREA_NAME }</li>
						</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<!-- 상세보기 끝 -->