<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	$(document).ready(function(){
 		$('#cancelBtn').click(function(){
 			$('#myModal1').modal('hide');	
 		});
 		
 		$('#deleteBtn').click(function(){
 			var pwd = $('#pwd').val();
 			if(pwd==""){
 				$('#resDiv').html(  '( 비밀번호를 입력하세요 )');
 				$('#pwd').focus();
 			} else {
 				$.ajax({url: "/assj/member/menu/qnaOut.do?no="+$('#no').val() + "&groupNo="+$('#groupNo').val() +"&step="+$('#step').val() + "&pwd=" + pwd, 
			    	 	type: 'post',
 						success: function(result){
 							if (result=="true") {			
	        					location.href="<c:url value='/member/menu/qnaBoard.do'/>" 
		        			} else {
		        				$('#resDiv').html("비밀번호가 틀렸습니다");
		        			}
	    			 }
			    });
 			}
 			
 		});
 		
 		
 		$('#myModal1').on('hide.bs.modal', function (e) {
			$('#myModal1 .redDiv').html("");
			$('#myModal1 #pwd').val("");
		});
 	});

</script>
<style type="text/css">	
	.container fieldset{
		width:70%;
		padding:80px;
		background-color:#ffff;
	}
	.container .form-group{
		margin:10px;
	}
	.container #contents{
		vertical-align:top;
	}
	.container #btnDiv{
		text-align:center;
	}
	.container #date{
		float:right;
	}
	#bottonBtn{
		text-align:center;
	}
	.red{
		color:red;
	}
	.align_center{
		text-align: center;
	}
	.modal table{
		width:70%;
	}
	.modal p{
		font-size:0.9em;
	}
	.modal {
	        text-align: center;
	}
		 
	@media screen and (min-width: 768px) { 
        .modal:before {
             display: inline-block;
             vertical-align: middle;
             content: " ";
             height: 100%;
        }
	}
	 
	.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
	}
	
	.Advertising{
		position: relative;
		width: 100%;
		height: 20%;
		margin:10px;
		float: right;
		box-sizing: border-box;
		background:#FBFFFF;
		box-shadow: 2px 2px 2px #b8b8b8;
		border-radius: 12px 12px 0 0;
	}
	
	.Advertising-div{
		position: absolute;
		top: 30px;
		right: 10px;		
		padding:0;
		margin:0 auto;
		width:22%;
		height:100%;
		box-sizing: border-box;
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
		<c:import url="../../administrator/inc/adminTop.jsp"/>
		
		<!-- 섹션 부분 -->
		<div class="col-div-80-100" style="margin-left:1em; width:83%; font-size:0.7em;">
			<div class="col-div-100-20">
			<div class="container">
			<fieldset>
			<form role="form" class="form-inline" id="myform" method="post" target="window_delete" action="<c:url value='/member/menu/edit.do'/>">				
				<input type="hidden" name="groupNo" id="groupNo" value="${vo.groupNo}">
				<input type="hidden" name="no" id="no" value="${vo.no}">
				<input type="hidden" name="sortNo" id="sortNo" value="${vo.sortNo}">
				<input type="hidden" name="step" id="step" value="${vo.step}">
				<input type="hidden" name="OriginPwd" id="OriginPwd" value="${vo.pwd}">
				
				<h1>Q&A게시판 상세보기</h1>
				<div class="form-group">
					<div id="date">
						등록일:<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>&nbsp;&nbsp; 조회수:${vo.readCount}
					</div>
					<br>
					<hr>			
					<br>	
					<label for="title">제목</label>&nbsp;&nbsp;  
					<input type="text" class="form-control" id="title" name="title" size="35"
					value="${vo.title}" readonly="readonly">
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<label for="name">작성자</label>&nbsp;&nbsp;   
					<input type="text" class="form-control" name="name" id="name" size="12" 
					value="${vo.name}" readonly="readonly">
				</div>
				<br>
				<div class="form-group">
					<label for="contents">내용</label>&nbsp;&nbsp;  
					<textarea class="form-control" rows="12" cols="78" id="contents" name="contents" readonly="readonly">${vo.content}</textarea>
				</div>
		  </form>
				<br>
				<hr>
				<div id="bottonBtn">
					<a href="<c:url value='/member/menu/adminQnaReply.do?no=${vo.no}'/>"><button type="button" class="btn btn-default btn-sm" style="background-color:#607D8B; color:#ffff">답변</button></a>&nbsp;
					<a href="<c:url value='/member/menu/adminQna.do'/>"><button type="button" class="btn btn-default btn-sm">목록</button></a>
				</div>
		
			</fieldset>
			</div>
			</div>
		</div>
			<div class="Advertising-div">	
				<!-- 메인 화면 통계부분 처리 -->
				<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 회원</h2>
						</div>
						
						<div class="col-div-35-80" style="padding-top:1em;">
							<img alt="" src="<c:url value='/icon/visitorimg.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>총 회원 수 : </span><strong>10,223명</strong></li>
								<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>오늘 가입자 수 : </span><strong>56명</strong></li>
							</ul>
						</div>
					</div>
					<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 이력서</h2>
						</div>
						<div class="col-div-35-80" style="padding-top:1em;">
							<img alt="" src="<c:url value='/icon/curriculum.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>총 이력서 : </span><strong>4,658 장</strong></li>
								<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>새로 등록된 이력서 : </span><strong>56장</strong></li>
							</ul>
						</div>
					</div>
					<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 1:1 문의 현황</h2>
						</div>
						<div class="col-div-35-80" style="padding-top:2.5em;">
							<img alt="" src="<c:url value='/icon/QNA.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>오늘의 총 문의 : </span><strong>120개 </strong></li>
								<li style="border-left:1.5px solid #b8b8b8;"><span>새로운 문의 : </span><strong>36개 </strong></li>
								<li style="border-left:1.5px solid #b8b8b8;"><span>기다리는 문의 : </span><strong>14개</strong></li>
							</ul>
						</div>
					</div>
					<div class="Advertising">
						<div class="col-div-100-20 divMainbox">
							<h2 class="divMainbox-title" style="padding-left:1em;">&#149; 공고</h2>
						</div>
						<div class="col-div-35-80" style="padding-top:1em;">
							<img alt="" src="<c:url value='/icon/user.png'/>">
						</div>
						<div class="col-div-65-80" style="padding-top:2em;">
							<ul>
								<li style="border-left:1.5px solid #b8b8b8;"><span>총 공고 수 : </span><strong>1,400 개</strong></li>
								<li style="border-left:1.5px solid #b8b8b8; padding-top:0.6em;"><span>새로 등록된 공고 : </span><strong>14 개</strong></li>
							</ul>
						</div>
					</div>
				</div>
		
</body>
</html>