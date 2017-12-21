<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo rank"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<!-- 직책부분 시작 -->
	<div class="col-div-20-100" style="padding-top: 2em; width: 160px;">
		<h3 class="content-title">직급/직책</h3>
	</div>
	<div class="col-div-80-100" style="padding-top: 2em; width: 850px">
		<div
			style="float: left; width: 850px; margin-bottom: 3em; padding-left: 3em;">
			<ul class="rankSelectVal">
			<!-- 직책 부분  -->
				<c:forEach var="i" begin="0" end="7" step="1">
					<c:set var="map" value="${Ranklist[i] }"></c:set>
						<li class="col-li-4" style="width: 185px; background:#f4f4f4;">
						<input type="checkbox" value="${map['RANK_NAME'] }" style="display:none;"/>${map['RANK_NAME'] }</li>
				</c:forEach>
				<a class="more-rank" href="#"
					style="display: inline-block; float: left; padding-top: 12px;">더보기</a>
			</ul>
			<ul class="ranks rankSelectVal" style="display: none;">
				<c:forEach var="i" begin="8" end="19" step="1">
					<c:set var="map" value="${Ranklist[i] }"></c:set>
						<li class="col-li-4" style="width: 185px; background:#f4f4f4;">
						<input type="checkbox" value="${map['RANK_NAME'] }" style="display:none;"/>${map['RANK_NAME'] }</li>
					
				</c:forEach>
				<a class="close-rank" href="#"
					style="display: inline-block; float: left; padding-top: 12px;">닫기</a>
			</ul>
		</div>
		<hr>
		<div
			style="float: left; width: 850px; margin-top: 2em; padding-left: 3em;">
			<ul class="positionSelectVal">
				<!-- 직급 부분  -->
				<c:forEach var="i" begin="0" end="7" step="1">
					<c:set var="map" value="${Positionlist[i] }"></c:set>
						<li class="col-li-4" style="width: 185px; background:#f4f4f4;">
						<input type="checkbox" value="${map['POSITION_NAME'] }" style="display:none;"/>${map['POSITION_NAME'] }</li>
				</c:forEach>
				<a class="more-position" href="#"
					style="display: inline-block; float: left; padding-top: 12px;">더보기</a>
			</ul>
			<ul class="position positionSelectVal" style="display: none;">
				<c:forEach var="i" begin="8" end="13" step="1">
						<c:set var="map" value="${Positionlist[i] }"></c:set>
						<li class="col-li-4" style="width: 185px; background:#f4f4f4;">
						<input type="checkbox" value="${map['POSITION_NAME'] }" style="display:none;"/>${map['POSITION_NAME'] }</li>
					</c:forEach>
			
				<a class="close-position" href="#"
					style="display: inline-block; float: right; padding-top: 12px;margin-right:5.5em;">닫기</a>
			</ul>
		</div>
	</div>
</div>
<!--TStopion_div option_flo rank/position  -->
<!-- 직책부분 -->