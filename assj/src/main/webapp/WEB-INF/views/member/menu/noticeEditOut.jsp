<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<link rel="stylesheet" href="<c:url value='/css/Search-ADMIN.css'/>">
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>" ></script>
<script type="text/javascript">
$(function(){
	$("select option:eq(0)").attr("selected", true);			 
		$('select option:eq(1)').css('color','red');
	$('select option:eq(2)').css('color','blue');
	$('select option:eq(3)').css('color','orange');
	$('select option:eq(4)').css('color','green');	
	
	$('#btDeleteMulti').click(function(){
		//선택한 게시물 삭제
		var len =$('tbody input[type=checkbox]:checked').length;
		if(len==0){
			alert('삭제할 게시물을 먼저 체크하세요');
			return;
		}
		
		$('#frmList').prop('action',
			'<c:url value="/member/menu/deleteMulti.do"/>');
		$('#frmList').submit();			
	});

	$.step = function(idx, currentPage){
		var url = '<c:url value="/member/menu/step2.do"/>?notititleNo=' + idx;
		if (currentPage) {
			url += '&currentPage=' + currentPage;
		}
		
		$.ajax({
			url: url,
			dataType:"xml",
			success :function(res){
				$('.total').html('');
				$('.total').html($(res).find('result').find('html').text());
			}
		}); 
	};
	
	$.step(0);
	
	$('#noticetitleNo').change(function(){
		var idx = $(this).val();
		$.step(idx);
	});
	
	$('#all').on('click', '#chkAll', function(){
		$('tbody input[type=checkbox]').prop('checked', this.checked);
	})
	
});
</script>
<style type="text/css">
	#frame {
	    padding: 30px;
		background-color: #ffff;
	}
	.divSearch{
		text-align:left;
	}
	table th,table{
		text-align:center;
		margin:0 auto;
		border-top:1px bold;
	}
	#size{
		font-size:1.3em;
		vertical-align: middle;
	}
    .align_right{
		float:right;
		margin-right:40px;
		vertical-align: bottom;
	} 
	.divPage {
		margin:0 auto;
		text-align: center;
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<c:import url="../../administrator/inc/adminTop.jsp"/>
	
	<!-- 섹션 부분 -->
	<div class="col-div-100-100" style="margin-left:1em; width:83%; font-size:0.7em;">
		<div class="col-div-100-20">
	<!-- 본문 -->
			<div id="frame">
				<h3><b>공지사항 관리</b></h3>
				<hr>
				<form class="form-inline" name="frmList" id="frmList" method="post">
						<div class="form-group">	
							<label for="noticetitleNo">구분 선택</label>&nbsp;
							<select class="form-control" name="noticetitleNo" id="noticetitleNo">
								<option value="0">전체</option>
								<option value="1">공지</option>
								<option value="2">이벤트</option>
								<option value="3">오픈</option>
								<option value="4">뉴스</option>
							</select>
							<span id="size" class="glyphicon glyphicon-list"></span>
						</div>
						<br><br><br>
						<div class="align_right">
							<a href="/assj/member/menu/noticeWrite.do"><input type="button" class="btn btn-default" value="공고 등록" ></a>&nbsp;
							<input type="button" class="btn btn-default" id="btDeleteMulti" value="선택 삭제" >
						</div><br>
				<div class="total" id="all">			
				</div>
				</form>
			</div>
		</div>
			
	 </div>
</body>
</html>