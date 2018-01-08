<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${!empty message}">REQUIRED_LOGIN</c:if>
<c:if test="${empty message}">
	<colgroup>
		<col width="70%">
		<col width="20%">
		<col width="10%">
	</colgroup>
	<tr>
		<th class="text-center">이력서</th>
		<th class="text-center">최근수정일</th>
		<th class="text-center">보기</th>
	</tr>
	<c:forEach var="resume" items="${list}" varStatus="status">
		<tr>
			<td>
				<div class="radio">
					<label> <input type="radio" name="resumeNo" value="1" <c:if test="${status.first}">checked</c:if>> 
						${resume.resumeTitle}
					</label>
				</div>
			</td>
			<td class="text-center">
				<p class="form-control-static"><fmt:formatDate value="${resume.resumeLastupdate}" pattern="yyyy-mm-dd"/></p>
			</td>
			<td class="text-center">
				<p class="form-control-static">
					<a href="#"
						onclick="window.open('/assj/resume/resumeView.do?resumeNo=${resume.resumeNo}','new','resizable=no, width=1200, height=800');return false">
						[보기] </a>
				<p>
			</td>
		</tr>
	</c:forEach>

</c:if>