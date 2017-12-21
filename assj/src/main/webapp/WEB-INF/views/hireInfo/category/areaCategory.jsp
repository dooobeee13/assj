<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script>
	$(function(){
		$('.category.top .chklabel').click(function(){
			$('.category.top li').removeClass('selected');
			$(this).parent().parent().addClass('selected');
		});
		
		$('.category.sub .chklabel, .sCateName .cLi .chklabel').click(function(){
			var id = $(this).attr('for');
			if ($('.searchCondition').find('button[data-id='+ id +']').length == 0) {
				$(this).addClass('check');
				$('.searchCondition').append('<button data-id="'+ id +'"><span class="item">'+ $(this).data('name') +'</span><span class="glyphicon glyphicon-remove"></span></button>');
			} else {
				$(this).removeClass('check');
				$('#' + id).trigger('click');
				$('.searchCondition button[data-id='+ id +']').remove();
			}
		});
		
		$('.sCateName .step1').click(function(){
			$(this).closest('.sCateName').prev().trigger('click');
			$(this).closest('.sCateName').next().find('a[href="#aTabs-'+ $(this).data('no') +'"] label').trigger('click');
		});
	})
</script>
	<div class="sCateTitle">
		근무지역<span class="glyphicon glyphicon-chevron-down"></span>
	</div>
	<div class="sCateName thinScroll">
		<ul>
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}">
				<li class="step1" data-no="${vo.areaNo}">${vo.areaName}</li>
			</c:forEach>
		</ul>
	</div>

	<div class="detail" style="margin-left: -101%">
		<div class="row tab">
			<div class="col-md-4">
				<div class="category thinScroll top">
					<ul>
						<c:forEach var="vo" items="${topCateogryList}">
							<li class="col-md-6">
								<%-- <input type="checkbox" class="sc_chk" id="area_step1_${vo.areaNo}"> --%>
								<a href="#aTabs-${vo.areaNo}"><label class="chklabel" <%-- for="area_step1_${vo.areaNo}" --%>>${vo.areaName}</label></a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-8">
				<div class="category thinScroll sub">
					<c:forEach var="top" items="${topCateogryList}">
						<c:set var="subKey" value="subCategory-${top.areaNo}"/>
						<ul id="aTabs-${top.areaNo}">
							<c:forEach var="vo" items="${map[subKey]}">
								<li class="col-md-4">
									<input type="checkbox" class="sc_chk" name="area" value="${vo.areaNo}" id="area-${vo.areaNo}">
									<label class="chklabel" data-name="${top.areaName}>${vo.areaName}" for="area-${vo.areaNo}"><span>${vo.areaName}</span></label>
								</li>
							</c:forEach>
						</ul>
					</c:forEach>
				</div>
			</div>
		</div>
		<script>
			/* $('.tab').tabs({active: 100}); */
		</script>
	</div>
