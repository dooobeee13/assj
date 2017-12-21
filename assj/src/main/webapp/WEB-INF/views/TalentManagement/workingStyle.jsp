<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo workingStyle"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<div class="col-div-100-70">
		<div class="col-div-20-100"
			style="padding-left: 6em; padding-top: 2em;">
			<h3 class="content_title">근무형태</h3>
		</div>
		<div class="col-div-80-100 workingStyleSelect"
			style="padding-left: 6em; padding-top: 2em; padding-right:2em;">
			<ul class="empTypeselectVal">
			<c:forEach var="map" items="${empTypelist }">
						<li class="col-li-4" style="background:#f4f4f4;">
						<input type="checkbox" value="${map['ET_NAME']}" style="display:none;"/>${map['ET_NAME']}</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div class="col-div-100-30">
		<div class="col-div-20-100"
			style="padding-left: 6em; padding-top: 0.4em;">
			<h3 class="content_title">희망급여</h3>
		</div>
		<div class="col-div-80-100" style="padding-left: 6em;">
			<select id="resumeSalStart" class="one-list">
				<option value="0">전체</option>
				<option value="1400">1400만원 이상</option>
				<option value="1600">1600만원 이상</option>
				<option value="1800">1800만원 이상</option>
				<option value="2000">2000만원 이상</option>
				<option value="3000">3000만원 이상</option>
				<option value="4000">4000만원 이상</option>
				<option value="5000">5000만원 이상</option>
				<option value="6000">6000만원 이상</option>
				<option value="9000">9000만원 이상</option>
			</select> ~ <select id="resumeSalEnd" class="one-list">
				<option value="0">전체</option>
				<option value="1400">1400만원 이하</option>
				<option value="1600">1600만원 이하</option>
				<option value="1800">1800만원 이하</option>
				<option value="2000">2000만원 이하</option>
				<option value="3000">3000만원 이하</option>
				<option value="4000">4000만원 이하</option>
				<option value="5000">5000만원 이하</option>
				<option value="6000">6000만원 이하</option>
				<option value="9000">9000만원 이하</option>
			</select>&nbsp;&nbsp; <input type="checkbox" id="desi"><label
				for="desi" style="vertical-align: super;">면접 후 결정</label>&nbsp; <input
				type="checkbox" id="frole"><label for="frole"
				style="vertical-align: super;">회사 내규에 따름</label>
		</div>
	</div>
</div>
<!--TStopion_div option_flo  -->