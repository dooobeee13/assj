<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		직급/직책/급여<span class="down"></span>
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
								<input type="checkbox" class="sc_chk" id="rank-${vo.rankNo}" name="rankList" value="${vo.rankNo}"> 
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
								<input type="checkbox" class="sc_chk" id="position-${vo.positionNo}" name="postionList" value="${vo.positionNo}"> 
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
						<li style="padding-left: 4px">
							<span> 
								<select id="salSelectMin" name="hnSalStart" style="height: 30px;">
									<option value="0">선택</option>
									<c:forEach var="i" begin="1400" end="4000" step="200">
										<option value="${i}">${i}만원 이상</option>
									</c:forEach>
									<c:forEach var="i" begin="5000" end="9000" step="1000">
										<option value="${i}">${i}만원 이상</option>
									</c:forEach>
								</select> ~ 
								<select id="salSelectMax" name="hnSalEnd" style="height: 30px;">
									<option value="0">선택</option>
									<c:forEach var="i" begin="1400" end="4000" step="200">
										<option value="${i}">${i}만원 이하</option>
									</c:forEach>
									<c:forEach var="i" begin="5000" end="9000" step="1000">
										<option value="${i}">${i}만원 이하</option>
									</c:forEach>
								</select>
							</span>
							<script>
								$(function(){
									$('#salSelectMin, #salSelectMax').change(function(){
										var min = parseInt($('#salSelectMin').val());
										var max = parseInt($('#salSelectMax').val());
										if (min!=0 && max!=0 && min>max) {
											alert('연봉 범위를 다시 확인해 주세요');
											$(this).val(0);
											min = parseInt($('#salSelectMin').val());
											max = parseInt($('#salSelectMax').val());
										} 
										
										if (min == 0 && max == 0) {
											$('.searchCondition button').has('span.salText').remove();
											return;
										}
										
										var minStr = min!=0 ? min + '만' : '';
										var maxStr = max!=0 ? max + '만' : '';
										
										var btn = $('.searchCondition').find('button span.salText');
										if (btn.length != 0) {
											btn.text('연봉 ' + minStr + '~' + maxStr);
										} else {
											var button = '<button><span class="salText item">연봉 '+ minStr + '~' + maxStr 
												+'</span><span class="ico"></span></button>';
											$('.searchCondition').append(button);
										}
									});
									
									$('.searchCondition').on('click', 'button .salText', function(){
										$(this).parent().remove();
										$('#salSelectMin, #salSelectMax').val(0);
									}); 
								});
							</script>
						</li>
						
	
						<!-- <li>
							<input type="checkbox" class="sc_chk" id="sal-1" name="sal" value=""> 
							<label class="chklabel" data-name="~2000만원" for="sal-1">
								<span>~ 2000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-2" name="sal" value=""> 
							<label class="chklabel" data-name="2000~2500만원" for="sal-2">
								<span>2000 ~ 2500만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-3" name="sal" value=""> 
							<label class="chklabel" data-name="2500~3000만원" for="sal-3">
								<span>2500 ~ 3000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-4" name="sal" value=""> 
							<label class="chklabel" data-name="3000~4000만원" for="sal-4">
								<span>3000 ~ 4000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-5" name="sal" value=""> 
							<label class="chklabel" data-name="3000~4000만원" for="sal-5">
								<span>3000 ~ 4000만원</span>
							</label>
						</li>
						<li>
							<input type="checkbox" class="sc_chk" id="sal-6" name="sal" value=""> 
							<label class="chklabel" data-name="5000만원~" for="sal-6">
								<span>5000만원 ~ </span>
							</label>
						</li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
