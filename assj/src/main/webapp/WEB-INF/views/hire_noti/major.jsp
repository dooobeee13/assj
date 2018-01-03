<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-bordered">
	<tr>
		<c:forEach var="vo"  items="${topList}" varStatus="status">
			<c:if test="${status.index < 4}">
				<th>${vo.majorName}</th>
			</c:if>
		</c:forEach>
	</tr>
	<tr>
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 1}">
					<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList" value="${vo.majorNo}">
						${vo.majorName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>

		<td>		
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 2}">
				<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList"  value="${vo.majorNo}">
						${vo.majorName}
					</label>
				</div>
				</c:if>
		</c:forEach>
		</td>

		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 3}">
				<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList"  value="${vo.majorNo}">
						${vo.majorName}
					</label>
				</div>	
				</c:if>
		</c:forEach>
		</td>

		<td rowspan="3">
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 4}">
				<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList"  value="${vo.majorNo}">
						${vo.majorName}
					</label>
				</div>	
				</c:if>
		</c:forEach>
		</td>
	</tr>
	<tr>
		<c:forEach var="vo" items="${topList}" varStatus="status">
			<c:if test="${status.index >= 4 }">
				<th>${vo.majorName}</th>
			</c:if>
		</c:forEach>
	</tr>
	<tr>
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 5}">
				<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList"  value="${vo.majorNo}">
						${vo.majorName}
					</label>
				</div>	
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 6}">
				<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList"  value="${vo.majorNo}">
						${vo.majorName}
					</label>
				</div>	
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.majorTopNo == 7}">
				<div class="checkbox majorselectDiv">
					<label for="major-${vo.majorNo}"> <input type="checkbox" id="major-${vo.majorNo}" name="majorList"  value="${vo.majorNo}">
						${vo.majorName}
					</label>
				</div>	
				</c:if>
		</c:forEach>
		</td>
	</tr>
</table>