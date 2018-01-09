<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<style>
	.navCategory .list-group-item {
		padding: 15px 20px;
	}
</style>
<div class="navCategory">
	<a href="/assj/hire_noti/hire1.do" class="btn btn-primary btn-lg btn-block" style="margin-bottom: 10px">
		<span class="glyphicon glyphicon-list-alt"></span> &nbsp; 공고 등록하기
	</a>
	<ul class="list-group">
		<li class="list-group-item"><a href="<c:url value='/hnmanage.do'/>">전체공고(${total})</a></li>
		<li class="list-group-item"><a href="<c:url value='/hnmanage.do?type=inProg'/>">└ 진행중 공고(${inProg})</a></li>
		<li class="list-group-item"><a href="<c:url value='/hnmanage.do?type=wait'/>">└ 대기중 공고(${wait})</a></li>
		<li class="list-group-item"><a href="<c:url value='/hnmanage.do?type=deadline'/>">└ 마감된 공고(${deadline})</a></li>
		<li class="list-group-item"><a href="<c:url value='/applicantManage.do'/>">지원자관리</a></li>
	</ul>
</div>