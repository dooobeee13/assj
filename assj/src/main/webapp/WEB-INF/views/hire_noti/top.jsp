<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String t_userid=(String)session.getAttribute("userid");   	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/mainstyle.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/clear.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/layout.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/mystyle.css"/>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>      
    <![endif]-->
</head>

<body>	
	<!-- 상단 띠 이미지 영역-->
	<div id="topImg" class="top_Img" style="background:url(<%=request.getContextPath()%>/images/bg_top1.PNG)  repeat-x">
		&nbsp;
	</div>

	<div id="wrap">
		<!-- header -->				
		<header id="header">
			<h1><a href="<%=request.getContextPath()%>/index.jsp"><img alt="로고 이미지" src="<%=request.getContextPath()%>/images/herbLogo7.jpg" height="95px" /></a></h1>
			<%-- <nav id="headerRight">
				<ul class="views">	
				<!-- 로그인 안된 경우 -->
				<%if(t_userid==null || t_userid.isEmpty()){ %>
					<li><a href="<%=request.getContextPath()%>/login/login.jsp">로그인</a></li>
					<li><a href="<%=request.getContextPath()%>/member/agreement.jsp">회원가입</a></li>	            
				<%}else{ %>
				<!-- 로그인 된 경우 -->
					<li><a href="<%=request.getContextPath()%>/login/logout.jsp">로그아웃</a></li>
					<li><a href="<%=request.getContextPath()%>/member/memberEdit.jsp">회원정보수정</a></li>	    
					<li><a href="<%=request.getContextPath()%>/member/memberOut.jsp">회원탈퇴</a></li>	    
				<%}//if %>
				
					<li><a href="<%=request.getContextPath()%>/shop/cart/cartList.jsp">장바구니</a></li>
					<li><a href="<%=request.getContextPath()%>/shop/order/orderList.jsp">주문내역</a></li>
					<li><a href="<%=request.getContextPath()%>/shop/mypage.jsp">마이페이지</a></li>
					<li><a href="<%=request.getContextPath()%>/board/list.jsp">고객센터</a></li>					
				</ul>				
			</nav> --%>
		</header>

		<nav id="top_navi">
			<div id='cssmenu'>
				<ul class="nav nav-tabs">			   
				   <li ><a href="#tab1" data-toggle="tab"><span>공고등록</span></a></li>
				   <li><a href="#tab2" data-toggle="tab"><span>공고.지원자 관리</span></a></li>
				   <li><a href="#tab3" data-toggle="tab"><span>인재검색</span></a></li>
				   <li><a href="#tab4" data-toggle="tab"><span>인재관리</span></a></li>
				   <li><a href="#tab5" data-toggle="tab"><span>인적성검사</span></a></li>
				   <li><a href="#tab6" data-toggle="tab"><span>면접관리</span></a></li>
				</ul>
			</div>
		</nav>
		
		<!-- 라인 이미지 영역-->
		<div id="topLine" class="top_Line" style="background:url(<%=request.getContextPath()%>/images/line6.jpg)  repeat-x;font-size:7px">
			&nbsp;
		</div>
		
	