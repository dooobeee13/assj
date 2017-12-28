<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.searchCategory .occu {
		height: 500px;
	}
	
	.searchCategory .tabContent {
		display: none;
		top: 0;
		position: absolute;
	    left: 190px;
	    background: #fff;
	    width: 400px;
	    height: 500px;
	    padding-top: 30px;
	    border-left: 1px solid lightgray;
	    border-top: 2px solid #2e6da4;
	    border-bottom: 2px solid #2e6da4;
	    border-right: 2px solid #2e6da4;
	}
	
	.searchCategory .tabContent li {
		list-style: none;
		height: 30px;
	}
	
	.searchCategory .tab {
		height: 30px;
	}
</style>
<script>
	$(function(){
		$('.tab').hover(function(){
			var id = $(this).data('target');
			$('.tabContent').hide();
			$('#' + id).show();
		}, function(){
			var id = $(this).data('target');
			$('#' + id).hide();
		});
	});
</script>

<div class="row searchCategory"
	style="position: absolute; z-index: 1; background: #fff; width: 200px">
	<div class="occu">
		<div>직업별</div>
		<div class="panel-body">
			<c:set var="topCateogryList" value="${map['topCategory']}" />
			<c:forEach var="vo" items="${topCateogryList}">
				<div class="tab" data-target="tcOccu${vo.occuNo}">
					${vo.occuName}
					<ul class="tabContent" id="tcOccu${vo.occuNo}">
					<%-- <c:forEach begin="1" end="10">
						<li>ddddd</li>				
					</c:forEach> --%>
					
					<c:set var="subKey" value="subCategory-${vo.occuNo}"/>
					<c:forEach var="sub" items="${map[subKey]}">
						<li class="col-md-6">
							${sub.occuName}
						</li>
					</c:forEach>
					</ul>
				</div> 
			</c:forEach>
		</div>
	</div>
	<%-- <div class="panel panel-default col-md-8 occu">
		<div class="panel-heading"> &nbsp; </div>
		<div class="panel-body">
			<div class="tabContent" id="tcOccu1"> 
				<c:forEach var="vo" items="${map['subCategory-1']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu2">
				<c:forEach var="vo" items="${map['subCategory-2']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu3">
				<c:forEach var="vo" items="${map['subCategory-3']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu4">
				<c:forEach var="vo" items="${map['subCategory-4']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu5">
				<c:forEach var="vo" items="${map['subCategory-5']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu6">
				<c:forEach var="vo" items="${map['subCategory-6']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu7">
				<c:forEach var="vo" items="${map['subCategory-7']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu8">
				<c:forEach var="vo" items="${map['subCategory-8']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu9">
				<c:forEach var="vo" items="${map['subCategory-9']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu10">
				<c:forEach var="vo" items="${map['subCategory-10']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu11">
				<c:forEach var="vo" items="${map['subCategory-11']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu12">
				<c:forEach var="vo" items="${map['subCategory-12']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
			<div class="tabContent" id="tcOccu13">
				<c:forEach var="vo" items="${map['subCategory-13']}">
					<div class="col-md-6">
						${vo.occuName}
					</div>
				</c:forEach>
			</div>
		</div>
	</div> --%>
</div>