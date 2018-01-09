<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="TStopion_div option_flo area"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<div style="height: 100%; width: 20%; float: left;">
		<div class="col-div-100-10" style="border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">지역</h3>
		</div>
		<div class="col-div-100-90 div-li-padding area-select"
			style="overflow-y: scroll">
			<ul class="col-ul-100-100" >
				<li id="area-1" class="col-li-1 bt-bl-br-none"
					style="height: 3.3em;"><a href="#">서울</a></li>
				<li id="area-2" class="col-li-1 bt-bl-br-none"
					style="height: 3.3em;"><a href="#">경기</a></li>
				<li id="area-3" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">인천</a></li>
				<li id="area-4" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">부산</a></li>
				<li id="area-5" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">대구</a></li>
				<li id="area-6" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">광주</a></li>
				<li id="area-7" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">대전</a></li>
				<li id="area-8" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">울산</a></li>
				<li id="area-9" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">세종</a></li>
				<li id="area-10" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">강원</a></li>
				<li id="area-11" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">경남</a></li>
				<li id="area-12" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">경북</a></li>
				<li id="area-13" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">전남</a></li>
				<li id="area-14" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">전북</a></li>
				<li id="area-15" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">충남</a></li>
				<li id="area-16" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">충북</a></li>
				<li id="area-17" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">제주</a></li>
				<li id="area-18" class="col-li-1 bt-bl-br-none" style="height: 3.3em;"><a
					href="#">전국</a></li>
			</ul>
		</div>
	</div>
	<div class="area-1-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==1 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->

	<div class="area-2-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==2 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-3-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==3 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-4-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==4 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-5-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==5 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-6-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==6 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-7-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==7 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-8-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==8 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-9-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==9 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-10-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==10 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-11-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==11 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-12-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==12 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-13-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==13 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-14-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==14 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-15-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==15 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-16-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==16 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-17-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==17 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<!-- 희망 직족 자세한 옵션선택 부분 -->
	<div class="area-18-detail col-div-80 areaSelectVal">
		<div class="col-div-100-100">
			<div class="col-div-100-100"
				style="text-align: left; overflow-y: scroll; border-left: 1px solid #b8b8b8;">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Arealist }">
						<c:if test="${vo.AREA_TOP_NO==18 && !fn:contains(vo.AREA_NAME,'전체') }">
							<li class="col-li-4-nb"><label><input class="mini-checkbox"
						type="checkbox" name="AreaSelectBox"  value="${vo.AREA_NAME }" id="a1-1">${vo.AREA_NAME }</label></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	
	
	
</div>
<!--TStopion_div option_flo 지역별 끝 -->