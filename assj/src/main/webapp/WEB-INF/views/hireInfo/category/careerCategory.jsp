<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<div class="sCateTitle">
		경력
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-1" name="careerList" value="1">
				<label class="chklabel" data-name="신입" for="career-1"><span>신입</span></label>
			</li>
			<li class="cLi">
				<input type="checkbox" class="sc_chk" id="career-2" name="careerList" value="2">
				<label class="chklabel" data-name="경력" for="career-2"><span>경력</span></label>
			</li>
			
			<!-- <li class="cLi">
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
			<li><span><input class="careerInput" type="text" maxlength="2"> ~ <input class="careerInput" type="text" maxlength="2"> 년</span></li> -->
		</ul>
		<div style="padding-left: 17px;">
				<span>
					<select id="cSelectMin" name="hnExpyearMin" style="height: 30px">
						<option value="0">선택</option>
						<c:forEach var="i" begin="1" end="20">
							<option value="${i}">${i}년 이상</option>
						</c:forEach>
					</select>
					~
					<select id="cSelectMax" name="hnExpyearMax" style="height: 30px">
						<option value="0">선택</option>
						<c:forEach var="i" begin="1" end="20">
							<option value="${i}">${i}년 이하</option>
						</c:forEach>
					</select>
				</span>
				<script>
					$(function(){
						$('#cSelectMin, #cSelectMax').change(function(){
							var min = parseInt($('#cSelectMin').val());
							var max = parseInt($('#cSelectMax').val());
							if (min!=0 && max!=0 && min>max) {
								alert('경력 기간을 다시 확인해 주세요');
								$(this).val(0);
								min = parseInt($('#cSelectMin').val());
								max = parseInt($('#cSelectMax').val());
							} 
							if (min == 0 && max == 0) {
								$('.searchCondition button').has('span.careerText').remove();
								return;
							}
							var minStr = min!=0 ? min + '년' : '';
							var maxStr = max!=0 ? max + '년' : '';
							
							var btn = $('.searchCondition').find('button span.careerText');
							if (btn.length != 0) {
								btn.text('경력 ' + minStr + '~' + maxStr);
							} else {
								var button = '<button><span class="careerText item">경력 '+ minStr + '~' + maxStr 
									+'</span><span class="ico"></span></button>';
								$('.searchCondition').append(button);
							}
						});
						
						$('.searchCondition').on('click', 'button .careerText', function(){
							$(this).parent().remove();
							$('#cSelectMin, #cSelectMax').val(0);
						}); 
					});
				</script>
			</div>
	</div>

	
