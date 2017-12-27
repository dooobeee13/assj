
$(function(){
	function getContextPath() {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	};

	
	
	$('[data-toggle="tooltip"]').tooltip();
	$('#detailCareer').hide();
	$('#lbChk').hide();
	$('input[name=optionsRadios1]').change(function(){
		var radioValue=$(this).val();
		if(radioValue=="신입"){
			$('#detailCareer').hide();
			$('#lbChk').hide();
			$('#chkDetailTip').removeAttr("checked");
			$('#detailCarTip').hide();
		}else if(radioValue=="경력"){
			$('#detailCareer').show();
			$('#lbChk').show();
			$('#chkDetailTip').removeAttr("checked");
		}else if(radioValue=="임원/CEO"){
			$('#detailCareer').show();
			$('#lbChk').show();
		}
		
		
	});
	$('#detailCarTip').hide();
	
	$('input[name=chkDetailTip]').change(function(){
		
		if($(this).is(':checked')){
			$('#detailCarTip').show();
		}else{
			$('#detailCarTip').hide();
		}
	});
	
	
	var actCnt = 0;
	var cerCnt = 0;
	var skillCnt = 0;
	
	$('#checkDiv input[type=checkbox]').change(function(){	
		if($(this).is(":checked")){				
			if($(this).attr("id")=="chkAct"){
				var str = "";
				var actBasic = "";
				
				var txt = "인턴/아르바이트/동아리/자원봉사/사회활동/교내활동/수행과제&#13;&#10;"+
				"ex ) &#13;&#10;"+
				"기간 : 2017-08-03 ~ 2017-02-03 &#13;&#10;"+
				"활동 구분 : 직업 훈련&#13;&#10;"+
				"기관/장소 : 서울 현대 직업 전문학교&#13;&#10;"+
				"내용 : 프로젝트 위주의 Java 개발자 과정";
				
				
				var actBasic = "<div id='actBasic'><h5>대외 활동</h5><div id='addBtnDiv'>"+
				"<textarea rows='8' data-toggle='tooltip' title='"+txt+"' placeholder='"+txt+"' class='form-control' name='actVOList["+actCnt+"].actHistory'></textarea>"+
				"<img alt='추가버튼' name='addActImg' src='"+getContextPath()+"/images/button/btn_add.gif'/>	</div></div>";
				
				$('#addActDiv').append(actBasic);
				
				$('img[name=addActImg]').click(function(){
					actCnt++;
					str = "<div id='actDiv2' style='margin-top: 10px'><textarea rows='8' data-toggle='tooltip' title='"+txt+"'  class='form-control' name='actVOList["+actCnt+"].actHistory'></textarea>"+
					"<br><div name='delBtnDiv' style='text-align: right; margin-bottom: 5px;'><img alt='삭제버튼'  name='delActImg' src='"+getContextPath()+"/images/button/btn_layer_del.gif'/></div></div>";
	              	
					$('img[name=addActImg]').before(str);
				});					
				
				$(document).on("click","img[name=delActImg]",function(){
					actCnt--;
					$(this).parent().parent().remove();						
				});					
				
			}else if($(this).attr("id")=="chkCer"){
				
				var addBtn = "";
				addBtn += "<div id='addCerImgDiv'><img alt='추가버튼' name='addCerImg' src='"+getContextPath()+"/images/button/btn_add.gif'/></div>";
				
				$('#addCerDiv').append($('#actDiv').clone().show().attr("class","actDivClass"+cerCnt).attr("id",""));
				
				$('.actDivClass'+cerCnt).find('select[name=cCate]').attr("name","cerVOList["+cerCnt+"].cerCategory");
				$('.actDivClass'+cerCnt).find('input[name=cName]').attr("name","cerVOList["+cerCnt+"].cerName");
				$('.actDivClass'+cerCnt).find('input[name=cPubl]').attr("name","cerVOList["+cerCnt+"].cerPublisher");
				$('.actDivClass'+cerCnt).find('select[name=cAS]').attr("name","cerVOList["+cerCnt+"].cerAcceptScore");
				
				var actHidden = "<input type='hidden' name='cerVOList["+cerCnt+"].cerAcquiDate' id='cerAD"+cerCnt+"'>";
				$('#eduName').before(actHidden);
				
				var cntHidden = "<input type='hidden' name='cntHidden"+cerCnt+"' id='cntHidden"+cerCnt+"'>";				
				$("actDivClass"+cerCnt).append(cntHidden);
				
				$('#addCerDiv').append(addBtn);					
				
				$('img[name=addCerImg]').click(function(){
					cerCnt++;
					$('#addCerImgDiv').before($('#actDiv').clone().show().attr("class","actDivClass"+cerCnt).attr("id",""));
					$('.actDivClass'+cerCnt).find('select[name=cCate]').attr("name","cerVOList["+cerCnt+"].cerCategory");
					$('.actDivClass'+cerCnt).find('input[name=cName]').attr("name","cerVOList["+cerCnt+"].cerName");
					$('.actDivClass'+cerCnt).find('input[name=cPubl]').attr("name","cerVOList["+cerCnt+"].cerPublisher");
					$('.actDivClass'+cerCnt).find('select[name=cAS]').attr("name","cerVOList["+cerCnt+"].cerAcceptScore");
					
					var actHidden = "<input type='hidden' name='cerVOList["+cerCnt+"].cerAcquiDate' id='cerAD"+cerCnt+"'>";
					$('#eduName').before(actHidden);
				});					
				
				$(document).on("click","img[name=delCerImg]",function(){
					$(this).parent().parent().parent().remove();						
				});
				
				var divIndex = 0;
				$(document).on("click",".cCate",function(){
					
					divIndex = $(this).parent().parent().parent().parent().parent().parent().index();				
					
				});	
				
				$(document).on("change",".cCate",function(){
					
					if($(this).val()=='자격증/면허증'){
						$(this).parent().parent().parent().parent().parent().parent().replaceWith(
								$('#actDiv').clone().show().attr("class","actDivClass"+divIndex).attr("id","")								
						);
						$('.actDivClass'+divIndex).find('select[name=cCate]').attr("name","cerVOList["+divIndex+"].cerCategory")
						$('.actDivClass'+divIndex).find('input[name=cName]').attr("name","cerVOList["+divIndex+"].cerName")
						$('.actDivClass'+divIndex).find('input[name=cPubl]').attr("name","cerVOList["+divIndex+"].cerPublisher")
						$('.actDivClass'+divIndex).find('select[name=cAS]').attr("name","cerVOList["+divIndex+"].cerAcceptScore");
						
					}
					if($(this).val()=='어학시험'){
						$(this).parent().parent().parent().parent().parent().parent().replaceWith(
								$('#cerDiv').clone().show().attr("class","cerDivClass"+divIndex).attr("id","")								
						);
						
						$('.cerDivClass'+divIndex).find('select[name=cCate]').attr("name","cerVOList["+divIndex+"].cerCategory")
						$('.cerDivClass'+divIndex).find('input[name=cName]').attr("name","cerVOList["+divIndex+"].cerName")
						$('.cerDivClass'+divIndex).find('input[name=cPubl]').attr("name","cerVOList["+divIndex+"].cerPublisher")
						$('.cerDivClass'+divIndex).find('input[name=cAS]').attr("name","cerVOList["+divIndex+"].cerAcceptScore");
						
					}
					if($(this).val()=='수상/공모'){
						$(this).parent().parent().parent().parent().parent().parent().replaceWith(
								$('#awardsDiv').clone().show().attr("class","awardsDivClass"+divIndex).attr("id","")								
						);
						$('.awardsDivClass'+divIndex).find('select[name=cCate]').attr("name","cerVOList["+divIndex+"].cerCategory")
						$('.awardsDivClass'+divIndex).find('input[name=cName]').attr("name","cerVOList["+divIndex+"].cerName")
						$('.awardsDivClass'+divIndex).find('input[name=cPubl]').attr("name","cerVOList["+divIndex+"].cerPublisher")
						$('.awardsDivClass'+divIndex).find('select[name=cAS]').attr("name","cerVOList["+divIndex+"].cerAcceptScore");
					}
				});
				
              	
			}else if($(this).attr("id")=="chkSkill"){
				var addBtn = "";
				addBtn += "<div id='addSkillImgDiv'><img alt='추가버튼' name='addSkillImg' src='"+getContextPath()+"/images/button/btn_add.gif'/></div>";
				
				$('#addSkillDiv').append($('#skillDiv').clone().show().attr("class","skillDivClass"+skillCnt).attr("id",""));
				
				$('.skillDivClass'+skillCnt).find('input[name=skAbil]').attr("name","skillVOList["+skillCnt+"].skillAbility");
				$('.skillDivClass'+skillCnt).find('select[name=skLevel]').attr("name","skillVOList["+skillCnt+"].skillLevel");
				$('.skillDivClass'+skillCnt).find('textarea[name=skDetail]').attr("name","skillVOList["+skillCnt+"].skillDetail");
				
				$('.skillDivClass'+skillCnt).after(addBtn);
				
				$('img[name=addSkillImg]').click(function(){
					skillCnt++;
					$('#addSkillImgDiv').before($('#skillDiv').clone().show().attr("class","skillDivClass"+skillCnt).attr("id",""));
					$('.skillDivClass'+skillCnt).find('input[name=skAbil]').attr("name","skillVOList["+skillCnt+"].skillAbility");
					$('.skillDivClass'+skillCnt).find('select[name=skLevel]').attr("name","skillVOList["+skillCnt+"].skillLevel");
					$('.skillDivClass'+skillCnt).find('textarea[name=skDetail]').attr("name","skillVOList["+skillCnt+"].skillDetail");
				});	
				
				$(document).on("click","img[name=delSkillImg]",function(){
					$(this).parent().parent().parent().remove();						
				});						
			}
		}else{
			if($(this).attr("id")=="chkAct"){
				$('#addActDiv').empty();
				actCnt=0;
			}else if($(this).attr("id")=="chkCer"){
				cerCnt=0;
				$('#addCerDiv').empty();
			}else if($(this).attr("id")=="chkSkill"){
				skillCnt=0;
				$('#addSkillDiv').empty();
			}
		}
	});
	
	$('.nav-link').click(function(){
		$('html,body').animate({scrollTop:$($(this).attr("href")).offset().top-50},500);
		return false;
	});
	
	
	
	$(document).on("click","img[name=delSHImg]",function(){
		$(this).parent().parent().remove();
	});
	$(document).on("click","img[name=delEhImg]",function(){
		$(this).parent().parent().parent().remove();
	});
	
	
	
	
	$('#milOptionDiv').hide();
	$('#resumeMilTarget').change(function(){
		if($('#resumeMilTarget').val()=='대상아님'){			
			 $('#milOptionDiv').hide(); 
			
			$.milFn();			
			
		}else if($('#resumeMilTarget').val()=='군필' || $('#resumeMilTarget').val()=='복무중'){			
			$('#milOptionDiv').show();
			$('#milOption1').show();
			
			$.milFn();
			
			$('#unFnsDiv').hide(); 
			
		}else if($('#resumeMilTarget').val()=='미필' || $('#resumeMilTarget').val()=='면제'){			
			$('#milOptionDiv').show();
			$('#milOption1').hide();			
			
			$.milFn();
			
			$('#unFnsDiv').show();
			
		}
	});
	
	$.milFn = function(){
		
		$("#mil_start_year").val("");
		$("#mil_start_month").val("");
		$("#mil_end_year").val("");
		$("#mil_end_month").val("");
		$("#resumeMilDivision").val("");
		$("#resumeMilClass").val("");
		$("#resumeMilReason").val("");
		
		$('#resumeMilUnfinish').val("");
	}
	
	
	$('#chkSname').change(function(){
		if($(this).is(':checked')){
			var currentYear = new Date().getFullYear();
			$('#shGwhether').attr('disabled','disabled');
			$('#sh_start_year').val("");
			$('#sh_start_month').val("");
			$('#sh_end_year').find("option").remove();
			for(i=currentYear; i>=1930; i-- ){
				$('#sh_end_year').append("<option value='"+i+"'>"+i+"</option>");
			}
			$('#sh_start_year').attr('disabled','disabled');			
			$('#sh_start_month').attr('disabled','disabled');
			$('#shAwhether').attr('disabled','disabled');
			$('#shSname').attr('disabled','disabled');
			$('#shMajor').attr('disabled','disabled');			
			
			$('#shAwhether').val("");
			$('#shGwhether').val("검정고시 합격");
		}else{
			$('#shGwhether').removeAttr('disabled');
			$('#sh_start_year').removeAttr('disabled');
			$('#sh_start_month').removeAttr('disabled');
			$('#shAwhether').removeAttr('disabled');
			$('#shSname').removeAttr('disabled');
			$('#shMajor').removeAttr('disabled');
			
			$('.shGedOp').attr("disabled","disabled");
			$('#shAwhether').val("입학");
			$('#shGwhether').val("졸업");
		}
	});
	
	$(document).on("change","select[name=mil_start_year]",function(){
		var startYear = $(this).val();
		var currentYear = new Date().getFullYear();
		
		$('#mil_end_year').find("option").remove();
		
		for(i=startYear; i<=currentYear; i++ ){
			$('#mil_end_year').append("<option value='"+i+"'>"+i+"</option>");
		}
	});
	
	$(document).on("change","select[name=sh_start_year]",function(){
		var startYear = $(this).val();
		var currentYear = new Date().getFullYear();
		
		
		$(this).next().next().find("option").remove();
		
		for(i=startYear; i<=currentYear; i++ ){
			$(this).next().next().append("<option value='"+i+"'>"+i+"</option>");
		}
		
	});
	
	$(document).on("change","select[name=eh_start_year]",function(){
		var startYear = $(this).val();
		var currentYear = new Date().getFullYear();
		
		
		$(this).next().next().find("option").remove();
		
		for(i=startYear; i<=currentYear; i++ ){
			$(this).next().next().append("<option value='"+i+"'>"+i+"</option>");
		}
		
	});
	
	
	
	
	
	var reg_id = /^[A-Za-z0-9]{4,16}$/;
	/* var reg_pw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]|.*[0-9]).{4,16}$/; 	 */
	var reg_name =  /^[a-zA-Z가-힣]{0,20}$/;
	var reg_email = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	var reg_hp =  /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	var p1='' , p2='', p3='', inputHp='';
	
	$('#resumeForm').submit(function(){
		
		
		
	/*	if($('#resumeTitle').val()==''){
			alert('이력서 제목을 입력하세요');
			$('#resumeTitle').focus();
			return false;
		}else if($('#resumeName').val().length<1 || reg_name.test($('#resumeName').val())!=true){
			alert('이름을 입력하세요');
			$('#resumeName').focus();
			return false;
		}else if($('#resumeAddr').val()==''){
			alert('주소를 입력하세요');
			$('#resumeAddr').focus();
			return false;
		}else if($('#resumeAddredetail').val()==''){
			alert('상세주소를 입력하세요');
			$('#resumeAddrdetail').focus();
			return false;
		}
		if($('#hp2').val()=='' || $('#hp3').val()=='' ){
			alert('휴대폰 번호를 입력하세요');
			$('#hp2').focus();
			return false;
		}else{			
			p1=$('#hp1').val();
			p2=$('#hp2').val();
			p3=$('#hp3').val();
			
			inputHp = p1+"-"+p2+"-"+p3;
			if(reg_hp.test(inputHp)!=true){
				alert('휴대폰 번호가 올바르지 않습니다');
				return false;	
			}else{
				$('#resumePhone').attr("value",inputHp);
			}			
		}
		
		
		if($('#resumeEmail').val()=='' || reg_email.test($('#resumeEmail').val())!=true){
			alert('이메일 형식이 올바르지 않습니다.');
			$('#resumeEmail').focus();
			return false;
		}else if($('#').val()==''){
			alert(' 입력하세요');
			$('#').focus();
			return false;
		}else if($('#').val()==''){
			alert(' 입력하세요');
			$('#').focus();
			return false;
		}else if($('#').val()==''){
			alert(' 입력하세요');
			$('#').focus();
			return false;
		}else if($('#').val()==''){
			alert(' 입력하세요');
			$('#').focus();
			return false;
		}*/
		
		
		var $by = $('#birth_year').val();
		var $bm = $('#birth_month').val();
		var $bd = $('#birth_day').val();
		var resumeBirth = $by+"/"+$bm+"/"+$bd;
		$('#resumeBirth1').attr("value",resumeBirth);
		
		var $resumePhone = $('#hp1').val() + "-" + $('#hp2').val() + "-" + $('#hp3').val()
		$('#resumePhone').attr("value",$resumePhone);
		
		var $resumeMilStart = $('#mil_start_year').val() + "/" + $('#mil_start_month').val();
		var $resumeMilEnd = $('#mil_end_year').val() + "/" + $('#mil_end_month').val();
		
		var resumeSalOpt1 = "";
		var resumeSalOpt2 = "";
		var resumeSalOpt = "";
		
		var ssy = "";
		$('select[name=sh_start_year').each(function(idx,item){				
				$("#shAyear"+(idx)).attr("value",$(this).val());
		});
		
		$('select[name=sh_start_month').each(function(idx,item){			
			$("#shAyear"+(idx)).attr("value",
					$("#shAyear"+(idx)).val()+"/"+$(this).val()
			);
		});
		
		$('select[name=sh_end_year').each(function(idx,item){
			$("#shGyear"+(idx)).attr("value",$(this).val());
		});
		
		$('select[name=sh_end_month').each(function(idx,item){
			$("#shGyear"+(idx)).attr("value",
					$("#shGyear"+(idx)).val()+"/"+$(this).val()
			);
		});
		
		
		
		
		$('select[name=eh_start_year').each(function(idx,item){				
			$("#ehAdmission"+(idx)).attr("value",$(this).val());
		});
		
		$('select[name=eh_start_month').each(function(idx,item){			
			$("#ehAdmission"+(idx)).attr("value",
					$("#ehAdmission"+(idx)).val()+"/"+$(this).val()
			);
		});
		
		$('select[name=eh_end_year').each(function(idx,item){
			$("#ehCompletion"+(idx)).attr("value",$(this).val());
		});
		
		$('select[name=eh_end_month').each(function(idx,item){
			$("#ehCompletion"+(idx)).attr("value",
					$("#ehCompletion"+(idx)).val()+"/"+$(this).val()
			);
		});
		
		
		
		 $('select[name=cer_year').each(function(idx,item){				
				$("#cerAD"+(idx)).attr("value",$(this).val());
			});
			
			$('select[name=cer_month').each(function(idx,item){			
				$("#cerAD"+(idx)).attr("value",
						$("#cerAD"+(idx)).val()+"/"+$(this).val()
				);
			});
		
		if($('#chkSalOpt1').is(":checked") && $('#chkSalOpt2').is(":checked")){
			resumeSalOpt = "";
			resumeSalOpt = $('#chkSalOpt1').val() + "," + $('#chkSalOpt2').val(); 
		}else if($('#chkSalOpt1').is(":checked") && !$('#chkSalOpt2').is(":checked")){
			resumeSalOpt = "";
			resumeSalOpt = $('#chkSalOpt1').val();			
		}else if(!$('#chkSalOpt1').is(":checked") && $('#chkSalOpt2').is(":checked")){
			resumeSalOpt = "";
			resumeSalOpt = $('#chkSalOpt2').val();			
		}else{
			resumeSalOpt = "";
		}
		
		$('#resumeSalOpt').attr("value",resumeSalOpt);
		
	
		
	});
	
	
	$(document).on("change","select[name=shMajor2]",function(){
		
		var no =$("option:selected",this).index()+1;	
		var $thisSel = $(this);
	    
		$(this).next().next().find("option").remove();
		
		$.ajax({
			url:"<c:url value='/resume/resumeMajorDetail.do' />",
			type:"post",
			data:"no="+no,
			dataType:"json",
			success:function(majorVO){
				$.each(majorVO,function(index,item){
					$thisSel.next().next().append("<option value='"+item.majorName+"'>"+item.majorName+"</option>");
				});
			},
			error:function(xhr,status,error){
				alert("에러발생:"+status+"=>"+error);
			}
			
		});	
	});		

	
});


