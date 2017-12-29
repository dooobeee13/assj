<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo education"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<div class="div-li-padding"
		style="height: 100%; width: 20%; float: left; background: #f4f4f4;">
		<ul class="col-ul-100-100">
			<li class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
				href="#" id="edu_sch">최종학력/학교</a></li>
			<li class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
				href="#" id="major_sch">전공계열/학과</a></li>
		</ul>
	</div>
	<div class="major_02 col-div-80">
		<div class="col-div-100-100">
			<div class="col-div-100-70"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Edulist }">
							<li class="col-li-4-br"><label><input
							class="mini-checkbox" type="checkbox" name="EduSelectBox" value="${vo.MAJOR_NAME }">${vo.MAJOR_NAME }</label></li>
					</c:forEach>
				</ul>
			</div>
			<div class="col-div-100-30"
				style="border: 1px solid #b8b8b8; border-bottom: none; padding-top: 1.5em; text-align: center;">
				<strong class="strong">학점</strong><input class="one-text"
					type="text">&nbsp;&nbsp;<input class="one-button"
					type="button" value="추가">
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="major_01 col-div-80" style="padding:0;">
		<div class="col-div-30 EduCollist"
			style="border-left: 1px solid #b8b8b8; border-right: 1px solid #b8b8b8; padding-top: 4em;">
			<ul class="col-ul-100-100" style="height: 60%; text-align: center;">
				<li class="col-li-1 bb-none" style="width: 80%; margin-left: 2.2em;" value="1">
					<input type="checkbox" name="Educol" value="대학교 4학년" style="display:none;"/>대학교 4학년</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em;" value="2">
					<input type="checkbox" name="Educol" value="대학교(2,3년)" style="display:none;"/>대학교(2,3년)</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em;" value="3">
					<input type="checkbox" name="Educol" value="대학원(석/박사)" style="display:none;"/>대학원(석/박사)</li>
				<li class="col-li-1 bt-none" style="width: 80%; margin-left: 2.2em;" value="4">
					<input type="checkbox" name="Educol" value="고등학교" style="display:none;"/>고등학교</li>
				<li class="col-li-1" style="border: none; padding-left: 1em; background:none;">
					<label style="font-size: 1em;"><input type="checkbox"
						style="vertical-align: sub; display: inline-block;">재학·휴학·수료·중퇴·자퇴
						제외</label>
				</li>
			</ul>
		</div>
		<div class="col-div-70">
			<div class="col-div-100-50" style="height: 35%;">
				<div class="col-div-30"
					style="width: 20%; text-align: left; padding-left: 2em;">
					<strong style="line-height: 107px">학교명</strong>
				</div>
				<div class="col-div-70"
					style="line-height: 107px; text-align: center; width: 80%;">
					<select class="one-list">
						<option>대학교(4년)</option>
						<option>대학교(2,3년)</option>
						<option>대학원(석/박사)</option>
						<option>고등학교</option>
						<option>전체</option>
					</select> <input class="one-text" type="text"> <input
						class="one-button search-button" type="button" value="추가">
				</div>
			</div>
			<div class="col-div-100-50">
				<div class="col-div-30"
					style="width: 20%; padding-top: 1.5em; text-align: left; padding-left: 2em;">
					<strong>자주 찾는 학교</strong>
				</div>
				<div class="col-div-70 EduColDetaillist"
					style="padding-right: 3em; text-align: center; width: 80%;">
					<ul class="col-ul-1">
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="서울대학교" style="display:none;"/>서울대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="연세대학교" style="display:none;"/>연세대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="고려대학교" style="display:none;"/>고려대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="서강대학교" style="display:none;"/>서강대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="한양대학교" style="display:none;"/>한양대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="이화여자대학교" style="display:none;"/>이화여자대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="KAIST" style="display:none;"/>KAIST</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="포항공과대학교" style="display:none;"/>포항공과대학교</li>
						<li class="col-li-3" style="cursor: pointer;"><input type="checkbox" name="EduColDetail" value="성균관대학교" style="display:none;"/>성균관대학교</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
</div>
<!--TStopion_div option_flo education -->