<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <jsp:useBean id="toDay" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이력서 상세보기</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
<link href="//www.saraminimage.co.kr/cssutf8/sub_global.css" rel="stylesheet" type="text/css">
<link href="//www.saraminimage.co.kr/css/ui/reset-fonts.css" rel="stylesheet" type="text/css" media="screen, print">
<link href="//www.saraminimage.co.kr/cssutf8/resume-20170816.css" rel="stylesheet" type="text/css" media="screen, print">
<script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/prototype-1.6.0.3.js"></script>
<script type="text/javascript" src="//www.saraminimage.co.kr/js/libs/pngHack.mini.js"></script>

<script type="text/javascript">
/* 	$(function(){
		var birth = ${map['RESUME_BIRTH']};
		alert(birth);
	}); */
</script>
<style type="text/css">
.divide-view-item{margin-top: 20px;}
</style>
</head>

<body>

<div class="container" >

<div id="resume_title_view" class="tabDiv">
    <a name="title_view_anchor"></a>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;word-wrap:break-word;word-break:break-all;">
        <tr><td class="res-title-view-new " valign="middle">${map['RESUME_TITLE']}</td></tr>
    </table>
    
</div>
<!-- //이력서 제목 -->

<!-- 지원분야/희망연봉 -->
<div id="resume_apply_dept_view" class="tabDiv" >
    <div class="item-header">
    </div>
			<table class="tbl-view" border="0" cellspacing="0"
				summary="지원분야/희망연봉" width="100%">
				<colgroup>
					<col width="118">
					<col width="320">
					<col width="70">
					<col>
				</colgroup>
				<tr>
					<th>고용형태</th>
					<td><label> ${map['ET_NAME']} </label></td>

					<th>희망연봉</th>
					<td>${map['RESUME_SAL_START']}만원 ~ ${map['RESUME_SAL_END']}만원</td>
				</tr>
			</table>
		</div>

