<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="careerSelect">
	<span class="sp11">경력여부</span>
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
	<input type="text" id="hnExpyearMin" name="hnExpyearMin"> 
	<input type="text" id="hnExpyearMax" name="hnExpyearMax">
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