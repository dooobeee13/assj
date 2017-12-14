<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>    
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>개인회원 수정2</title> 
    <!-- Bootstrap -->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	h1{
    		font-weight:bold;
    	}
    	span{
     		color:blue;
     	}
     	.r{
    		color:red;
    	}
    	.container{
    		width:800px;
    	}
     	fieldset{
 			width:800px;
 			margin:0 auto;	
 		}
 		table{
 			margin:0 auto;	
 		}
 		td{
 			padding:10px;
 		}
 		#imgTd{
 			vertical-align:top;
 		}
 		#btnDiv .btn{
    		width:300px;
    		height:80px;
    		font-size:18px;
    		font-weight:bold;
    	}
    	#btnDiv{
    		text-align:center;
    	}
    	#rtMenu{
    		float:right;
    	}
    	.well img{
    		width:100%;
    	}
    	.modal-footer{
    		text-align:left;
    	}
    </style>
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
    	<h1>개인정보 수정</h1>
    	<br>
		<hr>
    	<br><br><br>
    	<fieldset>
    		<form role="form" class="form-inline">
   			<table>
    			<tr>
    				<td rowspan="8" width=170px; id="imgTd">
						    <a href="#" class="thumbnail">
						      <img src="../images/rose.jpg" alt="puppy">
						    </a>
						    
					</td>
	    			<td width=140px;>
	    			<span class="r">* </span>
	    			<label for="birth">생년월일</label></td>
					<td>	
						<input type="text" class="form-control" placeholder="(예시 1979)" size="6" maxlength="4">
						<label for="birth1" class="sr-only">월</label>
						<input type="text" class="form-control" placeholder="월" size="3" maxlength="2">
						<label for="birth2" class="sr-only">일</label>
						<input type="text" class="form-control" placeholder="일" size="3" maxlength="2">
					</td>				
				</tr>
				<tr>
					<td>
					<span class="r">*</span>
					<label for="email">휴대폰 번호</label>
					</td>
					<td>
					<select class="form-control">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>019</option>
					</select>&nbsp;-
					<input type="text" class="form-control" placeholder="휴대폰 번호'-'없이 입력" size="16" maxlength="8">&nbsp;
					</td>
				</tr>
				<tr>
					<td>
					&nbsp;
					<label for="email">성별</label>
					</td> 
					<td>
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 남자
					</label>
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 여자
					</label>
					</td>
				</tr>
				<tr>
					<td>
					&nbsp;
					<label for="email">이메일</label></td>
					<td> 
					<input type="text" class="form-control" size="12" maxlength="15">&nbsp;@
					<select class="form-control">
						<option>naver.com</option>
						<option>hanmail.com</option>
						<option>nate.com</option>
						<option>lycos.net</option>
						<option>직접입력</option>
					</select>&nbsp;
					<input type="text" class="form-control" size="12" maxlength="15">
					</td>
				</tr>
				<tr>
					<td>
					&nbsp;
					<label for="email">주소</label></td>
					<td> 
					<input type="text" class="form-control" placeholder="우편번호" size="10">
					<input type="button" class="form-control" value="우편번호 검색" data-toggle="modal" data-target="#myModal2">
					</td>
				</tr>
				<tr>
					<td>
					&nbsp;
					<label for="email">상세주소</label> </td>
					<td>
					<input type="text" class="form-control" size="30" placeholder="주소" ><br>
					</td>	
				</tr>
				<tr>
					<td>
						<label for="email">&nbsp;</label>
					</td>
					<td>
						<input type="text" class="form-control" size="30" placeholder="상세주소">
					</td>
				</tr>
				<tr>
					<td>
					&nbsp;
					<label for="email">프로필사진 수정</label> </td>
					<td>
					<input type="button" class="form-control" value="사진수정" data-toggle="modal" data-target="#myModal3">
					</td>	
				</tr>
			</table>
			<br>
			<hr>
    		</form>
    		<div class="form-group" id="btnDiv">
		   			<button type="button" class="btn btn-primary btn-lg" >수정완료</button>
			</div>
    	</fieldset>
    	<br><br>
				
				
		<!-- 우편번호 검색 모달 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h2 class="modal-title" id="myModalLabel">&nbsp;우편번호 검색</h2>
					<div class="input-group">
					     <span class="input-group-addon"> <span class="glyphicon glyphicon-envelope"> </span> </span>
					     <input type="text" class="form-control" placeholder="예)판교역로 235, 분당 주공,삼평동 681">
					     <span class="input-group-btn"> <button class="btn btn-default" type="button">검색</button> </span>
					</div>
				</div>
				<div class="modal-body">
				 	<h3>tip</h3>
		   			<p>아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>
					
					<p>도로명 + 건물번호<br>
					<span>예) 판교역로 235,  제주 첨단로 242<br></span>
					지역명(동/리) + 번지<br>
					<span>예) 삼평동 681,  제주 영평동 2181<br></span>
					지역명(동/리) + 건물명(아파트명)<br>
					<span>예) 분당 주공,  연수동 주공3차<br></span>
					사서함명 + 번호<br>
					<span>예) 분당우체국사서함 1~100<br></span></p>
				</div>
				<div class="modal-footer">
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
		
		
	<!-- 프로필 사진수정 모달 -->
		<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" ariahidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h2 class="modal-title" id="myModalLabel">&nbsp;사진 올리기</h2><br>
					<b>&nbsp;밝고 뚜렷한 표정과 깔끔한 의상의 사진을 정해진 크기로 올려주시면 가장 좋습니다.</b><br>
						<span>&nbsp;단,핸드폰사진,캠사진,스티커사진,흐릿한 사진 등은 피해주세요!</span>
				</div>
				<div class="modal-body">
				 	<div class="well well-lg">
				 		<p>[Before:원본 사진]&nbsp;<span class="glyphicon glyphicon-picture"></span><span id="rtMenu">[After:이력서용 사진]</span></p>
				 		<img src="../images/프로필 변경.png" alt="프로필변경">
				 		<br><br>
				 		<input type="file" class="form-control">
				 		<br>
				 		<button type="button" class="btn btn-default btn-block">사진 등록하기</button>
				 	</div>
				</div>
				<div class="modal-footer">
					<div class="well well-lg">
						<p>1.[찾아보기] 를 클릭, 등록할 사진을 선택한 후,<br>
						&nbsp;&nbsp;&nbsp;이력서 및 회원정보에 첨부할 영역을 마우스로 드래그하여 선택해 주십시오.<br>
						&nbsp;&nbsp;&nbsp;<span class="r">(사진 파일은 10MB 미만의 JPG, GIF 파일만 업로드가 가능합니다)</span><br>
						2.	이력서용 사진 칸에 원하는 사진 영역 선택이 완료되면<br>
						&nbsp;&nbsp;&nbsp;<span class="r">[사진 등록하기]를 클릭</span>해주십시오.<br>
						3.	사진을 새로 등록 또는 변경하면 작성한 이력서에서도 사진이 변경됩니다.<br>
						&nbsp;&nbsp;&nbsp;<span class="r">(이력서 권장 사진 크기는 100*140 픽셀입니다.)</span></p>
						<br>
					</div>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
	
	
    </div>    
</body>
</html>
    