<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		경력
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<%-- <c:forEach var="vo" items="${list}">
				<li>${vo.careerName}</li>
			</c:forEach> --%>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-1" name="career" value="">
				<label class="chklabel" data-name="신입" for="career-1"><span>신입</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-2" name="career" value="">
				<label class="chklabel" data-name="1~3년" for="career-2"><span>1~3년</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-3" name="career" value="">
				<label class="chklabel" data-name="4~6년" for="career-3"><span>4~6년</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-4" name="career" value="">
				<label class="chklabel" data-name="7~9년" for="career-4"><span>7~9년</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-5" name="career" value="">
				<label class="chklabel" data-name="10~15년" for="career-5"><span>10~15년</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-6" name="career" value="">
				<label class="chklabel" data-name="16~20년" for="career-6"><span>16~20년</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-7" name="career" value="">
				<label class="chklabel" data-name="경력무관" for="career-7"><span>경력무관</span></label>
			</li>
			<li><span><input class="careerInput" type="text" maxlength="2"> ~ <input class="careerInput" type="text" maxlength="2"> 년</span></li>
		</ul>
	</div>

	
