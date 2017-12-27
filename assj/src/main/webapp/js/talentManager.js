/**
 * 
 */
$(function(){
	$('.001').addClass('select');
	$('.occupation').hide();
	$('.alldetail_table').hide();
	$('.hope-occupation').hide();
	$('.hope-sectors').hide();
	$('.area').hide();
	$('.o1').show();
	

	
	$('#slef2').hide();//경력 나이부분 디테일
	$('#career_detail').hide();//직종 부분 디테일
						//alldetail - 상세보기 디테일
	$('.areaSelectVal').hide();
	$('.area-1-detail').show();
	
	$('.career-old').hide();
	$('.occupation').hide();
	$('.education').hide();
	$('.sectors').hide();
	$('.workingStyle').hide();
	$('.rank').hide();
	
	$('.img-opa').attr('style','opacity:1');
	$('.img-opa').children().attr('style','opacity:0.3');
	$('.img-opa').children().first().attr('style','opacity:1');
	
	$('#all').click(function(){ //상세보기 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.all').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#career-old').click(function(){//경력 나이 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.career-old').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#occupation').click(function(){//직종구분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.occupation').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	$('#education').click(function(){//학력 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.education').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#area').click(function(){//지역 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.area').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#sectors').click(function(){//업종 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.sectors').show();
		$('.o1s').show();
		$('.001s').addClass('select');
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#workingStyle').click(function(){//근무형태 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.workingStyle').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});
	
	$('#rank').click(function(){//직급형태 부분 눌렀을 경우 이벤트
		$('.TStopion_div').hide();
		$('.rank').show();
		$('.img-opa').children().attr('style','opacity:0.3');
		$('.img-opa').attr('style','opacity:0.3');
		$(this).attr('style','opacity:1');
		$(this).children().attr('style','opacity:1');
	});

	//직종구분에서의 옵션 클릭 이벤트- 시작
	 $('.001').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o1').show();
	});
	$('.002').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o2').show();
	});
	$('.003').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o3').show();
	});
	$('.004').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o4').show();
	});
	$('.005').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o5').show();
	});
	$('.006').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o6').show();
	});
	$('.007').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o7').show();
	});
	$('.008').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o8').show();
	});
	$('.009').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o9').show();
	});
	$('.010').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o10').show();
	});
	$('.011').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o11').show();
	});
	$('.012').click(function(){
		$('.hope-occupation').hide();
		$('.occupation-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o12').show();
	});
	
	
	//업종부분
	$('.001s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o1s').show();
	});
	$('.002s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o2s').show();
	});
	$('.003s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o3s').show();
	});
	$('.004s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o4s').show();
	});
	$('.005s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o5s').show();
	});
	$('.006s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o6s').show();
	});
	$('.007s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o7s').show();
	});
	$('.008s').click(function(){
		$('.hope-sectors').hide();
		$('.sectors-choose li').removeClass('select');
		$(this).addClass('select');
		$('.o8s').show();
	});
	
	
	
	//직종구분에서의 옵션 클릭 이벤트- 끝
	
	
	$('.select_list').click(function(){
		$(this).attr('style','background:#f4f4f4');
	});
	
	//직책-직급부분 -시작
	$('#more-rank').click(function(){
		$('#more-rank').hide();
		$('#rank').css('display','block');
	});
	
	$('#close-rank').click(function(){
		$('#more-rank').show();
		$('#rank').css('display','none');
	});
	
	$('#more-position').click(function(){
		$('#more-position').hide();
		$('#position').css('display','block');
	});
	
	$('#close-position').click(function(){
		$('#more-position').show();
		$('#position').css('display','none');
	});
	
	//직책-직급부분 -끝
	$('.major_02').hide();
	$('#edu_sch').parent().css('background','#fff');
	
	
	//학력 부분
	$('#edu_sch').click(function(){
		$('#major_sch').parent().css('background','#f4f4f4');
		$('.major_01').show();
		$('.major_02').hide();
		$(this).parent().css('background','#fff');
		
	});
	$('#major_sch').click(function(){
		$('#edu_sch').parent().css('background','#f4f4f4');
		$('.major_02').show();
		$('.major_01').hide();
		$(this).parent().css('background','#fff');
	});
	
	$('#search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('#search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	
	//지역부분
	$('.area-2-detail').hide();
	$('#area-1').addClass('select');
	
	$('#area-1').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-1-detail').show();
	});
	$('#area-2').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-2-detail').show();
	});
	$('#area-3').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-3-detail').show();
	});
	$('#area-4').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-4-detail').show();
	});
	$('#area-5').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-5-detail').show();
	});
	$('#area-6').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-6-detail').show();
	});
	$('#area-7').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-7-detail').show();
	});
	$('#area-8').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-8-detail').show();
	});
	$('#area-9').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-9-detail').show();
	});
	$('#area-10').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-10-detail').show();
	});
	
	$('#area-11').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-11-detail').show();
	});
	
	$('#area-12').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-12-detail').show();
	});
	$('#area-13').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-13-detail').show();
	});
	$('#area-14').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-14-detail').show();
	});
	$('#area-15').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-15-detail').show();
	});
	$('#area-16').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-16-detail').show();
	});
	$('#area-17').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-17-detail').show();
	});
	$('#area-18').click(function(){
		$('.area-select li').removeClass('select');
		$(this).addClass('select');
		$('.areaSelectVal').hide();
		$('.area-18-detail').show();
	});
	//지역 끝

	//직급부분
	$('.more-rank').click(function(){
		$('.more-rank').hide();
		$('.ranks').css('display','block');
	});
	
	$('.close-rank').click(function(){
		$('.more-rank').show();
		$('.ranks').css('display','none');
	});
	
	$('.more-position').click(function(){
		$('.more-position').hide();
		$('.position').css('display','block');
	});
	
	$('.close-position').click(function(){
		$('.more-position').show();
		$('.position').css('display','none');
	});
	
	
	//버튼 변화
	$('.search-button').mousedown(function(){
		$(this).attr('class','one-button-click');
	});

	$('.search-button').mouseup(function(){
		$(this).attr('class','one-button');
	});
	
	//간편검색 부분 지역
	var MiniArea = new Array;
	$('.AreaSelectLI li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				var itemtoRemove = $(this).children().val();
				MiniArea.splice($.inArray(itemtoRemove, MiniArea),1);
			}else{
				MiniArea.push($(this).children().val());
				$(this).addClass('select');
			}
		})
	});
	
	//근무형태 버튼 클릭 실험
	var empType = new Array;
	$('.empTypeselectVal>li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				var itemtoRemove = $(this).children().val();
				empType.splice($.inArray(itemtoRemove, empType),1);
				$(this).removeClass('select');
			}else{
				empType.push($(this).children().val());
				$(this).addClass('select');
				alert(empType);
			}
		})
	});
	
	
	//Rank 버튼 클릭 실험
	//rank
	 var rank = new Array;
	$('.rankSelectVal>li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				var itemtoRemove = $(this).children().val();
				rank.splice($.inArray(itemtoRemove, rank),1);

				$(this).removeClass('select');
			}else{
				rank.push($(this).children().val());
				$(this).addClass('select');
				alert(rank);
			}
		})
	});
	//성별 자동 선택 구현중
	/* $('input[name=Genderm]').click(function(){
		if($('input[name=Genderm]').is(':checked')){
				$('input[name=Genderm]').attr('checked',true);
			
		}else{
				$('input[name=Genderm]').removeAttr('checked',true);
		}
	}); */
	//position
	var position = new Array;
	$('.positionSelectVal>li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				var itemtoRemove = $(this).children().val();
				position.splice($.inArray(itemtoRemove, position),1);
				
				$(this).removeClass('select');
			}else{
				position.push($(this).children().val());
				$(this).addClass('select');
				alert(position);
			}
		})
	});
	
	//학력 부분 education
	//전공부분
	var major = new Array;
	$('input[name=EduSelectBox]').change(function(){
		if($(this).is(':checked')){
			major.push($(this).val());
		}else{
			var itemtoRemove = $(this).val();
			major.splice($.inArray(itemtoRemove, major),1);
		}
	});
	//자주 찾는 대학 부분
	var Educol = new Array;
	$('.EduCollist li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				var itemtoRemove = $(this).children().val();
				Educol.splice($.inArray(itemtoRemove, Educol),1);
				$(this).removeClass('select');
			}else{
				$(this).addClass('select');
				Educol.push($(this).children().val());
			}
		});
	});
	
	//성별
	var Gender = new Array;
	$('input[name=Genderm],input[name=Gender]').click(function(){
		if(!$(this).is(':checked')){
			var itemtoRemove = $(this).val();
			Gender.splice($.inArray(itemtoRemove, Gender),1);
		}else if($(this).is(':checked')){
			Gender.push($(this).val());
		}
	});
	
	//희망 직종
	var HopeOccu = new Array;
	$('.hope-occupation input[type=checkbox]').click(function(){
		if(!$(this).is(':checked')){
			var itemtoRemove = $(this).val();
			HopeOccu.splice($.inArray(itemtoRemove, HopeOccu),1);
		}else if($(this).is(':checked')){
			HopeOccu.push($(this).val());
		}
	});
	
	var Hopesectors = new Array;
	$('.hope-sectors input[type=checkbox]').click(function(){
		if(!$(this).is(':checked')){
			var itemtoRemove = $(this).val();
			Hopesectors.splice($.inArray(itemtoRemove, Hopesectors),1);
		}else if($(this).is(':checked')){
			Hopesectors.push($(this).val());
		}
	});
	
	//지역
	var area = new Array;
	$('input[name=AreaSelectBox]').click(function(){
		if(!$(this).is(':checked')){
			var itemtoRemove = $(this).val();
			area.splice($.inArray(itemtoRemove, area),1);
		}else if($(this).is(':checked')){
			area.push($(this).val());
		}
	});
	
	//간단조건
	var EduColDetail = new Array();
	$('.EduColDetaillist li').each(function(){
		$(this).click(function(){
			if($(this).hasClass('select')){
				var itemtoRemove = $(this).children().val();
				EduColDetail.splice($.inArray(itemtoRemove, EduColDetail),1);
				$(this).removeClass('select');
			}else{
				$(this).addClass('select');
				EduColDetail.push($(this).children().val());
				/* $.ajax({
					url:"<c:url value='/TalentManagement/resumed.do'/>",
					data:"EduColDetail="+EduColDetail,
					success:function(){
						
					},
					error:function(xhr, status, error){
						alert("에러="+error);
					}
				}); */
			}
		})
	});
	
	
	var CareerCheckBox = new Array();
	$('.CareerCheckBox input[type=checkbox]').click(function(){
		if(!$(this).is(':checked')){
			var itemtoRemove = $(this).val();
			CareerCheckBox.splice($.inArray(itemtoRemove, CareerCheckBox),1);
		}else if($(this).is(':checked')){
			CareerCheckBox.push($(this).val());
		}
	});
	
	
	jQuery.ajaxSettings.traditional = true;/*이게 없으면 AJAX로 배열의 형태 데이터값을 보내지 못함*/
	
	$('.EduColDetaillist li, .EduCollist li, input[name=EduSelectBox], .positionSelectVal>li, .rankSelectVal>li, .empTypeselectVal>li, .AreaSelectLI li,input[name=Genderm],input[name=Gender],.CareerCheckBox input[type=checkbox],.hope-occupation input[type=checkbox],input[name=AreaSelectBox],.hope-sectors input[type=checkbox]').click(function(){
		$.ajax({
			url:"<c:url value='/TalentManagement/resumed.do'/>",
			data:{"EduColDetail":EduColDetail,
				"Educol":Educol,
				"major":major,
				"position":position,
				"rank":rank,
				"empType":empType,
				"MiniArea":MiniArea,
				"Gender":Gender,
				"CareerCheckBox":CareerCheckBox,
				"HopeOccu":HopeOccu,
				"area":area,
				"Hopesectors":Hopesectors
			},
			success:function(res){
				var totalResumes = "";
				$.each(res,function(idx, item){
					totalResumes+='<tr style="border:1px solid #b8b8b8;">'+
					'<td style="text-align:center;"><a href="#"><img src="<c:url value='/icon/star.jpeg'/>"></a></td>'+
					'<td style="height:120px;">'+
						'<div style="float:left;"><img src="<c:url value='/icon/beb42.jpeg'/>"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>'+
						'<div style="float:left; margin-left:100px;">'+
							'<strong style="">'+this.RESUME_NAME+'</strong><br>'+
						'<span>(<b>'+this.RESUME_GENDER+'</b><b>'+this.RESUME_BIRTH+'</b>년)</span>'+
						'</div>'+
					'</td>'+
					'<td><span class="career_exper" style="color:#6b80f1;">경력부분</span>'+
						'<span class="career_exper_titles">'+this.RESUME_TITLE+'</span>'+
						'<p class="career_edu_title" style="margin-top:8px; margin-bottom:8px;">당산대학교 님들과(셀렉해야됌)</p>'+
						'<p class="career_and_hope" style="margin-top:8px; margin-bottom:8px;"><a href="#">자격증 부분 </a><span> | </span><span>'+
						'</span> | <span>'+this.AREA_NAME+'</span></p><p style="margin-top:8px; margin-bottom:8px; color:#b8b8b8;">'+this.OCCU_NAME+' '+ this.SEC_NAME+'</p>'+
					'</td>'+
					'<td style="text-align:center;">업데이트 일자(미구현)</td>'+
				'</tr>'
				});
				$('.resume_body').html(totalResumes);
			},
			error:function(xhr, status, error){
				alert("에러="+error);
			}
		});
	});
	
	//직종부분
	
/* 	$('input[name=AreaSelectBox]').click(function(){
		var len = $('input[name=AreaSelectBox]:checked').length;
		
			$('form[name=divform]').prop('action','<c:url value="/TalentManagement/final-main.do"/>');
			$('form[name=divform]').submit();
	}); */
	
	/* $.ajax({
        url : '/TalentManagement/resume.do',
        type : 'post',
        data : param,
        success : function(data) {
          console.log('return string : ' + data);
        },
        error : function() { console.log('error');}
      }); */
     
      
     /*  $('.rankSelectVal>li').click(function(){
    	 if($(this).hasClass('select')){
    		 $('.select').val(function(idx){
    			 if($(this).val()!=''){
    			 test.push($(this).val());
    			 }
    		 })
    		 alert(test);
    	 } 
      }); */
	
	
});