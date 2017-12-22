<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="TStopion_div option_flo sectors"
	style="width: 1189px; margin-left: 4em; margin-bottom: 4em; overflow-y: auto;">
	<!-- 경력/나이 부분 시작 -->
	<div class="col-div-30-100">
		<div class="col-div-100-10">
			<h3 class="content_title">업종구분</h3>
		</div>
		<div class="col-div-100-90">
			<div class="col-div-100-100 sectors-choose"
				style="overflow: hidden; background: #f4f4f4;">
				<ul class="col-ul-50-100">
					<li class="001s col-li-for-sectors">서비스업</li>
					<li class="003s col-li-for-sectors">제조화학</li>
					<li class="005s col-li-for-sectors">IT웹통신</li>
					<li class="007s col-li-for-sectors">은행금융업</li>
					<li class="009s col-li-for-sectors">미디어 디자인</li>
					<li class="010s col-li-for-sectors">교육업</li>
				</ul>
				<ul class="col-ul-50-100">
					<li class="002s col-li-for-sectors">판매유통</li>
					<li class="004s col-li-for-sectors">의료제약복지</li>
					<li class="006s col-li-for-sectors">건설업</li>
					<li class="008s col-li-for-sectors">기관협회</li>
					<li class="col-li-for-sectors" style="cursor: auto;"></li>
					<li class="col-li-for-sectors" style="cursor: auto;"></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-div-70-100">
		<div class="col-div-100-10"
			style="border-left: 1px solid #b8b8b8; border-bottom: 1px solid #b8b8b8;">
			<h3 class="content_title">희망업종</h3>
		</div>
		<div class="col-div-100-90">
			<!-- 희망 직족 자세한 옵션선택 부분 서비스-->
			<div class="o1s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==1  }">
						<li class="col-li-4-nb" ><div>
							<label><input type="checkbox" name="SectorsSelectBox" value="${vo.SEC_NAME }">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o2s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==4  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o3s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==3  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o4s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==2  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o5s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==5  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o6s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==6  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o7s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==9  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o8s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==10  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o9s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==8  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<!-- 희망 직족 자세한 옵션선택 부분 -->
			<div class="o10s col-div-100-100 hope-sectors">
				<ul class="col-ul-100-100">
					<c:forEach var="vo" items="${Sectorslist }">
						<c:if test="${vo.SEC_TOP_NO==7  }">
						<li class="col-li-4-nb" value="${vo.SEC_NO }"><div>
							<label><input type="checkbox">${vo.SEC_NAME}</label>
						</div></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--TStopion_div option_flo sectors  -->
<!--경력/나이 부분 끝 -->