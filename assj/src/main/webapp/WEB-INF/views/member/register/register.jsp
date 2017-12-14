<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){
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
			
    		$('#personal').click(function(){
    			$('#PersonMember').show();
    			$('#CompanyMember').hide();
    			$(this).css('background','#ccc');
    			$('#company').css('background','#fff');
    		});
    		
    		$('#company').click(function(){
    			$('#PersonMember').hide();
    			$('#CompanyMember').show();
    			$(this).css('background','#ccc');
    			$('#personal').css('background','#fff');
    		});
    		
    		$('#psRegister').click(function(){
    			if($('#MEM_ID').val()==""){
    				alert('아이디를 입력하세요.');
    				$('#MEM_ID').focus();
    				return false;
    			}else if($('#MEM_PWD1').val()==""){
    				alert('비밀번호를 입력하세요.');
    				$('#MEM_PWD1').focus();
    				return false;
    			}else if($('#MEM_PWD1').val()!=$('#MEM_PWD2').val()){
    				alert('비밀번호가 일치하지 않습니다.');
    				$('#MEM_PWD2').focus();
    				return false;
    			}else if($('#MEM_NAME').val()==""){
    				alert('이름을 입력하세요.');
    				$('#MEM_NAME').focus();
    				return false;
    			}else if($('#MEM_PHONE2').val()==""||$('#MEM_PHONE2').val().length<8){
    				alert('휴대폰 번호를 확인해주세요.');
    				$('#MEM_PHONE2').focus();
    				return false;
    			}else if($('#MEM_BIRTH1').val()==""||$('#MEM_BIRTH1').val().length<4){
    				alert('생년월일을 확인하세요.');
    				$('#MEM_BIRTH1').focus();
    				return false;
    			}else if($('#MEM_BIRTH2').val()==""||$('#MEM_BIRTH2').val().length<2){
    				alert('생년월일을 확인하세요.');
    				$('#MEM_BIRTH2').focus();
    				return false;
    			}else if($('#MEM_BIRTH3').val()==""||$('#MEM_BIRTH3').val().length<2){
    				alert('생년월일을 확인하세요.');
    				$('#MEM_BIRTH3').focus();
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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	#btnDiv .btn{
    		width:300px;
    		height:80px;
    		font-size:18px;
    		font-weight:bold;
    	}
    	#btnDiv{
    		text-align:center;
    	}
    	h1{
    		font-weight:bold;
    	}
    	.r{
    		color:red;
    	}
     	span{
     		color:blue;
     	}
 		fieldset{
 			width:800px;
 			margin:0 auto;	
 			padding:20px;
 		}
 		label{
 			width:112px;
 		}
 		div{
 			padding:6px;
 		}
		#personal{
			background: #ddd;
			border:1px solid #ccc;
		}
		#company{
			background: #fff;
		}
		#CompanyMember{
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
  	<br>
 	<div id="btnDiv">
   		<button id="personal" type="button" class="btn btn-default btn-lg">개인회원가입버튼</button>
		<button id="company" type="button" class="btn btn-default btn-lg">기업회원가입버튼</button>
   	</div>
    <div class="container">
   		<fieldset id="PersonMember">
		<form role="form" class="form-inline" name="frm" method="post" action="<c:url value='/member/memWrite.do' />">	
	    	<hr>
	    	<h1>개인정보 입력</h1><br>
	    	<span class="r">※ 필수입력정보입니다.</span><br><br>
				<div class="form-group"><span class="r">*</span>
					<label for="MEM_ID">아이디</label> 
					<input type="text" class="form-control" maxlength="20" id="MEM_ID" name="MEM_ID">
					<input type="button" class="form-control" value="중복검사" data-toggle="modal" data-target="#myModal1">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="MEM_PWD1">비밀번호</label> 
					<input type="password" class="form-control" maxlength="20" id="MEM_PWD1" name="MEM_PWD1">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="MEM_PWD2">비밀번호 재확인</label> 
					<input type="password" class="form-control" maxlength="20" id="MEM_PWD2" name="MEM_PWD2">	
				</div><br><br>
				
				<div class="form-group"><span class="r">*</span>
					<label for="MEM_NAME">이름</label> 
					<input type="text" class="form-control" maxlength="16" id="MEM_NAME" name="MEM_NAME">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="MEM_PHONE">휴대폰 번호</label>
					<select class="form-control" id="MEM_PHONE1" name="MEM_PHONE1" >
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>&nbsp;-
					<input type="text" class="form-control" placeholder="휴대폰 번호'-'없이 입력" size="16" maxlength="8" id="MEM_PHONE2" name="MEM_PHONE2">&nbsp;
				</div>
				<div class="form-group"><span class="r">*</span>
					<label for="MEM_BIRTH">생년월일</label>
					<input type="text" class="form-control" placeholder="(예시 1979)" size="6" maxlength="4" id="MEM_BIRTH1" name="MEM_BIRTH1">
					<label for="birth1" class="sr-only">월</label>
					<input type="text" class="form-control" placeholder="(01)월" size="3" maxlength="2" id="MEM_BIRTH2" name="MEM_BIRTH2">				
					<label for="birth2" class="sr-only">일</label>
					<input type="text" class="form-control" placeholder="(01)일" size="3" maxlength="2" id="MEM_BIRTH3" name="MEM_BIRTH3">
					
					
				</div>
				<div class="form-group">
					&nbsp;
					<label for="MEM_EMAIL">이메일</label> 
					<input type="text" class="form-control" size="18" maxlength="20" id="MEM_EMAIL1" name="MEM_EMAIL1">&nbsp;@
					<select class="form-control" id="MEM_EMAIL2" name="MEM_EMAIL2">
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>daum.net</option>
						<option>hotmail.com</option>
						<option>직접입력</option>
					</select>&nbsp;
					<input type="text" class="form-control" size="12" maxlength="15" id="MEM_EMAIL3" name="MEM_EMAIL3">
				</div>
				<div class="form-group">
					&nbsp;
					<label for="MEM_ZIPCODE">주소</label> 
					<input type="text" class="form-control" placeholder="우편번호" size="10" id="MEM_ZIPCODE" name="MEM_ZIPCODE">
					<input type="button" class="form-control" value="우편번호 검색" data-toggle="modal" data-target="#myModal2">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="MEM_ADDR">상세주소</label> 
					<input type="text" class="form-control" placeholder="주소" size="38" id="MEM_ADDR" name="MEM_ADDR">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="MEM_DETAILADDR">&nbsp;</label> 
					<input type="text" class="form-control" placeholder="상세주소" size="38" id="MEM_DETAILADDR" name="MEM_DETAILADDR">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="MEM_GENDER">성별</label> 
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 남자
					</label>
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 여자
					</label>
				</div>
				<br><br><br><br>
				<hr>
				<h1>약관 동의</h1><br>
    			<span class="r">※ 필수체크사항입니다.</span><br>
	    		<br>
				<p>&nbsp;&nbsp;전체 동의   <input type="checkbox" id="PsCheckbox1" value="option1"></p><br>
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
		</fieldset>
		
		
		<fieldset id="CompanyMember">
			<form role="form" class="form-inline" name="frm" method="post" action="<c:url value='/member/memWrite.do' />">
	    	<hr>
	    	<h1>기업정보 입력</h1><br>
	    	<span class="r">※ 필수입력정보입니다.</span><br>
	    	<br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_ID">아이디</label> 
					<input type="text" class="form-control" id="CM_ID" name="CM_ID">
					<input type="button" class="form-control" value="중복검사" data-toggle="modal" data-target="#myModal1">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_PWD1">비밀번호</label> 
					<input type="password" class="form-control" id="CM_PWD1" name="CM_PWD1">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_PWD2">비밀번호 재확인</label> 
					<input type="password" class="form-control" id="CM_PWD2" name="CM_PWD2">	
				</div><br><br>
				
				<div class="form-group"><span class="r">*</span>
					<label for="CM_REGNUM">사업자 등록번호</label> 
					<input type="text" class="form-control" placeholder="사업자 등록번호" id="CM_REGNUM" name="CM_REGNUM">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_NAME">회사명</label> 
					<input type="text" class="form-control" id="CM_NAME" name="CM_NAME">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_REPRE">대표자명</label> 
					<input type="text" class="form-control" id="CM_REPRE" name="CM_REPRE">
				</div><br><br>
				
				<div class="form-group">
					&nbsp;
					<label for="CM_ZIPCODE">주소</label> 
					<input type="text" class="form-control" placeholder="우편번호" size="10" id="CM_ZIPCODE" name="CM_ZIPCODE">
					<input type="button" class="form-control" value="우편번호 검색" data-toggle="modal" data-target="#myModal2">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="CM_ADDR">상세주소</label> 
					<input type="text" class="form-control" placeholder="주소" size="38" id="CM_ADDR" name="CM_ADDR">
				</div><br>
				<div class="form-group">
					&nbsp;
					<label for="CM_DETAILADDR">&nbsp;</label> 
					<input type="text" class="form-control" placeholder="상세주소" size="38" id="CM_DETAILADDR" name="CM_DETAILADDR">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_MANAGER">담당자</label> 
					<input type="text" class="form-control" id="CM_MANAGER" name="CM_MANAGER">
				</div><br>
				<div class="form-group"><span class="r">*</span>
					<label for="CM_MGR_TEL">담당자 전화번호</label>
					<select class="form-control" id="CM_MGR_TEL1" name="CM_MGR_TEL1">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>&nbsp;-
					<input type="text" class="form-control" placeholder="휴대폰 번호'-'없이 입력" size="16" maxlength="8" id="CM_MGR_TEL2" name="CM_MGR_TEL2">&nbsp;
				</div>			
				<div class="form-group">&nbsp;
					<label for="CM_EMAIL">이메일</label> 
					<input type="text" class="form-control" id="CM_EMAIL1" name="CM_EMAIL1">&nbsp;@
					<select class="form-control" id="CM_EMAIL2" name="CM_EMAIL2">
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>daum.net</option>
						<option>hotmail.com</option>
						<option>직접입력</option>
					</select>&nbsp;
					<input type="text" class="form-control" id="CM_EMAIL3" name="CM_EMAIL3">
				</div>
				<div class="form-group">&nbsp;
					<label for="CC_NAME">기업구분</label> 
					<label class="radio-inline">
					<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 인재파견
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
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span ariahidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h2 class="modal-title" id="myModalLabel">&nbsp;아이디 중복검사</h2>
						<div class="input-group">
						     <span class="input-group-addon"> <span class="glyphicon glyphicon-hand-right"> </span> </span>
						     <input type="text" class="form-control" placeholder="아이디">
						     <span class="input-group-btn"> <button class="btn btn-default" type="button">검색</button> </span>
						</div><br><br><br><br>
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
				<div class="modal-footer">
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
