<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo career-old"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<!-- 경력/나이 부분 시작 -->
	<div class="col-div-50-100" style="border-right: 1px solid #b8b8b8;">
		<div class="col-div-100-50">
			<div class="col-div-30-100"
				style="padding-top: 60px; text-align: right;">
				<strong class="title_strong" style="margin: 0; text-align: right;">경력</strong>
			</div>
			<div class="col-div-70-100 CareerCheckBox"
				style="padding-top: 60px; padding-left: 9em;">
				<label><input name="manCareer" class="one-checkbox" type="checkbox" value="경력">경력</label> 
				<label><input name="newcomer" class="one-checkbox" type="checkbox" value="신입">신입</label> 
				<label><input name="ceo" class="one-checkbox" type="checkbox" value="임원/CEO">임원/CEO</label>
			</div>
		</div>
		<div class="col-div-100-50">
			<div class="col-div-30-100" style="text-align: right;">
				<strong class="title_strong" style="margin: 0;">총 경력일</strong>
			</div>
			<div class="col-div-70-100" style="padding-left: 6em;">
				<select class="one-list" style="height: 3em; width: 10em;">
					<option>선택</option>
					<option>1년 이상</option>
					<option>2년 이상</option>
					<option>3년 이상</option>
					<option>4년 이상</option>
					<option>5년 이상</option>
					<option>6년 이상</option>
					<option>7년 이상</option>
				</select> ~ <select class="one-list" style="height: 3em; width: 10em;">
					<option>선택</option>
					<option>1년 이하</option>
					<option>2년 이하</option>
					<option>3년 이하</option>
					<option>4년 이하</option>
					<option>5년 이하</option>
					<option>6년 이하</option>
					<option>7년 이하</option>
				</select>
			</div>
		</div>
	</div>
	<div class="col-div-50-100">
		<div class="col-div-100-50">
			<div class="col-div-30-100"
				style="padding-top: 60px; text-align: right;">
				<strong class="title_strong" style="margin: 0; text-align: right;">성별</strong>
			</div>
			<div class="col-div-70-100 Gender"
				style="padding-top: 60px; padding-left: 12em;">
				<label><input id="m" class="one-checkbox gender-m" type="checkbox" name="Genderm" value="남자">남자</label>
				<label><input id="f" class="one-checkbox gender-f" type="checkbox" name="Gender" value="여자">여자</label>
			</div>
		</div>
		<div class="col-div-100-50">
			<div class="col-div-30-100" style="text-align: right;">
				<strong class="title_strong" style="margin: 0;">나이</strong>
			</div>
			<div class="col-div-70-100" style="padding-left: 6em;">
				<select class="one-list OldStart" style="height: 3em; width: 10em;">
					<option>선택</option>
					<c:forEach var="i" begin="18" end="80" step="1">
					<option value="${i }">${i }살</option>
					</c:forEach>
				</select> ~ <select class="one-list OldEnd" style="height: 3em; width: 10em;">
					<option>선택</option>
					<c:forEach var="i" begin="18" end="80" step="1">
					<option value="${i }">${i }살</option>
					</c:forEach>
				</select>
			</div>
		</div>
	</div>
</div>
<!--TStopion_div option_flo car-old  -->
<!--경력/나이 부분 끝 -->