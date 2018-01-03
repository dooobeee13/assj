<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-bordered">
	<tr>
		<c:forEach var="vo"  items="${topList}" varStatus="status">
			<c:if test="${status.index < 5}">
				<th>${vo.secName}</th>
			</c:if>
		</c:forEach>
	</tr>
	<tr>
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 1}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" 
								name="sectorList" value="${vo.secNo}">${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 2}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}"
							name="sectorList" value="${vo.secNo}">${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 3}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 4}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 5}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
	</tr>
	<tr>
		<c:forEach var="vo" items="${topList}" varStatus="status">
			<c:if test="${status.index >= 5 }">
				<th>${vo.secName}</th>
			</c:if>
		</c:forEach>
	</tr>
	<tr>
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 6}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 7}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 8}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 9}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.secTopNo == 10}">
					<div class="checkbox sectorsselectDiv">
					<label for="sectors-${vo.secNo}"> <input type="checkbox" id="sectors-${vo.secNo}" name="sectorList"  value="${vo.secNo}">
						${vo.secName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
	</tr>
</table>