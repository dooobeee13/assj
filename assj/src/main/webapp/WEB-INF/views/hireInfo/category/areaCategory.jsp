<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script>
	$(function(){
		/* $('form[name=searchForm] input[type=checkbox]').change(function(){
			var id = $(this).attr('id');
			var name = $(this).attr('name');
			var label = $('.category.sub .chklabel, .sCateName .cLi .chklabel').filter('[for='+ id +']');
			if ($(this).prop("checked")) {
				var button = '<button><label for="' + id + '"><span class="item">'+ label.data('name') 
					+'</span></label><span class="ico"></span></button>';
				$('.searchCondition').append(button);
				label.addClass('check');
				
				if (name == 'topAreaList') {
					$('form[name=searchForm] input[type=checkbox]').filter('[data-toparea='+ id +']:checked').trigger('click');
				} else if (name =='areaList') {
					var topArea = $(this).data('toparea');
					$('#' + topArea + ':checked').trigger('click');
				}
			} else {
				$('.searchCondition button').has('label[for='+ id +']').remove();
				label.removeClass('check');
			}
		});
		
		$('.category.top .chklabel').click(function(){
			$(this).closest('.category.top').find('li').removeClass('selected');
			$(this).parent().parent().addClass('selected');
		});
		
		$('.sCateName .step1').click(function(){
			$(this).closest('.sCateName').prev().trigger('click');
			$(this).closest('.sCateName').next().find('a[href="#aTabs-'+ $(this).data('no') +'"] label').trigger('click');
		});  */
		
		/*
		$('input[name=topArea]').change(function(){
			var id = $(this).attr('id');
			if ($(this).prop("checked")) {
				//alert($('.searchCondition button[data-topcategory='+ id +']').length);
				$('.searchCondition button[data-topcategory='+ id +']').trigger('click');
			} 
		});
		
		
		$('.category.sub .chklabel, .sCateName .cLi .chklabel').click(function(){
			var id = $(this).attr('for');
			var topcategory = $(this).data('topcategory');
			if ($('.searchCondition').find('button[data-id='+ id +']').length == 0) {
				$(this).addClass('check');
				$('.searchCondition').append('<button data-id="'+ id +'"'+ (topcategory?'data-topcategory=' + topcategory :'') 
						+'><span class="item">'+ $(this).data('name') +'</span><span class="glyphicon glyphicon-remove"></span></button>');
				if(topcategory) {
					$('.searchCondition button[data-id='+ topcategory +']').trigger('click');
				}
			} else {
				$(this).removeClass('check');
				$('.searchCondition button[data-id='+ id +']').remove();
			}
		});
		*/
		
	})
</script>
	<div class="sCateTitle">
		근무지역<span class="down"></span>
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
						<c:forEach var="vo" items="${topCateogryList}" varStatus="status">
							<li class="col-md-6 <c:if test='${status.first}'>selected</c:if>">
								<a href="#aTabs-${vo.areaNo}"><label class="chklabel" data-top="${vo.areaNo}">${vo.areaName}</label></a>
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
							<c:forEach var="vo" items="${map[subKey]}" varStatus="status">
								<li class="col-md-4">
									<input type="checkbox" class="sc_chk" name=
									<c:if test="${status.first}">"topAreaList"</c:if>
									<c:if test="${!status.first}">"areaList"</c:if>
									value=
									<c:if test="${status.first}">"${top.areaNo}"</c:if>
									<c:if test="${!status.first}">"${vo.areaNo}" </c:if>
									id=
									<c:if test="${status.first}">"area-${top.areaNo}"</c:if>
									<c:if test="${!status.first}">"area-${vo.areaNo}" </c:if>
									
									<c:if test="${!status.first}">data-toparea="area-${top.areaNo}" </c:if>>
									<label class="chklabel" data-top="${top.areaNo}" data-name="${top.areaName}>${vo.areaName}" for=
										<c:if test="${status.first}">"area-${top.areaNo}"</c:if>
										<c:if test="${!status.first}">"area-${vo.areaNo}"</c:if>
										><span>${vo.areaName}</span></label>
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
