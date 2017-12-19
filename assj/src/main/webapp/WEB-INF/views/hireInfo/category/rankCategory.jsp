<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		직급/직책/급여<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<%-- <div class="sCateName thinScroll">
		<ul>
			<c:forEach var="vo" items="${list}">
				<li>${vo.rankName}</li>
			</c:forEach>
		</ul>
	</div> --%>
	
	<div class="detail" style="margin-left: -101%">
		<div class="row" style="padding-left: 15px; padding-right: 15px">
			<div class="col-md-4 category thinScroll sub" style="border-right: 1px solid lightgray">
				<p class="rTitle">직급</p>
				<div>
					<ul>
						<c:forEach var="vo" items="${rankList}">
							<li>
								<input type="checkbox" class="sc_chk" id="rank-${vo.rankNo}"> 
								<label class="chklabel" data-name="직급:${vo.rankName}" for="rank-${vo.rankNo}">
									<span>${vo.rankName}</span>
								</label>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-4 category thinScroll sub" style="border-right: 1px solid lightgray">
				<p class="rTitle">직책</p>
				<div>
					<ul>
						<c:forEach var="vo" items="${positionList}">
							<li>
								<input type="checkbox" class="sc_chk" id="rank-${vo.positionNo}"> 
								<label class="chklabel" data-name="직책:${vo.positionName}" for="position-${vo.positionNo}">
									<span>${vo.positionName}</span>
								</label>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-4 category thinScroll sub">
				<p class="rTitle">연봉</p>
				<div>
					<ul>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-1"> 
							<label class="chklabel" data-name="~2000만원" for="sal-1">
								<span>~ 2000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-2"> 
							<label class="chklabel" data-name="2000~2500만원" for="sal-2">
								<span>2000 ~ 2500만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-3"> 
							<label class="chklabel" data-name="2500~3000만원" for="sal-3">
								<span>2500 ~ 3000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-4"> 
							<label class="chklabel" data-name="3000~4000만원" for="sal-4">
								<span>3000 ~ 4000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-5"> 
							<label class="chklabel" data-name="3000~4000만원" for="sal-5">
								<span>3000 ~ 4000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-6"> 
							<label class="chklabel" data-name="5000만원~" for="sal-6">
								<span>5000만원 ~ </span>
							</label>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
