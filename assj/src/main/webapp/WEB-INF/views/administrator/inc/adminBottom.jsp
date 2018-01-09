<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		</div>
		<div id="mySidenav" class="sidenav">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="font-size: 27px">&times;</a>
		  <a href="#" class="AdminChat">관리자 채팅방</a>
		  <a href="#"></a>
		  <a href="<c:url value='/index.do'/>">공채 홈페이지 가기</a>
		  <a href="#" class="CreateAdmin">새로운 관리자 생성</a>
		  <a href="<c:url value='/administrator/login/adminLogout.do'/>">로그아웃</a>
		</div>
	</article>
	<div id="modalLayer">
	  <div class="modalContent">
		  <div style="padding:5px; margin:0 auto; width:95%; height:90%; position:relative;">
	  		<img class="closeModal"src="<c:url value='/icon/xbutton.png'/>" style="float:right;margin-bottom:1em; width:22px;">
		  <div class="newsDetail" style="margin:0 auto; width:100%; height:95%;">
		 	<div class="col-div-100-20 divMainbox" style="margin-bottom:1em;">
				<h2 class="divMainbox-title" style="padding-left:1em; text-align:center;">관리자 채팅</h2>
			</div>
		  		<!-- 채팅용 화면 -->
		    	<div class="ChatList" style="width:93%;height:80%;overflow-y:scroll; border:1px solid #b8b8b8;padding: 1em; background:white; overflow-x:hidden;">
			    	<!-- 개인 채팅 내용 -->

		    	</div>
		    	
		    	<!-- 채팅판 -->
		    	<div style="width:93%; padding:1em;">	    	
			    	<div class="col-div-70-100">
			    		<textarea id="chatContent" rows="7" cols="37" style="resize: none;" onkeypress="if(event.keyCode==13) {EnterPress();}"></textarea>
			    	</div>
			    	<div class="col-div-30-100" style="float:right;">
			    		<input id="insertChat" class="one-button" style="float:right; padding:0.4em; width:60px" type="button" value=" 전 송 ">
			    	</div>
		    	</div>
		  </div>
	  	</div>
	  </div>
	</div>
</div>
</body>
</html>