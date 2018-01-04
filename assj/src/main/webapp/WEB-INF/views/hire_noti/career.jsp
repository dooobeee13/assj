<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="careerSelect">
	
	<label class="radio-inline" for="career0">
		<input type="radio" id="career0"  name="careerNo" checked="checked" value="0">
			경력무관
		</label>
	<c:forEach var="vo" items="${list}">
		<label class="radio-inline" for="career${vo.careerNo}">
		<input type="radio" id="career${vo.careerNo}" name="careerNo" value="${vo.careerNo}">
			${vo.careerName}
				
		</label>
	</c:forEach>
	<!-- <span class="sp11">경력여부</span> <label class="checkbox-inline">
		<input type="checkbox" id="inlineCheckbox1" name="" value="option1">
		신입
	</label> <label class="checkbox-inline"> <input type="checkbox"
		id="inlineCheckbox2" value="option2"> 경력
	</label> <label class="checkbox-inline"> <input type="checkbox"
		id="inlineCheckbox3" value="option3"> 경력무관
	</label> <br> <br> -->
</div>
<div id="careeryear" style="display: none">
	<select id="hnExpyearMin">
		
		<option value="0">선택</option>
		<option value="1">1년</option>
		<option value="2">2년</option>
		<option value="3">3년</option>
		<option value="4">4년</option>
		<option value="5">5년</option>
		<option value="6">6년</option>
		<option value="7">7년</option>
		<option value="8">8년</option>
		<option value="9">9년</option>
		<option value="10">10년</option>
	</select>
	~
	<select id="hnExpyearMax">
		<option value="0">선택</option>
		<option value="1">1년</option>
		<option value="2">2년</option>
		<option value="3">3년</option>
		<option value="4">4년</option>
		<option value="5">5년</option>
		<option value="6">6년</option>
		<option value="7">7년</option>
		<option value="8">8년</option>
		<option value="9">9년</option>
		<option value="10">10년</option>
		<option value="11">11년</option>
		<option value="12">12년</option>
		<option value="13">13년</option>
		<option value="14">14년</option>
		<option value="15">15년</option>
		<option value="16">16년</option>
		<option value="17">17년</option>
	</select>
</div>
<script>
	$('.careerSelect label').change(function(){
		var id = $(this).attr('for');
		if (id == 'career2') {
			$('#careeryear').show();
		} else {
			$('#careeryear').hide();
			$('#hnExpyearMin').val('');
			$('#hnExpyearMax').val('');
			//초기화
		}
	});
</script>