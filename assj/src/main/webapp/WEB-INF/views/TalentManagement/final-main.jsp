<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<script type="text/javascript" src="<c:url value='/jquery/jquery-3.2.1.min.js'/>"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="../index/top.jsp" %>
<script type="text/javascript">
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
				$(this).removeClass('select');
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
	
	
	
	$.send=function(curPage){
		$('#currentPage').val(curPage);
		
		jQuery.ajaxSettings.traditional = true;
		
		$.ajax({
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			type:"POST",
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
				"Hopesectors":Hopesectors,
				"countPerPage":countPerPage,
				"currentPage":currentPage
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
						'<span>(<b>'+this.RESUME_GENDER+'</b> <b>'+this.RESUME_BIRTH+'</b>)</span>'+
						'</div>'+
					'</td>'+
					'<td style="padding-left: 3em;"><span class="career_exper" style="color:#6b80f1;">경력부분</span>'+
						'<span class="career_exper_titles">'+this.RESUME_TITLE+'</span>'+
						'<p class="career_edu_title" style="margin-top:8px; margin-bottom:8px;">당산대학교 님들과(셀렉해야됌)</p>'+
						'<p class="career_and_hope" style="margin-top:8px; margin-bottom:8px;"><a href="#">자격증 부분 </a><span> | </span><span>';
						if(this.RESUME_SAL_START!=null){
							totalResumes+='<span>'+this.RESUME_SAL_START+'~'+this.RESUME_SAL_END+'</span>';
						}else{
							totalResumes+='<span>면접 후 결정</span>';
						}
						totalResumes+='</span> | <span>'+this.AREA_NAME+'</span></p><p style="margin-top:8px; margin-bottom:8px; color:#b8b8b8;">'+this.OCCU_NAME+' '+ this.SEC_NAME+'</p>'+
					'</td>'+
					'<td style="text-align:center;">'+this.LAST_UPDATE+'</td>'+
				'</tr>'
				});
				
				$('.resume_body').html(totalResumes);
				
				if(totalCount==0){
					return false;		
				}
				//페이징처리
				pagination($("#currentPage").val(), 6, 10, totalCount);
				
				$('#divPage').html("");
				
				//이전 블럭
				if(firstPage>1){
					var anchorEl = $("<a href='#'></a>").html("<img src='<c:url value='/images1/first.JPG'/>'>").attr('onclick','$.send('+(firstPage-1)+')');
					$('#divPage').append(anchorEl);
				}
				
				for(var i=firstPage;i<=lastPage;i++){
					var anchorEl="";
					
					if(i==currentPage){
						var anchorEl = $("<span style='font-weight:bold; color:blue;'></span>").html(i);
					}else{
						var anchorEl = $("<a href='#'></a>").html("["+i+"]").attr('onclick','$.send('+i+')');
					}
					
					$('#divPage').append(anchorEl);
				}//for
				
				//다음 블럭으로 이동
				if(lastPage<totalPage){
					var anchorEl = $('<a href="#"></a>').html("<img src='<c:url value='/images1/last.JPG'/>'>").attr('onclick','$.send('+(lastPage+1)+')');
					$("#divPage").append(anchorEl);
				}
			},
			error:function(xhr, status, error){
				alert("에러 발생 : "+status+"=>"+error);
			}
		});
	}
	$('#countPerPage').change(function(){
		countPerPage=$(this).val();
	});
	
	var countPerPage = $('#countPerPage>option:selected').val();
	
	jQuery.ajaxSettings.traditional = true;/*이게 없으면 AJAX로 배열의 형태 데이터값을 보내지 못함*/
	
	
	$('.EduColDetaillist li, .EduCollist li, input[name=EduSelectBox], .positionSelectVal>li, .rankSelectVal>li, .empTypeselectVal>li, .AreaSelectLI li,input[name=Genderm],input[name=Gender],.CareerCheckBox input[type=checkbox],.hope-occupation input[type=checkbox],input[name=AreaSelectBox],.hope-sectors input[type=checkbox]').click(function(){

		var currentPage = $('#currentPage').val();
		$.ajax({
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			type:"POST",
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
				"Hopesectors":Hopesectors,
				"countPerPage":countPerPage,
				"currentPage":currentPage
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
						'<span>(<b>'+this.RESUME_GENDER+'</b> <b>'+this.RESUME_BIRTH+'</b>)</span>'+
						'</div>'+
					'</td>'+
					'<td style="padding-left: 3em;"><span class="career_exper" style="color:#6b80f1;">경력부분</span>'+
						'<span class="career_exper_titles">'+this.RESUME_TITLE+'</span>'+
						'<p class="career_edu_title" style="margin-top:8px; margin-bottom:8px;">당산대학교 님들과(셀렉해야됌)</p>'+
						'<p class="career_and_hope" style="margin-top:8px; margin-bottom:8px;"><a href="#">자격증 부분 </a><span> | </span><span>';
						if(this.RESUME_SAL_START!=null){
							totalResumes+='<span>'+this.RESUME_SAL_START+'~'+this.RESUME_SAL_END+'</span>';
						}else{
							totalResumes+='<span>면접 후 결정</span>';
						}
						totalResumes+='</span> | <span>'+this.AREA_NAME+'</span></p><p style="margin-top:8px; margin-bottom:8px; color:#b8b8b8;">'+this.OCCU_NAME+' '+ this.SEC_NAME+'</p>'+
					'</td>'+
					'<td style="text-align:center;">'+this.LAST_UPDATE+'</td>'+
				'</tr>'
				});
				
				$('.resume_body').html(totalResumes);
				
				if(totalCount==0){
					return false;		
				}
				//페이징처리
				pagination($("#currentPage").val(), 6, 10, totalCount);
				
				$('#divPage').html("");
				
				//이전 블럭
				if(firstPage>1){
					var anchorEl = $("<a href='#'></a>").html("<img src='<c:url value='/images1/first.JPG'/>'>").attr('onclick','$.send('+(firstPage-1)+')');
					$('#divPage').append(anchorEl);
				}
				
				for(var i=firstPage;i<=lastPage;i++){
					var anchorEl="";
					
					if(i==currentPage){
						var anchorEl = $("<span style='font-weight:bold; color:blue;'></span>").html(i);
					}else{
						var anchorEl = $("<a href='#'></a>").html("["+i+"]").attr('onclick','$.send('+i+')');
					}
					
					$('#divPage').append(anchorEl);
				}//for
				
				//다음 블럭으로 이동
				if(lastPage<totalPage){
					var anchorEl = $('<a href="#"></a>').html("<img src='<c:url value='/images1/last.JPG'/>'>").attr('onclick','$.send('+(lastPage+1)+')');
					$("#divPage").append(anchorEl);
				}
			},
			error:function(xhr, status, error){
				alert("에러 발생 : "+status+"=>"+error);
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
</script>
<link rel="stylesheet" href="<c:url value='/css/Search-TS.css'/>">
<div class="talentoverscroll" style="margin-bottom:3em;">
<div class="talentedsearchcontainer" style="padding-bottom:3em;">
	<div class="TScontent">
		<div style="width:100%;height:3em; padding-left:6em; padding-bottom:1em; margin-bottom:1.5em;">
			<select class="one-list">
				<option>전체</option>
				<option>회사명</option>
				<option>직종</option>
				<option>업종</option>
				<option>학교명</option>
				<option>전공계열/학과</option>
				<option>이력서내용</option>
				<option>이력서번호</option>
			</select>
			&nbsp;
			&nbsp;
			<input class="one-text-search" type="text" style="display: inline-block;">
			<input class="one-button search-button" type="button" value="검색">
		</div>
		<div class="TSarea"><!-- 검색바 전체 디브 -->
				<div class="TSpanel"><!--윗부분  -->
					<ul class="optionbar" style="margin-top: 1.5em;">
						<li><a href="#" id="all" class="img-opa"><img src="<c:url value='/icon/magnifying glass.jpeg'/>">간단검색</a></li><!-- 간단검색 -->
						<li><a href="#" id="career-old" class="img-opa"><img src="<c:url value='/icon/TEAM.jpeg'/>">경력/성별</a></li><!--경력,성별,나이  -->
						<li><a href="#" id="occupation" class="img-opa"><img src="<c:url value='/icon/bag.jpeg'/>">직종</a></li><!--직종  -->
						<li><a href="#" id="education" class="img-opa"><img  src="<c:url value='/icon/school.jpeg'/>">학력</a></li><!--학력  -->
						<li><a href="#" id="area" class="img-opa"><img  src="<c:url value='/icon/Destination 1.jpeg'/>">지역</a></li><!--지역  -->
						<li><a href="#" id="sectors" class="img-opa"><img  src="<c:url value='/icon/building.jpeg'/>">업종</a></li><!--업종  -->
						<li><a href="#" id="workingStyle" class="img-opa"><img  src="<c:url value='/icon/money.jpeg'/>">근무형태</a></li><!--근무형태,급여  -->
						<li><a href="#" id="rank" class="img-opa"><img  src="<c:url value='/icon/businesscard.jpeg'/>">직급/직책</a></li><!--직급,직책  -->
					</ul>
					<div id="alldetail" class="TSoption" style="margin-top:1em;">
						<!-- 간단보기 부분 -->
						<c:import url="/TalentManagement/all.do"></c:import>
						<!-- 경력/나이 부분 -->
						<c:import url="/TalentManagement/CareerOrOld.do"></c:import>
						<!-- 희망 직종 부분 -->
						<c:import url="/TalentManagement/hopeOccupation.do"></c:import>
						<!-- 학력 부분 -->
						<c:import url="/TalentManagement/education.do"></c:import>
						<!-- 지역 부분 -->
						<c:import url="/TalentManagement/area.do"></c:import>
						<!-- 업종 부분 -->
						<c:import url="/TalentManagement/sectors.do"></c:import>
						<!-- 근무형태 부분 -->
						<c:import url="/TalentManagement/workingStyle.do"></c:import>
						<!-- 랭크 부분 -->
						<c:import url="/TalentManagement/rank.do"></c:import>
					</div><!-- TSoption -->
				</div><!-- TSpanel -->
		</div>
		<div class="TSdetail" style="float:left;width:70%; margin-left: 5em;"><!-- 게시판 형태의 이력서 간단 보기 -->
			<div class="col-div-100-10" style="padding: 1em; text-align: right;">
				<input type="hidden" name="currentPage" id="currentPage" value="1"/>
				<select class="one-list" id="countPerPage" name="countPerPage">
					<option value="10">10개씩 보기</option>
					<option value="20">20개씩 보기</option>
					<option value="30">30개씩 보기</option>
					<option value="50">50개씩 보기</option>
					<option value="100">100개씩 보기</option>
			</select>
			</div>
			<!-- 이력서 부분 -->
			<table style="width:100%; float:left;">
				<thead>
					<tr style="height:50px;">
						<th style="width:5%; background:#f4f4f4; text-align:center;"></th>
						<th style="width:25%; background:#f4f4f4; text-align:center;">이름</th>
						<th style="width:55%; background:#f4f4f4; text-align:center;">이력서 요약</th>
						<th style="width:15%; background:#f4f4f4; text-align:center;">업데이트일</th>
					</tr>
				</thead>
				<tbody class="resume_body">
				<c:forEach var="vo" items="${Resumelist }">	
						<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="<c:url value='/icon/star.jpeg'/>"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="<c:url value='/icon/beb42.jpeg'/>" style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">${vo.RESUME_NAME }</strong><br>
							<span>(<b>${vo.RESUME_GENDER } </b><b>${vo.RESUME_BIRTH }</b>)</span>
							</div>
						</td>
						<td style="padding-left: 3em;"><span class="career_exper" style="color:#6b80f1;">${vo.RESUME_CAREER_LIST }경력부분</span>
							<span class="career_exper_titles">${vo.RESUME_TITLE }</span>
							<p class="career_edu_title" style="margin-top:8px; margin-bottom:8px;">당산대학교 님들과(셀렉해야됌)</p>
							<p class="career_and_hope" style="margin-top:8px; margin-bottom:8px;"><a href="#">자격증 부분 </a><span> | </span><span>
							<c:if test="${!empty vo.RESUME_HOPE_SALARY }">
								${ vo.RESUME_HOPE_SALARY }
							</c:if>
							<c:if test="${empty vo.RESUME_HOPE_SALARY }">
								면접 후 결정 
							</c:if>
							
							</span> | <span>${vo.AREA_NAME }</span></p><p style="margin-top:8px; margin-bottom:8px; color:#b8b8b8;">${vo.OCCU_NAME } ${vo.SEC_NAME }</p>
						</td>
						<td style="text-align:center;">${vo.LAST_UPDATE }</td>
					</tr>
				</c:forEach>
					<!-- <tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">유이령</strong><br>
							<span>(여 1993년, 25세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr>
					<tr style="border:1px solid #b8b8b8;">
						<td style="text-align:center;"><a href="#"><img src="icon/star.jpeg"></a></td>
						<td style="height:120px;">
							<div style="float:left;"><img src="icon/beb42.jpeg"  style="position:absolute; margin-left:30px; margin-top:-10px;"></div>
							<div style="float:left; margin-left:100px;">
								<strong style="">정채연</strong><br>
							<span>(여 1997년, 20세)</span>
							</div>
						</td>
						<td><span class="career_exper" style="color:#6b80f1;">경력 사항 부분</span>
							<span class="career_exper_titles">이력서 제목 부분</span>
							<p class="career_edu_title">당산대학교 님들과</p>
							<p class="career_and_hope"><a href="#">급식체 검정능력 1급 </a><span>|</span><span>면접 후 결정</span>|<span>서울,인천</span></p>
						</td>
						<td style="text-align:center;">2017-01-01</td>
					</tr> -->
				</tbody>
			</table>
			
			
			<div id="divPage"></div>
		</div><!-- TSdetail -->

		<div class="TSside" style="position:relative;float:left; text-align: center; border:1px solid #b8b8b8; border-radius: 10px 10px 40px 40px;"><!-- 오른쪽 사이드바 -->
			<div class="col-div-80-15 side-manu" style="border-radius: 1em;">
				<span class="chbox-span" style="color:#5B5B5B; padding-top:0.4em;">최근 본 공고</span>&nbsp;&nbsp;<span class="chbox-span" style="cursor: pointer; color:#ff3c00;">0건</span>
			</div>
			<div class="col-div-80-20 side-manu" style="background:#92a2f4; border-radius: 1em; color:white; padding-top:1.1em; border:1px solid #6b80f1; cursor: pointer;">
				<span>기업회원로그인</span>
			</div>
			<div class="col-div-80-20 side-manu" style="background:#45b7ad; border-radius: 1em; color:white; padding-top:1.1em; cursor: pointer;">
				<span>일반회원로그인</span>
			</div>
		</div><!-- TSside -->
	</div><!--TScontent  -->
</div>
</div>
<%@include file="../index/footer.jsp" %>
</body>
</html>