<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>    
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>개인/기업회원 가입</title> 
    <!-- Bootstrap -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../../js/bootstrap.min.js"></script>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/css/index.css'/>" />
    
    <script type="text/javascript">
    	$(document).ready(function(){	
    		//개인회원가입,기업회원가입 버튼 클릭시 아래 정보 바뀌기
    		$('#personal').click(function(){
    			$('#PersonMember').show();
    			$('#CompanyMember').hide();
    			$(this).css('background','#f0ad4e');
    			$('#company').css('background','#fff');
    		});
    		$('#company').click(function(){
    			$('#PersonMember').hide();
    			$('#CompanyMember').show();
    			$(this).css('background','#f0ad4e');
    			$('#personal').css('background','#fff');
    		});
    			
    		//유효성 검사
    		$('#psRegister').click(function(){
    			if(!$.validate_userid($('#memId').val())){
    				alert('아이디는 영문자나 숫자만 가능합니다.');
    				$('#memId').focus();
    				return false;
    			}else if($('#memPwd').val()==""||$('#memPwd').val().length<8){
    				alert('비밀번호를 확인하세요.');
    				$('#memPwd').focus();
    				return false;
    			}else if($('#memPwd').val()!=$('#memPwd2').val()){
    				alert('비밀번호가 일치하지 않습니다.');
    				$('#memPwd2').focus();
    				return false;
    			}else if($('#memName').val()==""){
    				alert('이름을 입력하세요.');
    				$('#memName').focus();
    				return false;
    			}else if($('#memPhone2').val()==""||$('#memPhone2').val().length<4){
    				alert('휴대폰 번호를 확인해주세요.');
    				$('#memPhone2').focus();
    				return false;
    			}else if($('#memPhone3').val()==""||$('#memPhone3').val().length<4){
    				alert('휴대폰 번호를 확인해주세요.');
    				$('#memPhone3').focus();
    				return false;
    			}else if($('#memBirth1').val()==""||$('#memBirth1').val().length<4){
    				alert('생년월일을 확인하세요.');
    				$('#memBirth1').focus();
    				return false;
    			}else if($('#memBirth2').val()==""||$('#memBirth2').val().length<2){
    				alert('생년월일을 확인하세요.');
    				$('#memBirth2').focus();
    				return false;
    			}else if($('#memBirth3').val()==""||$('#memBirth3').val().length<2){
    				alert('생년월일을 확인하세요.');
    				$('#memBirth3').focus();
    				return false;
    			}else if(!($('#PsCheckbox2').is(':checked'))){
    				alert('약관에 동의하세요.');
					$('#PsCheckbox2').focus();
    				return false;
    			}else if(!($('#PsCheckbox3').is(':checked'))){
    				alert('약관에 동의하세요.');
    				$('#PsCheckbox3').focus();
    				return false;
    			}
				return true;
    		});	
    		
    		//아이디 정규식으로 받기
    		$.validate_userid=function(userid){
    			var pattern = new RegExp(/^[a-zA-Z0-9]+$/g);
    			return pattern.test(userid);	
    			//true이면 정규식 만족
    			//false이면 에러
    			
    			/*
    			정규식 /^[a-zA-Z0-9]+$/g
    			a에서z 사이의 문자, A~Z사이의 문자, 0에서9사이의 숫자나
    			닫기 대괄호(])위의+기호는 이 패턴이 한 번 또는 그 이상 반복된다는 의미
    			*/
    		}
    		
    		//중복검사 버튼 클릭시 검사창에 뿌려주기
    		$('#dupli').click(function(){
    			var id=$('#memId').val();
    			$('#dupliId').val(id);
    		});
    		
    		//검색버튼 클릭해서 Controller로 넘기기 (ajax)
			$("#search").click(function(e){ 
				if($('#dupliId').val()==null ||$('#dupliId').val()==""){
    				alert('아이디를 입력해주세요');
    				$('#dupliId').focus();
    				return false;
    			}
				
				$.ajax({url: "/assj/member/register/dupli.do?dupliId=" + $('#dupliId').val(), 
			    	 success: function(result){
	        				if (result == "true") {
		        				$('.checkMessage').html('<span class="r">사용 불가능한 아이디입니다</span>');
		        			} else {
		        				$('.checkMessage').html('<span>사용가능한 아이디 입니다</span>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="사용하기"></button>');
		        			}
	    			 }
			    });
				
			});
    		
    		//약관동의
    		$('#PsCheckbox1').change(function(){
    			if (this.checked) {
    				$('#PsChkItem [type=checkbox]').prop('checked', true);
   				} else {
    				$('#PsChkItem [type=checkbox]').prop('checked', false);
   				}
    		});
    		$('#CpCheckbox1').change(function(){
    			if (this.checked) {
    				$('#CpChkItem [type=checkbox]').prop('checked', true);
   				} else {
    				$('#CpChkItem [type=checkbox]').prop('checked', false);
   				}
    		});
    		
    		
    		//기업회원
			$('#cpRegister').click(function(){
				if($('#CM_ID').val()==""){
					alert('아이디를 입력하세요.');
					$('#CM_ID').focus();
					return false;
				}else if($('#CM_PWD1').val()==""){
					alert('비밀번호를 입력하세요.');
					$('#CM_PWD1').focus();
					return false;
				}else if($('#CM_PWD1').val()!=$('#CM_PWD2').val()){
					alert('비밀번호가 일치하지 않습니다.');
					$('#CM_PWD2').focus();
					return false;
				}else if($('#CM_REGNUM').val()==""){
					alert('사업자 등록번호를 입력하세요.');
					$('#CM_REGNUM').focus();
					return false;
				}else if($('#CM_NAME').val()==""){
					alert('회사명을 입력하세요.');
					$('#CM_NAME').focus();
					return false;
				}else if($('#CM_REPRE').val()==""){
					alert('대표자명을 입력하세요.');
					$('#CM_REPRE').focus();
					return false;
				}else if($('#CM_MANAGER').val()==""){
					alert('담당자를 입력하세요.');
					$('#CM_MANAGER').focus();
					return false;
				}else if($('#CM_MGR_TEL2').val()==""||$('#CM_MGR_TEL2').val().length<8){
					alert('담당자 전화번호를 확인하세요.');
					$('#CM_MGR_TEL2').focus();
					return false;
				}else if(!($('#CpCheckbox2').is(':checked'))){
    				alert('약관에 동의하세요.');
    				$('#CpCheckbox2').focus();
    				return false;
    			}else if(!($('#CpCheckbox3').is(':checked'))){
    				alert('약관에 동의하세요.');
    				$('#CpCheckbox3').focus();
    				return false;
    			}			
			});
    		
			
    		
    	});
    	
    </script>
    
    <style type="text/css">
    	.mem_register #btnDiv .btn{
    		width:300px;
    		height:80px;
    		font-size:18px;
    		font-weight:bold;
    	}
    	.mem_register #btnDiv{
    		text-align:center;
    	}
    	.mem_register h1{
    		font-weight:bold;
    	}
    	.mem_register .r,#r{
    		color:red;
    	}
     	.mem_register span{
     		color:blue;
     	}
   		.mem_register #info{
     		font-size:13px;
     	}
     	
 		.mem_register fieldset{
 			width:800px;
 			margin:0 auto;	
 			padding:60px;
 			background-color:#ffff;
 		}
 		.mem_register label{
 			width:112px;
 		}
 		.mem_register div{
 			padding:6px;
 		}
		.mem_register #personal{
			background: #f0ad4e;
			border:1px solid #ccc;
		}
		.mem_register #company{
			background: #fff;
		}
		.mem_register #CompanyMember{
			display:none;
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
  	<c:import url="../../index/top.jsp" />
  	<div class="mem_register">
 	<div id="btnDiv">
   		<button id="personal" type="button" class="btn btn-default btn-lg">개인회원가입버튼</button>
		<button id="company" type="button" class="btn btn-default btn-lg">기업회원가입버튼</button>
   	</div>
    <div class="container">
   		<fieldset id="PersonMember">
		<form role="form" class="form-inline" name="frm" method="post" action="<c:url value='register.do' />">	
	    	<hr>
	    	<h1>개인정보 입력</h1><br>
	    	<span class="r">※ 필수입력정보입니다.</span><br><br>
				<div class="form-group"><span class="r">*</span>
					<label for="memId">아이디</label> 
					<input type="text" class="form-control" maxlength="20" id="memId" name="memId">
					<input type="button" class="form-control" value="중복검사" data-toggle="modal" data-target="#myModal1" id="dupli">
					<span id="info">&nbsp;&nbsp;(영문이나 숫자만 입력 가능합니다)</span>
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="memPwd">비밀번호</label> 
					<input type="password" class="form-control" maxlength="20" id="memPwd" name="memPwd">
					<span id="info">&nbsp;&nbsp;(8자리 이상으로 입력해주세요)</span>
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="memPwd2">비밀번호 재확인</label> 
					<input type="password" class="form-control" maxlength="20" id="memPwd2" name="memPwd2">	
				</div><br><br>
				
				<div class="form-group"><span class="r">*</span>
					<label for="memName">이름</label> 
					<input type="text" class="form-control" maxlength="16" id="memName" name="memName">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="memPhone">휴대폰 번호</label>
					<select class="form-control" id="memPhone1" name="memPhone1" >
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>&nbsp;-
					<input type="text" class="form-control"  size="8" maxlength="4" id="memPhone2" name="memPhone2">&nbsp;
					<input type="text" class="form-control"  size="8" maxlength="4" id="memPhone3" name="memPhone3">
				</div>
				<div class="form-group"><span class="r">*</span>
					<label for="memBirth1">생년월일</label>
					<input type="text" class="form-control" placeholder="(예시 1979)" size="6" maxlength="4" id="memBirth1" name="memBirth1">
					<label for="memBirth2" class="sr-only">월</label>
					<input type="text" class="form-control" placeholder="(01)월" size="3" maxlength="2" id="memBirth2" name="memBirth2">				
					<label for="memBirth3" class="sr-only">일</label>
					<input type="text" class="form-control" placeholder="(01)일" size="3" maxlength="2" id="memBirth3" name="memBirth3">
					
					
				</div>
				<div class="form-group">
					&nbsp;
					<label for="memEmail">이메일</label> 
					<input type="text" class="form-control" size="18" maxlength="20" id="memEmail1" name="memEmail1">&nbsp;@
					<select class="form-control" id="memEmail2" name="memEmail2">
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="daum.net">daum.net</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="etc">직접입력</option>
					</select>&nbsp;
					<input type="text" class="form-control" size="12" maxlength="15" id="memEmail3" name="memEmail3" style="visibility:hidden">
				</div>
				<div class="form-group">
					&nbsp;
					<label for="memZipcode">주소</label> 
					<input type="text" class="form-control" placeholder="우편번호" size="10" id="memZipcode" name="memZipcode">
					<input type="button" class="form-control" value="우편번호 검색" data-toggle="modal" data-target="#myModal2">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="memAddr">상세주소</label> 
					<input type="text" class="form-control" placeholder="주소" size="38" id="memAddr" name="memAddr">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="memDetailAddr">&nbsp;</label> 
					<input type="text" class="form-control" placeholder="상세주소" size="38" id="memDetailAddr" name="memDetailAddr">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="memGender">성별</label> 
					<label class="radio-inline">
					<input type="radio" name="memGender" id="memGender" value="남자" checked> 남자
					</label>
					<label class="radio-inline">
					<input type="radio" name="memGender" id="memGender" value="여자"> 여자
					</label>
				</div>
				<br><br><br><br>
				<hr>
				<h1>약관 동의</h1><br>
    			<span class="r">※ 필수체크사항입니다.</span><br>
	    		<br>
				<p>&nbsp;&nbsp;전체 동의   																<input type="checkbox" id="PsCheckbox1" value="option1"></p><br>
	    		<div id="PsChkItem">
					<span class="r">*&nbsp;</span>개인회원 약관에 동의 <span class="r">(필수)</span>          <input type="checkbox" id="PsCheckbox2" value="option1"><br><br> 
					<span class="r">*&nbsp;</span>개인정보 수집 및 이용에 동의 <span class="r">(필수)</span>    <input type="checkbox" id="PsCheckbox3" value="option1"><br><br> 
					<p>&nbsp;&nbsp;마케팅 정보 수신 동의 - 이메일 (선택)                                        <input type="checkbox" id="PsCheckbox4" value="option1"></p><br>
					<p>&nbsp;&nbsp;마케팅 정보 수신 동의 - SMS/MMS (선택)                                      <input type="checkbox" id="PsCheckbox5" value="option1"></p><br>
					<p>&nbsp;&nbsp;개인정보 제 3자 제공 및 위탁사항 이용약관  </p><br> 
				</div>
					<hr>
				
				<div class="form-group" id="btnDiv">
		   			<button type="submit" class="btn btn-primary btn-lg" id="psRegister">회원가입 완료</button>
				</div>
			</form>
			<input type ="hidden" name="chkId" id="chkId">
		</fieldset>
		
		
		<fieldset id="CompanyMember">
			<form role="form" class="form-inline" name="frm" method="post" action="<c:url value='/member/memWrite.do' />">
	    	<hr>
	    	<h1>기업정보 입력</h1><br>
	    	<span class="r">※ 필수입력정보입니다.</span><br>
	    	<br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmId">아이디</label> 
					<input type="text" class="form-control" id="cmId" name="cmId">
					<input type="button" class="form-control" value="중복검사" data-toggle="modal" data-target="#myModal1">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmPwd">비밀번호</label> 
					<input type="password" class="form-control" id="cmPwd" name="cmPwd">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmPwd2">비밀번호 재확인</label> 
					<input type="password" class="form-control" id="cmPwd2" name="cmPwd2">	
				</div><br><br>
				
				<div class="form-group"><span class="r">*</span>
					<label for="cmRegnum">사업자 등록번호</label> 
					<input type="text" class="form-control" placeholder="사업자 등록번호" id="cmRegnum" name="cmRegnum">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmName">회사명</label> 
					<input type="text" class="form-control" id="cmName" name="cmName">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmRepre">대표자명</label> 
					<input type="text" class="form-control" id="cmRepre" name="cmRepre">
				</div><br><br>
				
				<div class="form-group">
					&nbsp;
					<label for="cmZipcode">주소</label> 
					<input type="text" class="form-control" placeholder="우편번호" size="10" id="cmZipcode" name="cmZipcode">
					<input type="button" class="form-control" value="우편번호 검색" data-toggle="modal" data-target="#myModal2">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="cmAddr">상세주소</label> 
					<input type="text" class="form-control" placeholder="주소" size="38" id="cmAddr" name="cmAddr">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="cmDetailAddr">&nbsp;</label> 
					<input type="text" class="form-control" placeholder="상세주소" size="38" id="cmDetailAddr" name="cmDetailAddr">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmManager">담당자</label> 
					<input type="text" class="form-control" id="cmManager" name="cmManager">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="cmMgrTel">담당자 전화번호</label>
					<select class="form-control" id="cmMgrTel1" name="cmMgrTel1">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>&nbsp;-
					<input type="text" class="form-control" size="8" maxlength="4" id="cmMgrTel2" name="cmMgrTel2">&nbsp;
					<input type="text" class="form-control" size="8" maxlength="4" id="cmMgrTel3" name="cmMgrTel3">&nbsp;
				</div>			
				<div class="form-group">&nbsp;
					<label for="cmEmail">이메일</label> 
					<input type="text" class="form-control" id="cmEmail1" name="cmEmail1">&nbsp;@
					<select class="form-control" id="cmEmail2" name="cmEmail2">
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>daum.net</option>
						<option>hotmail.com</option>
						<option>직접입력</option>
					</select>&nbsp;
					<input type="text" class="form-control" id="cmEmail3" name="cmEmail3">
				</div>
				<div class="form-group">&nbsp;
					<label for="ccName">기업구분</label> 
					<label class="radio-inline">
					<input type="radio" name="ccName" id="optionsRadios1" value="option1" checked> 인재파견
					</label>
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 헤드헌팅
					</label>
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 교육기관
					</label>
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 일반
					</label>
				</div>
				
			
				<br><br><br><br>
				<hr>
				<h1>약관 동의</h1><br>
    			<span class="r">※ 필수체크사항입니다.</span><br>
	    		<br>
				<p>&nbsp;&nbsp;전체 동의   <input type="checkbox" id="CpCheckbox1" value="option1"></p><br>
	    		<div id="CpChkItem">
					<span class="r">*&nbsp;</span>기업회원 약관에 동의 <span class="r">(필수)</span>                 <input type="checkbox" id="CpCheckbox2" value="option1"><br><br> 
					<span class="r">*&nbsp;</span>개인정보 수집 및 이용에 동의 <span class="r">(필수)</span>           <input type="checkbox" id="CpCheckbox3" value="option1"><br><br> 
					<p>&nbsp;&nbsp;마케팅 정보 수신 동의 - 이메일 (선택)                                               <input type="checkbox" id="CpCheckbox4" value="option1"></p><br>
					<p>&nbsp;&nbsp;마케팅 정보 수신 동의 - SMS/MMS (선택)                                            <input type="checkbox" id="CpCheckbox5" value="option1"></p><br>
					<p>&nbsp;&nbsp;개인정보 제 3자 제공 및 위탁사항 이용약관  </p><br> 
				</div>
				<hr>

				<div class="form-group" id="btnDiv">
		   			<button type="submit" class="btn btn-primary btn-lg" id="cpRegister">회원가입 완료</button>
				</div>
			</form>
		</fieldset>
			
			
			<!-- 아이디 중복확인 모달 -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" ariahidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span ariahidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h2 class="modal-title" id="myModalLabel">&nbsp;아이디 중복검사</h2>					
					</div>
					<div class="modal-body">
						<div class="input-group">
							 <span class="input-group-addon"> <span class="glyphicon glyphicon-hand-right"> </span> </span>
						 	 <input type="text" class="form-control" id="dupliId">
							 <span class="input-group-btn"> <button class="btn btn-default" type="submit" id="search">검색</button> </span>
						</div>
					</div>
					<div class="modal-footer" style="text-align:left">
						<div class="checkMessage"></div>
					</div>
				
				</div>
				<!-- 모달 콘텐츠 -->
			</div>
			<!-- 모달 다이얼로그 -->
		</div>
		<!-- 모달 전체 윈도우 -->

		
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
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->
		
		
	</div>
	</div>
	<c:import url="../../index/footer.jsp" />    
</body>
</html>
