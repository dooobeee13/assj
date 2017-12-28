<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<style>
</style>
<div class="row searchCategory"
	style="position: absolute; z-index: 1; background: #fff; width: 600px">
	<div class="panel panel-default col-md-4 area">
		<div class="panel-heading">지역별</div>
		<div class="panel-body">
			<c:forEach begin="1" end="5">
				<div>서울</div> 
			</c:forEach>
		</div>
	</div>
	<div class="panel panel-default col-md-8 area">
		<div class="panel-body">
			<div class="tabContent">
				<c:forEach begin="1" end="20">
					<div class="col-md-6">ddd</div>
				</c:forEach>
			</div>
		</div>
	</div>
	

</div>