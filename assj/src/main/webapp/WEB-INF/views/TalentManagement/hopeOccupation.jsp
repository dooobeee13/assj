<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo occupation"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<!-- 희망직종 -->
	<div class="col-div-30-100">
		<div class="col-div-100-10">
			<h3 class="content_title">직종구분</h3>
		</div>
		<div class="col-div-100-90">
			<div class="col-div-100-100 occupation-choose"
				style="overflow: hidden;">
				<ul class="col-ul-50-100">
					<li class="001 col-li-for-occupation">경영·사무</li>
					<li class="002 col-li-for-occupation">영업·고객상담</li>
					<li class="003 col-li-for-occupation">IT·인터넷</li>
					<li class="004 col-li-for-occupation">디자인</li>
					<li class="005 col-li-for-occupation">서비스</li>
					<li class="006 col-li-for-occupation">전문직</li>
				</ul>
				<ul class="col-ul-50-100">
					<li class="007 col-li-for-occupation">의료</li>
					<li class="008 col-li-for-occupation">생산·제조</li>
					<li class="009 col-li-for-occupation">건설</li>
					<li class="010 col-li-for-occupation">유통·무역</li>
					<li class="011 col-li-for-occupation">미디어</li>
					<li class="012 col-li-for-occupation">교육</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-div-70-100">
		<div class="col-div-100-10"
			style="border-left: 1px solid #b8b8b8; border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">희망직종</h3>
		</div>
		<div class="col-div-100-90">
			<div class="o1 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
				<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==1 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o2 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==2 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o3 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==3 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o4 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==4 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o5 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==5 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o6 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==6 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o7 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==7 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o8 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==8 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o9 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==9 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o10 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==10 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o11 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==11 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o12 col-div-100-100 hope-occupation">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Occulist }">
					<c:if test="${vo.OCCU_TOP_NO==12 }">
						<li class="col-li-4-nb"><label><input class="mini-checkbox"
					type="checkbox" name="OccuSelectBox"  value="${vo.OCCU_NAME }" id="a1-1">${vo.OCCU_NAME }</label></li>
					</c:if>
				</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
		</div>
	</div>
</div>
<!--TStopion_div option_flo car-old  -->
<!--희망직종 부분 끝 -->