<fmt:formatDate value="${toDay }" var="today" pattern="yyyy-MM-dd"/>
<fmt:formatDate value="${map['RESUME_BIRTH']}" var="rBirth" pattern="yyyy-MM-dd"/>
<!-- //지원분야/희망연봉 -->﻿
<div id="basic_view" class="divide-view-item" style="">
    <a name="basic_view_anchor"></a>
        <div class="item-header res-item" style="text-align:left">
        <h3><span class="item-title">기본정보</span></h3>
            </div>
        <div class="item-contents">
        <div id="basic_profile" class="mb10">
					<table class="tbl-view" border="0" cellspacing="0" summary="기본정보"
						width="100%">
						<colgroup>
							<col width="118">
							<col width="320">
							<col width="70">
							<col>
						</colgroup>
						<tr>
							<th>이름</th>
							<td>${map['RESUME_NAME']}</td>
							<th>나이/성별</th>
							<td><fmt:formatDate value="${map['RESUME_BIRTH']}" pattern="YYYY"/>년(${age}세)<span class="res-cut">&nbsp;|&nbsp;</span>${map['RESUME_GENDER']}
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td colspan="3">${map['RESUME_ADDR']}&nbsp;${map['RESUME_DETAILADDR']}</td>
						</tr>
						<tr>
							<th>휴대폰</th>
							<td colspan="3"><span id="cell_area"> ${map['RESUME_PHONE']} </span>
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td colspan="3">${map['RESUME_EMAIL']}</td>
						</tr>
						<tr>
							<th>구직상태</th>
							<td colspan="3">${map['RESUME_STATUS']}</td>
						</tr>
					</table>
				</div>
       

            <div id="desire_work_only_view" class="mb10">
					<table class="tbl-view" border="0" cellspacing="0" summary="기본정보"
						width="100%">
						<colgroup>
							<col width="129px">
							<col width="129px">
							<col width="129px">
							<col width="129px">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th height="35" class="center-td">학력사항</th>
								<th class="center-td">경력사항</th>
								<th class="center-td">고용형태</th>

								<th class="center-td">희망연봉</th>
								<th class="center-td">희망근무지</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="center-td"><strong>${map['EDU_NAME']}</strong></td>
								<td class="center-td"><strong>${map['CAREER_NAME'] }</strong></td>
								<td class="center-td"><strong>${map['ET_NAME']}</strong></td>
								<td class="center-td txt_view"><strong>${map['RESUME_SAL_START']}만원 ~ ${map['RESUME_SAL_END']}만원</strong>
								</td>
								<td class="center-td"><strong>${map['AREA_NAME']}</strong></td>
							</tr>
						</tbody>
					</table>
				</div>
                
                                    

    <div id="basic-option" class="mb10">
					<table class="tbl-view" border="0" cellspacing="0" summary="기본정보"
						width="100%">
						<colgroup>
							<col width="118px">
							<col width="239">
							<col width="118px">
							<col width="*">
						</colgroup>


						<tr>
							<th>결혼여부</th>
							<td class="center-td">${map['RESUME_MARRIED']}</td>
							<th>취미/특기</th>
							<td class="center-td">${map['RESUME_HOBBY']} / ${map['RESUME_SPECIALTY']}</td>
						</tr>

						<tr>
							<th>병역대상</th>
							<td colspan="3" class="break-word">
							<c:if test="${map['RESUME_MIL_TARGET']}=='군필'">
								[ ${map['RESUME_MIL_TARGET']} ] ${map['RESUME_MIL_START']} - ${map['RESUME_MIL_END']}
								<span class="res-cut"> | </span>
								 ${map['RESUME_MIL_DIVISION']}
								<span class="res-cut"> | </span>
								${map['RESUME_MIL_CLASS']} 
								<span class="res-cut"> | </span>
								${map['RESUME_MIL_REASON']}							
							</c:if>
						<%-- 	<c:if test="${map['RESUME_MIL_TARGET']=='면제' || map['RESUME_MIL_TARGET']=='미필'}">
								[ ${map['RESUME_MIL_TARGET']} ]
								<span class="res-cut"> | </span>
								${map['RESUME_MIL_UNFINISH']}		
							</c:if>
							<c:if test="${map['RESUME_MIL_TARGET'] == '대상아님'}">
								[ ${map['RESUME_MIL_TARGET']} ]
							</c:if> --%>
						</tr>
					</table>
				</div>
    
    
    
        </div>
    </div>
<div id="school_view" class="divide-view-item">
    <a name="school_view_anchor"></a>
    <div class="item-header res-item">
        <h3>
            <span class="item-title">학력사항</span> 
            <span class="res-cut"> | </span> 
            <span class="title-person">최종학력 - <b>${map['EDU_NAME'] }</b></span>
        </h3>
            </div>
    <div class="item-contents">
        <div id="basic_school_view" class="mb10">
					<!-- 초등학교, 중학교, 고입, 중입 검정고시 -->
					<table class="tbl-view" border="0" cellspacing="0" summary="학력사항"
						width="100%">
						<colgroup>
							<col width="25%">
							<col width="10%">
							<col width="*%">
							<col width="10%">
							<col>
						</colgroup>
						<tr>
							<th height="35">재학기간</th>
							<th>구분</th>
							<th>학교명</th>
							<th>전공</th>
							<th>학점</th>
						</tr>
						<c:if test="${!empty shList}">
							<c:forEach var="shVO" items="${shList }">
								<tr>
									<td>${shVO.shAyear} ~ ${shVO.shGyear}</td>
									<td class="center-td">${shVO.shGwhether }</td>
									<td class="break-word">${shVO.shSname}</td>
									<td style="word-wrap: break-word; word-break: break-all;">
										${shVO.shMajordetail}</td>
									<td class="center-td">${shVO.shGrade }</td>
								</tr>
								
							</c:forEach>
						</c:if>
						
					</table>
				</div>
       
    </div>
</div>

