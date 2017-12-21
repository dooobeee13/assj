
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
				
				str += "<div id='actDiv2' style='margin-top: 10px'><textarea rows='8' data-toggle='tooltip' title='"+txt+"'  class='form-control' name='actTA'></textarea>"+
				"<br><div name='delBtnDiv' style='text-align: right; margin-bottom: 5px;'><img alt='삭제버튼'  name='delActImg' src='"+getContextPath()+"/images/button/btn_layer_del.gif'/></div></div>";
              	
				var actBasic = "<div id='actBasic'><h5>대외 활동</h5><div id='addBtnDiv'>"+
				"<textarea rows='8' data-toggle='tooltip' title='"+txt+"' placeholder='"+txt+"' class='form-control' name='taAct'></textarea>"+
				"<img alt='추가버튼' name='addActImg' src='"+getContextPath()+"/images/button/btn_add.gif'/>	</div></div>";
				
				$('#addActDiv').append(actBasic);
				
				$('img[name=addActImg]').click(function(){
					$('img[name=addActImg]').before(str);
				});					
				
				$(document).on("click","img[name=delActImg]",function(){
					$(this).parent().parent().remove();						
				});					
				
			}else if($(this).attr("id")=="chkCer"){
				var addBtn = "";
				addBtn += "<div id='addCerImgDiv'><img alt='추가버튼' name='addCerImg' src='"+getContextPath()+"/images/button/btn_add.gif'/></div>";
				
				$('#addCerDiv').append($('#actDiv').clone().show().attr("class","actDivClass").attr("id","copyActDiv"));
				$('.actDivClass').after(addBtn);					
				
				$('img[name=addCerImg]').click(function(){
					$('#addCerImgDiv').before($('#actDiv').clone().show().attr("class","actDivClass").attr("id","copyActDiv"));
					
				});	
				
				$(document).on("click","img[name=delCerImg]",function(){
					$(this).parent().parent().parent().remove();						
				});	
				
				$(document).on("change","select[name=cer_category]",function(){
					if($(this).val()=='license'){
						/* alert('license'); */
						/* alert($(this).parent().parent().parent().parent().parent().parent().attr("id")); */
						$(this).parent().parent().parent().parent().parent().parent().replaceWith($('#actDiv').clone().show().attr("class","actDivClass").attr("id","copyActDiv"));
						
					}
					if($(this).val()=='language_exam'){
						/* alert('language_exam');
						alert($(this).parent().parent().parent().parent().parent().parent().attr("id")); */
						$(this).parent().parent().parent().parent().parent().parent().replaceWith($('#cerDiv').clone().show().attr("class","cerDivClass").attr("id","copyCerDiv"));
						
					}
					if($(this).val()=='certification'){
						/* alert('certification');
						alert($(this).parent().parent().parent().parent().parent().parent().attr("id")); */
						$(this).parent().parent().parent().parent().parent().parent().replaceWith($('#awardsDiv').clone().show().attr("class","awardsDivClass").attr("id","copySkillDiv"));
					}
				});
				
              	
			}else if($(this).attr("id")=="chkSkill"){
				var addBtn = "";
				addBtn += "<div id='addSkillImgDiv'><img alt='추가버튼' name='addSkillImg' src='"+getContextPath()+"/images/button/btn_add.gif'/></div>";
				
				$('#addSkillDiv').append($('#skillDiv').clone().show().attr("class","skillDivClass").attr("id","copySkillDiv"));
				$('.skillDivClass').after(addBtn);
				
				$('img[name=addSkillImg]').click(function(){
					$('#addSkillImgDiv').before($('#skillDiv').clone().show().attr("class","skillDivClass").attr("id","copySkillDiv"));
				});	
				
				$(document).on("click","img[name=delSkillImg]",function(){
					$(this).parent().parent().parent().remove();						
				});						
			}
		}else{
			if($(this).attr("id")=="chkAct"){
				$('#addActDiv').empty();
			}else if($(this).attr("id")=="chkCer"){
				$('#addCerDiv').empty();
			}else if($(this).attr("id")=="chkSkill"){
				$('#addSkillDiv').empty();
			}
		}
	});
	
	$('.nav-link').click(function(){
		$('html,body').animate({scrollTop:$($(this).attr("href")).offset().top-50},500);
		return false;
	});
	
	$('#addSH').click(function(){
		$('#addSHDiv').before($('#shBasicDiv').clone().show().attr("class","copySHDiv").append($('#clearBasicDiv').clone().show().attr("id","").attr("class","copyClearDiv")));
		
	});
	
	$(document).on("click","img[name=delSHImg]",function(){
		$(this).parent().parent().remove();
	});
	$(document).on("click","img[name=delEhImg]",function(){
		$(this).parent().parent().parent().remove();
	});
	
	$('#addEhImg').click(function(){
		$('.addBtnDiv').before($('#ehBasicDiv').clone().show().attr("id","").attr("class","addEhCopyDiv").append($('#clearBasicDiv').clone().show().attr("id","").attr("class","copyClearDiv")));
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
		
		/*alert('시작 년도'+startYear);
		alert('현재 년도'+currentYear);*/
		
		$('#sh_end_year').find("option").remove();
		
		for(i=startYear; i<=currentYear; i++ ){
			$('#sh_end_year').append("<option value='"+i+"'>"+i+"</option>");
		}
		
	});
	
	
	
	
	
	var reg_id = /^[A-Za-z0-9]{4,16}$/;
	/* var reg_pw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]|.*[0-9]).{4,16}$/; 	 */
	var reg_name =  /^[a-zA-Z가-힣]{0,20}$/;
	var reg_email = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	var reg_hp =  /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	var p1='' , p2='', p3='', inputHp='';
	
	$('#resumeForm').submit(function(){
		
		if($('#resumeTitle').val()==''){
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
		}
		
		
		
	});
	
	

	
});


