<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		기업규모/고용형태<span class="down"></span>
	</div>
	<%-- <div class="sCateName thinScroll">
		<ul>
			<c:forEach var="vo" items="${list}">
				<li>${vo.csName}</li>
			</c:forEach>
		</ul>
	</div> --%>
	
	<div class="detail" style="margin-left: -303%">
		<div class="row" style="margin: 0">
		<div class="col-md-6 category thinScroll sub" style="border-right: 1px solid lightgray; background: #fff">
			<p class="rTitle">기업규모</p>
			<div>
				<ul>
					<c:forEach var="vo" items="${csList}">
						<li class="col-md-6">
							<input type="checkbox" class="sc_chk" id="cs-${vo.csNo}" name="csList" value="${vo.csNo}"> 
							<label class="chklabel" data-name="${vo.csName}" for="cs-${vo.csNo}">
								<span>${vo.csName}</span>
							</label>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="col-md-6 category thinScroll sub" style="border-right: 1px solid lightgray; background: #fff">
			<p class="rTitle">고용형태</p>
			<div>
				<ul>
					<c:forEach var="vo" items="${etList}">
						<li class="col-md-6">
							<input type="checkbox" class="sc_chk" id="et-${vo.etNo}" name="etList" value="${vo.etNo}"> 
							<label class="chklabel" data-name="직책:${vo.etName}" for="et-${vo.etNo}">
								<span>${vo.etName}</span>
							</label>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</div>
	</div>