<div id="school_view" class="divide-view-item">
    <a name="school_view_anchor"></a>
    <div class="item-header res-item">
        <h3>
            <span class="item-title">교육사항</span>
        </h3>
            </div>
    <div class="item-contents">
        <div id="basic_school_view" class="mb10">
					<table class="tbl-view" border="0" cellspacing="0" summary="학력사항"
						width="100%">
						<colgroup>
							<col width="25%">
							<col width="40%">
							<col width="25%">
							<col width="10%">
						</colgroup>
						<tr>
							<th height="35">교육기간</th>
							<th>교육명</th>
							<th>교육기관</th>
							<th>수료 여부</th>
						</tr>
						<c:if test="${!empty ehList}">
							<c:forEach var="ehVO" items="${ehList }">
								<tr>
									<td>${ehVO.ehAdmission} ~ ${ehVO.ehCompletion}</td>
									<td class="center-td">${ehVO.ehCsname }</td>
									<td class="break-word">${ehVO.ehInstitution}</td>
									<td style="word-wrap: break-word; word-break: break-all;">
										${ehVO.ehConfirm }</td>
								</tr>
								
							</c:forEach>
						</c:if>
					</table>
				</div>
       
    </div>
</div>


		<div id="activity_view" class="divide-view-item">
			<a name="activity_view_anchor"></a>
			<div class="item-header res-item">
				<h3 style="position: relative">
					<span class="item-title">대외활동</span>
				</h3>
			</div>
			<c:if test="${empty actList}">
		
			</c:if>
			<c:if test="${!empty actList}">
				<div class="item-contents">
					<div class="mb10">
						<table class="tbl-view" border="0" cellspacing="0" summary="교육이수내역"
							width="100%">							
							<tr>
								<th>상세내용</th>
							</tr>	
							<c:forEach var="actVO" items="${actList }">
							<tr>
								<td class="center-td">${actVO.actHistory}</td>
							</tr>
							</c:forEach>						
						
						</table>
					</div>	
				</div>
			
			</c:if>
		</div>

		<div id="license_view" class="divide-view-item">
			<a name="license_view_anchor"></a>
			<div class="item-header res-item">
				<h3>
					<span class="item-title">자격증/어학/수상 내역</span>
				</h3>
			</div>
			<c:if test="${empty cerList }">			
			</c:if>
			<c:if test="${!empty cerList }">	
				<div class="item-contents">
					<div class="mb10">
						<table class="tbl-view" border="0" cellspacing="0"
							summary="자격증/어학/수상 내역" width="100%">
							<colgroup>
								<col width="15%">
								<col width="*%">
								<col width="20%">
								<col width="15%">
								<col width="10%">
							</colgroup>
							<thead>
								<tr>
									<th height="35" class="center-td">항목</th>
									<th class="center-td">자격증/어학/수상</th>
									<th class="center-td">발행처/기관/언어구분</th>
									<th class="center-td">합격구분/점수/등급</th>
									<th class="center-td">취득일/수상일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cerVO" items="${cerList }">
								<tr>
									<td class="center-td">${cerVO.cerCategory }</td>
									<td class="center-td">${cerVO.cerName }</td>
									<td class="center-td">${cerVO.cerPublisher }</td>
									<td class="center-td">${cerVO.cerAcceptScore }</td>
									<td class="center-td">${cerVO.cerAcquiDate }</td>
								</tr>
								</c:forEach>
							</tbody>
	
						</table>
					</div>
	
	
	
				</div>
					
			</c:if>
		</div>


		<div id="skill_view" class="divide-view-item">
			<a name="skill_view_anchor"></a>
			<div class="item-header res-item">
				<h3>
					<span class="item-title">보유기술 및 능력</span>
				</h3>
			</div>
			<c:if test="${empty skillList }"></c:if>
			<c:if test="${!empty skillList }">
				<div class="item-contents">
					<table class="tbl-view" border="0" cellspacing="0"
						summary="보유기술 및 능력" width="100%">
						<colgroup>
							<col width="140">
							<col width="140">
							<col>
						</colgroup>
						<tr>
							<th height="35" class="center-td">보유능력</th>
							<th class="center-td">수준</th>
							<th class="center-td">상세내용</th>
						</tr>
						<c:forEach var="skillVO" items="${skillList }">
						<tr>
							<td class="center-td">${skillVO.skillAbility }</td>
							<td class="center-td">${skillVO.skillLevel }</td>
							<td class="center-td">${skillVO.skillDetail }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			
			</c:if>
			
		</div>


		<div id="standard_introduction_view" class="divide-view-item"
			style="page-break-before: always;">
			<div class="item-header res-item">
				<h3>
					<span class="item-title">자기소개서</span>
				</h3>
			</div>
			<c:if test="${empty introList }">
			
			</c:if>
			<c:if test="${!empty introList }">
				<div class="item-contents">
					<table class="tbl-view" border="0" cellspacing="0" summary="자기소개서"
						width="100%">
						<c:forEach var="introVO" items="${introList }">
							<tr>
							<th height="35"><b>${introVO.introTitle }</b></th>
							</tr>
							<tr>
							<td class="career break-word" valign="top" height="100%">
							<span id="introduce_contents"> 
							${introVO.introContent }
							</span>
							</td>
							</tr>
						</c:forEach>						
					</table>
				</div>
			
			</c:if>
			
		</div>



		<div id="attach_port_files_view" class="divide-view-item">
			<a name="attach_port_files_view_anchor"></a>
			<div class="item-header res-item">
				<h3>
					<span class="item-title">포트폴리오</span> <span class="res-cut">
						<!-- | </span> <span class="title-person">총 <b>1</b>건 -->
					</span>
				</h3>



			</div>
			<c:if test="${empty portList }"></c:if>
			
			<c:if test="${!empty portList }">
			<div class="item-contents">
					<table class="tbl-view" border="0" cellspacing="0" summary="자기소개서"
						width="100%">
					<colgroup>
						<col width="20%">
						<col width="20%">
						<col width="*%">						
					</colgroup>
					<thead>
							<tr>
								<th height="35" class="center-td">첨부 파일</th>
								<th class="center-td">파일 크기</th>
								<th class="center-td">상세 설명</th>								
							</tr>
						</thead>
						<tbody>
						<c:forEach var="portVO" items="${portList }">
						<fmt:parseNumber var="pfSize" value="${portVO.portFilesize * (1/1024) }" integerOnly="true"/>
							<tr>
								<td class="center-td">${portVO.portOrifname }</td>
								<td class="center-td">${pfSize} KB</td>
								<td class="center-td">${portVO.portIntro}</td>
								
								
							</tr>
						
						</c:forEach>
						</tbody>

					
				</table>




			</div>
			
			</c:if>
			
		</div>
		<!-- //저장된 순서대로 항목별 렌더 -->
            
            <!-- footer -->
            <div id="resume_footer">
                <div class="sign">
                    위의 모든 내용은 사실과 다름없음을 확인합니다.<br /> 
                    작성일 :<b> 
                    <fmt:formatDate value="${map['RESUME_LASTUPDATE'] }" pattern="yyyy년 MM월 dd일"/>
                    
                    </b>
                     / 작성자 : <b>${map['RESUME_NAME'] }</b>
                </div>
                <div class="legal_notice_box">
                    위조된 문서를 등록하여 취업활동에 이용시 법적 책임을 지게 될 수 있습니다.<br>
                    (주)알쓸신JOB은 구직자가 등록한 문서에 대해 보증하거나 별도의 책임을 지지 않으며<br>
                    첨부된 문서를 신뢰하여 발생한 법적 분쟁에 책임을 지지 않습니다. (개인회원약관 제15조 관련)<br>
                    또한 구인/구직 목적 외 목적으로 이용 시 이력서 삭제 혹은 비공개 조치될 수 있습니다.
                </div>
            </div>        
            <!-- //footer -->
            
                    </div>
    </div>

</div>

</body>
</html>