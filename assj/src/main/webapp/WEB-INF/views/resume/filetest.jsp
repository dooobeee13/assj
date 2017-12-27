<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
				<div class="my-auto">
					
					
				</div>
				
				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">추가</button>
				
				<!-- Modal -->
				<div id="myModal" class="modal fade" role="dialog">
				  <div class="modal-dialog">
				
				    <!-- Modal content-->
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				        <h4 class="modal-title">포트폴리오 / 첨부파일</h4>
				      </div>
				      <div class="modal-body">
				        <input type="file" class="form-control" name="modalFile" >
				        <hr>
				        <textarea rows="5" name="portIntro" placeholder="포트폴리오 혹은 첨부파일을 소개해주세요." class="form-control"></textarea>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" name="portModalOK" data-dismiss="modal">확인</button>
				      </div>
				    </div>
				
				  </div>
				</div>
				<script type="text/javascript">
				$(function(){
					$(document).on("click","button[name=portModalOK]",function(){
						
						$(this).parent().prev().find("input[type=file]").val();
						
						var $cloneFile = $(this).parent().prev().find("input[type=file]").clone();
						
						$(this).parent().parent().parent().parent().prev().prev().append($cloneFile).attr("name","portFilename");
						
						
					});
				});
				</script>
				</div>
</body>
</html>