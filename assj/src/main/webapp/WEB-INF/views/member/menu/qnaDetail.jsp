<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Q&A 상세보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
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
<script src="../../js/bootstrap.min.js"></script>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
<style type="text/css">
	.container fieldset{
		margin:0 auto;
		padding:80px;
		background-color:#ffff;
		height: 670px;
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

/* 사이드바 스타일 */
  #sidebar-wrapper {
    /* position:absolute;
    width: 190px;
    height: 63%; */
    background: #ffff;
    overflow-x: hidden;
    overflow-y: auto;
    height: 670px;
  } 

   .sidebar-nav {
   /*  width: 250px;
    margin: 0;
    padding: 0; */
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 0.8em;
    line-height: 2.2em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #7a6666;
  }
  
  .sidebar-nav li a:hover {
    color: #cccc;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  } 
</style>
</head>
<body>
	<c:import url="../../index/top.jsp" />

	<div class="container">
		<div class="row">
		<!-- 사이드바 -->
		<div id="page-wrapper" class="col-md-3">
			<div id="sidebar-wrapper">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h1>
							<b>고객센터</b>
						</h1></li>
					<hr>
					<li><h5>
							<b>무엇을 도와드릴까요?</b>
						</h5></li>
					<li><a href="<c:url value='/member/menu/notice.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>공지사항</a></li>
					<li><a href="<c:url value='/member/menu/qnaBoard.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>Q&A</a></li>
					<li><a href="<c:url value='/member/menu/onenone.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>이메일 문의</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>아이디.비밀번호 찾기</a></li>
				</ul>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h5>
							<b>개인회원서비스</b>
						</h5></li>
					<li><a href="<c:url value='/member/menu/psService.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>개인회원 안내</a></li>
					<li><a href="<c:url value='/member/out/psMemOut.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>개인회원 탈퇴</a></li>
				</ul>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><h5>
							<b>기업회원서비스</b>
						</h5></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span>채용광고 안내</a></li>
					<li><a href="<c:url value='/member/out/cmMemOut.do'/>"><span
							class="glyphicon glyphicon-chevron-right"></span>기업회원 탈퇴</a></li>
				</ul>
			</div>
		</div>
<!-- /사이드바 -->

<!-- 본문 -->
		<div class="col-md-9">

			<fieldset>
			<form role="form" class="form-inline" id="myform" method="post" target="window_delete" action="<c:url value='/member/menu/edit.do'/>">				
				<input type="hidden" name="groupNo" id="groupNo" value="${vo.groupNo}">
				<input type="hidden" name="no" id="no" value="${vo.no}">
				<input type="hidden" name="sortNo" id="sortNo" value="${vo.sortNo}">
				<input type="hidden" name="step" id="step" value="${vo.step}">
				<input type="hidden" name="OriginPwd" id="OriginPwd" value="${vo.pwd}">
				
				<h1>알쓸신JOB Q&A</h1>
				<div class="form-group">
					<div id="date">
						등록일:<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>&nbsp;&nbsp; 조회수:${vo.readCount}
					</div>
					<br>
					<hr>			
					<br>	
					<label for="title">제목</label>&nbsp;&nbsp;  
					<input type="text" class="form-control" id="title" name="title" size="40"
					value="${vo.title}" readonly="readonly">
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<label for="name">작성자</label>&nbsp;&nbsp;   
					<input type="text" class="form-control" name="name" id="name" size="14" 
					value="${vo.name}" readonly="readonly">
				</div>
				<br>
				<div class="form-group">
					<label for="contents">내용</label>&nbsp;&nbsp;  
					<textarea class="form-control" rows="12" cols="75" id="contents" name="contents" readonly="readonly">${vo.content}</textarea>
				</div>
		  </form>
				<br>
				<hr>
				<div id="bottonBtn">
					<a href="<c:url value='/member/menu/edit.do?no=${vo.no}'/>"><button type="button" class="btn btn-default btn-sm" onclick="trans()">수정</button></a>
					<button type="button" class="btn btn-default btn-sm" id="btn_delete" data-toggle="modal" data-target="#myModal1">삭제</button>
					<a href="<c:url value='/member/menu/qnaReply.do?no=${vo.no}'/>"><button type="button" class="btn btn-default btn-sm">답변</button></a>&nbsp;
					<a href="<c:url value='/member/menu/qnaBoard.do'/>"><button type="button" class="btn btn-default btn-sm">목록</button></a>
				</div>
		
			</fieldset>
		</div>
		</div>
		</div>
		<c:import url="../../index/footer.jsp" />
		
		
		<!-- Q&A 삭제확인 -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span>
						<span class="sr-only">Close</span>
					</button>
					<h2 class="modal-title" id="myModalLabel">(Q&A)&nbsp;${vo.no}번 글을 삭제하시겠습니까?</h2>					
				</div>
				<div class="modal-body">
					<p><span class="glyphicon glyphicon-ok-circle"></span>게시글 <span class="red">비밀번호</span>를 입력하신후에 삭제를 진행하실수 있습니다.</p><br>
					<br>
					<table>
						<tr>
							<td><label for="pwd">비밀번호 입력:</label></td>
							<td><input type="password" class="form-control" id="pwd" name="pwd"></td>
						</tr>
						<tr class="align_center">
							<td>
								<br>
							</td>
							<td>
								<span class="red" id="resDiv"></span>
							</td>
						</tr>
						
						<tr class="align_center">
							<td colspan="2"><br><br><input type="button" value="삭제" id="deleteBtn">&nbsp;<input type="button" value="취소" id="cancelBtn"></td>
						</tr>
					</table>
					<br><br>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
	
	
</body>
</html>