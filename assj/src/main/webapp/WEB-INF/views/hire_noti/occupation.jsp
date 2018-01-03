<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-bordered">
	<tr>
		<c:forEach var="vo"  items="${topList}" varStatus="status">
			<c:if test="${status.index < 7}">
				<th>${vo.occuName}</th>
			</c:if>
		</c:forEach>
	</tr>
	<tr>
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 1}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}">
					 <input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 2}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}"> 
					<input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 3}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}"> 
					<input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 4}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}"> 
					<input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 5}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}"> 
					<input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 6}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}"> 
					<input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
		<td>
		<c:forEach var="vo" items="${subList}">
			<c:if test="${vo.occuTopNo == 7}">
					<div class="checkbox occuselectDiv">
					<label for="occupation-${vo.occuNo}"> 
					<input type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
						${vo.occuName}
					</label>
					</div>
				</c:if>
		</c:forEach>
		</td>
		
	</tr>
	<tr>
		<c:forEach var="vo" items="${topList}" varStatus="status">
			<c:if test="${status.index >= 7 }">
				<th>${vo.occuName}</th>
			</c:if>
		</c:forEach>
	</tr>
	<tr>
		<td>
			<c:forEach var="vo" items="${subList}">
				<c:if test="${vo.occuTopNo == 8}">
					<div class="checkbox occuselectDiv">
						<label for="occupation-${vo.occuNo}"> <input
							type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
							${vo.occuName}
						</label>
					</div>
				</c:if>
			</c:forEach>
		</td>
		
		<td>
			<c:forEach var="vo" items="${subList}">
				<c:if test="${vo.occuTopNo == 9}">
					<div class="checkbox occuselectDiv">
						<label for="occupation-${vo.occuNo}"> <input
							type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
							${vo.occuName}
						</label>
					</div>
				</c:if>
			</c:forEach>
		</td>
		
		<td>
			<c:forEach var="vo" items="${subList}">
				<c:if test="${vo.occuTopNo == 10}">
					<div class="checkbox occuselectDiv">
						<label for="occupation-${vo.occuNo}"> <input
							type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
							${vo.occuName}
						</label>
					</div>
				</c:if>
			</c:forEach>
		</td>
		
		<td>
			<c:forEach var="vo" items="${subList}">
				<c:if test="${vo.occuTopNo == 11}">
					<div class="checkbox occuselectDiv">
						<label for="occupation-${vo.occuNo}"> <input
							type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
							${vo.occuName}
						</label>
					</div>
				</c:if>
			</c:forEach>
		</td>
		
		<td>
			<c:forEach var="vo" items="${subList}">
				<c:if test="${vo.occuTopNo == 12}">
					<div class="checkbox occuselectDiv">
						<label for="occupation-${vo.occuNo}"> <input
							type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
							${vo.occuName}
						</label>
					</div>
				</c:if>
			</c:forEach>
		</td>
		
		<td>
			<c:forEach var="vo" items="${subList}">
				<c:if test="${vo.occuTopNo == 13}">
					<div class="checkbox occuselectDiv">
						<label for="occupation-${vo.occuNo}"> <input
							type="checkbox" id="occupation-${vo.occuNo}" name="occuList" value="${vo.occuNo}">
							${vo.occuName}
						</label>
					</div>
				</c:if>
			</c:forEach>
		</td>
		
	</tr>
</table>