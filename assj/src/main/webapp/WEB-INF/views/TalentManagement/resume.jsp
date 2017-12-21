<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<table style="width:100%; height:90%; float:left;">
				<thead>
					<tr style="height:50px;">
						<th style="width:5%; background:#f4f4f4; text-align:center;"></th>
						<th style="width:25%; background:#f4f4f4; text-align:center;">이름</th>
						<th style="width:55%; background:#f4f4f4; text-align:center;">이력서 요약</th>
						<th style="width:15%; background:#f4f4f4; text-align:center;">업데이트일</th>
					</tr>
				</thead>
				<tbody class="resume_body">
				<%-- <c:forEach var="vo" items="${Resumelist }">	
						<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">${vo.RESUME_NAME }</strong><br>
							<span>(<b>${vo.RESUME_GENDER } </b><b><fmt:formatDate value="${vo.RESUME_BIRTH }" pattern="yyyy"/></b>년)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">${vo.RESUME_CAREER_LIST }경력부분</span>
							<span class="career_exper_titles">${vo.RESUME_TITLE }</span>
							<p class="career_edu_title" style="margin-top:8px; margin-bottom:8px;">당산대학교 님들과(셀렉해야됌)</p>
							<p class="career_and_hope" style="margin-top:8px; margin-bottom:8px;"><a href="#">자격증 부분 </a><span> | </span><span>
							<c:if test="${!empty vo.RESUME_HOPE_SALARY }">
								${ vo.RESUME_HOPE_SALARY }
							</c:if>
							<c:if test="${empty vo.RESUME_HOPE_SALARY }">
								면접 후 결정 
							</c:if>
							
							</span> | <span>${vo.AREA_NAME }</span></p><p style="margin-top:8px; margin-bottom:8px; color:#b8b8b8;">${vo.OCCU_NAME } ${vo.SEC_NAME }</p>
						</td>
						<td style="text-align:center;">업데이트 일자(미구현)</td>
					</tr>
				</c:forEach> --%>
					<!-- <tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">유이령</strong><br>
							<span>(여 1993년, 25세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">정채연</strong><br>
							<span>(여 1997년, 20세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr> -->
				</tbody>
			</table>