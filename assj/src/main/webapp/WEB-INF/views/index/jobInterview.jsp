<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.interv .txBx p {
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
	
	.interv .txBx .titBx {
		font-weight: bold;
		font-size: 13px;
		margin-top: 10px;
		margin-bottom: 4px
	}
	
	.interv .txBx .subBx {
		font-size: 12px;
		color: #999
	}
	
	.interv .txBx .subBx .cate {
		font-weight: bold;
	}
</style>
<div class="row interv">
	<c:forEach begin="1" end="8">
		<div class="col-sm-3 col-xs-6">
			<div>
				<img class="img-responsive"
					src="//file1.jobkorea.co.kr/Starter/Interview/2015/09/201582002658_SEU_1.png"
					alt="인포섹(주)">
			</div>
			<div class="txBx">
				<p class="titBx">보안은 IT의 꽃이다</p>
				<p class="subBx">
					<span class="cate">보안</span> <span>인포섹(주)</span>
				</p>
			</div>
		</div>
	</c:forEach>
</div>