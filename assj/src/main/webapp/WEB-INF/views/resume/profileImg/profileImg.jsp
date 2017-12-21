<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="JavaScript image cropper.">
  <meta name="keywords" content="HTML, CSS, JS, JavaScript, image cropping, cropper, cropperjs, cropper.js, front-end, web development">
  <meta name="author" content="Chen Fengyuan">
  <title>이력서 사진 등록</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/cropper.css">
  <link rel="stylesheet" href="css/main.css">
  <script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script type="text/javascript">
	$(function(){
		$('#profileImg').click(function(){
			$('#inputImage').click();
		});
		$('#useProfileImg').click(function(){
			/* $('#goImg').click(); */
			 var imgSrc = $('#resImg').children().attr("src");
			$(opener.document).find('#profileImg').attr("src",imgSrc);
			self.close();
			/* var dataURL = $('#resImg').children("img").cropper("getDataURL", "image/jpeg"); */
			//  var dataURL = $image.cropper("getDataURL", "image/jpeg");
				
		     /*  $(opener.document).find('#profileImg').attr("src",dataURL); */
		});
		$('#useCopImg').click(function(){
			var a = $(this).parent().siblings('.modal-body').find('canvas').attr('src');
			
		});
		
		
	});
	</script>
</head>
<!-- 
<button type="button" class="btn btn-primary" data-method="getCroppedCanvas" 
data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096 }">

            <span class="docs-tooltip" data-toggle="tooltip" title="사진을 등록합니다.">
              사진 등록하기
            </span>
          </button> 
 -->
<body>
  <!--[if lt IE 9]>
  <div class="alert alert-warning alert-dismissible fade show m-0 rounded-0" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
  </div>
  <![endif]-->

  

  <!-- Content -->
  <div class="container-fluid" >
  
    <div class="row">
    
    <div class="col-sm-6 col-md-5 col-md-offset-2">
   	 <label class="btn btn-primary btn-upload" for="inputImage" title="Upload image file" style="display: none;">
       <input type="file" class="sr-only" id="inputImage" name="file" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
       <span class="docs-tooltip" data-toggle="tooltip" title="Import image with Blob URLs">
         <span class="fa fa-upload"></span>
       </span>
     </label>
     <a class="btn btn-primary btn-block" href="#" id="profileImg" >사진 첨부하기</a>
   </div>
   		
   <div class="col-sm-6 col-md-5 col-md-offset-2">  		    
   		<a class="btn btn-primary btn-block" href="#" id="useProfileImg" >사진 등록하기</a>
   </div>
    
    <br><br><br>
      <div class="col-md-6">
        <!-- <h3>Demo:</h3> -->
        <div class="img-container">
          <img src="${pageContext.request.contextPath}/resume/img/noimg.gif" alt="Picture">
        </div>
      </div>
      <div class="col-md-6">
        <!-- <h3>Preview:</h3> -->
        <div class="docs-preview clearfix">
          <div class="img-preview preview-lg" id="resImg" style="display: inline-block; vertical-align: middle; float: none;"></div>
          <!-- 
          <div class="img-preview preview-md"></div>
          <div class="img-preview preview-sm"></div>
          <div class="img-preview preview-xs"></div>
           -->
           <div id="resTest"></div>
        </div>

<div class="docs-data" style="display: none;">
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataX">X</label>
            <input type="text" class="form-control" id="dataX" placeholder="x">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataY">Y</label>
            <input type="text" class="form-control" id="dataY" placeholder="y">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataWidth">Width</label>
            <input type="text" class="form-control" id="dataWidth" placeholder="width">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataHeight">Height</label>
            <input type="text" class="form-control" id="dataHeight" placeholder="height">
            <span class="input-group-addon">px</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataRotate">Rotate</label>
            <input type="text" class="form-control" id="dataRotate" placeholder="rotate">
            <span class="input-group-addon">deg</span>
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataScaleX">ScaleX</label>
            <input type="text" class="form-control" id="dataScaleX" placeholder="scaleX">
          </div>
          <div class="input-group input-group-sm">
            <label class="input-group-addon" for="dataScaleY">ScaleY</label>
            <input type="text" class="form-control" id="dataScaleY" placeholder="scaleY">
          </div>
        </div>
        
      </div>
    </div>
    
    
    <div class="row" id="actions">
      <div class="col-md-9 docs-buttons">
        <!-- <h3>Toolbar:</h3> -->
        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="move" title="Move">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setDragMode(&quot;move&quot;)">
              <span class="fa fa-arrows"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setDragMode(&quot;crop&quot;)">
              <span class="fa fa-crop"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="zoom" data-option="0.1" title="Zoom In">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(0.1)">
              <span class="fa fa-search-plus"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="zoom" data-option="-0.1" title="Zoom Out">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(-0.1)">
              <span class="fa fa-search-minus"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="move" data-option="-10" data-second-option="0" title="Move Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(-10, 0)">
              <span class="fa fa-arrow-left"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="move" data-option="10" data-second-option="0" title="Move Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(10, 0)">
              <span class="fa fa-arrow-right"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="-10" title="Move Up">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(0, -10)">
              <span class="fa fa-arrow-up"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="10" title="Move Down">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(0, 10)">
              <span class="fa fa-arrow-down"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="rotate" data-option="-45" title="Rotate Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotate(-45)">
              <span class="fa fa-rotate-left"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="rotate" data-option="45" title="Rotate Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotate(45)">
              <span class="fa fa-rotate-right"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="scaleX" data-option="-1" title="Flip Horizontal">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scaleX(-1)">
              <span class="fa fa-arrows-h"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="scaleY" data-option="-1" title="Flip Vertical">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scaleY(-1)">
              <span class="fa fa-arrows-v"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.crop()">
              <span class="fa fa-check"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="clear" title="Clear">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.clear()">
              <span class="fa fa-remove"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="disable" title="Disable">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.disable()">
              <span class="fa fa-lock"></span>
            </span>
          </button>
          <button type="button" class="btn btn-primary" data-method="enable" title="Enable">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.enable()">
              <span class="fa fa-unlock"></span>
            </span>
          </button>
        </div>

        <div class="btn-group">
          <button type="button" class="btn btn-primary" data-method="reset" title="Reset">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.reset()">
              <span class="fa fa-refresh"></span>
            </span>
          </button>
          <label class="btn btn-primary btn-upload" for="inputImage" title="Upload image file">
            <input type="file" class="sr-only" id="inputImage" name="file" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
            <span class="docs-tooltip" data-toggle="tooltip" title="Import image with Blob URLs">
              <span class="fa fa-upload"></span>
            </span>
          </label>
          <button type="button" class="btn btn-primary" data-method="destroy" title="Destroy">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.destroy()">
              <span class="fa fa-power-off"></span>
            </span>
          </button>
        </div>
        
       
        <div class="btn-group btn-group-crop" >
           <button type="button" id="goImg" class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ maxWidth: 4096, maxHeight: 4096 })">
              Get Cropped Canvas
            </span>
          </button> 
          <button type="button" class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;width&quot;: 160, &quot;height&quot;: 90 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ width: 160, height: 90 })">
              160&times;90
            </span>
          </button>
          <button type="button" class="btn btn-success" data-method="getCroppedCanvas" data-option="{ &quot;width&quot;: 320, &quot;height&quot;: 180 }">
            <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ width: 320, height: 180 })">
              320&times;180
            </span>
          </button> 
        </div>

        <!-- Show the cropped image in modal -->
        <div class="modal fade docs-cropped" id="getCroppedCanvasModal" role="dialog" aria-hidden="true" 
        aria-labelledby="getCroppedCanvasTitle" tabindex="-1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="getCroppedCanvasTitle">Cropped</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body"></div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <a class="btn btn-primary" id="download" href="javascript:void(0);" download="cropped.jpg">Download</a>
                <a class="btn btn-primary" id="useCopImg" href="javascript:void(0);" >사진 등록</a>
              </div>
            </div>
          </div>
        </div><!-- /.modal -->
        
        
        <div style="display: none;">        

        <button type="button" class="btn btn-secondary" data-method="getData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getData()">
            Get Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="setData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setData(data)">
            Set Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="getContainerData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getContainerData()">
            Get Container Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="getImageData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getImageData()">
            Get Image Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="getCanvasData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCanvasData()">
            Get Canvas Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="setCanvasData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setCanvasData(data)">
            Set Canvas Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="getCropBoxData" data-option data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCropBoxData()">
            Get Crop Box Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="setCropBoxData" data-target="#putData">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setCropBoxData(data)">
            Set Crop Box Data
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="moveTo" data-option="0">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.moveTo(0)">
            Move to [0,0]
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="zoomTo" data-option="1">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoomTo(1)">
            Zoom to 100%
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="rotateTo" data-option="180">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotateTo(180)">
            Rotate 180°
          </span>
        </button>
        <button type="button" class="btn btn-secondary" data-method="scale" data-option="-2" data-second-option="-1">
          <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scale(-2, -1)">
            Scale (-2, -1)
          </span>
        </button> 
        
        <textarea class="form-control" id="putData" rows="1" placeholder="Get data to here or set data with this value"></textarea>

</div>
      </div><!-- /.docs-buttons -->

      <div class="col-md-3 docs-toggles">
        <!-- <h3>Toggles:</h3> -->
        <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
          <label class="btn btn-primary active">
            <input type="radio" class="sr-only" id="aspectRatio1" name="aspectRatio" value="1.7777777777777777">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 16 / 9">
              16:9
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio2" name="aspectRatio" value="1.3333333333333333">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 4 / 3">
              4:3
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio3" name="aspectRatio" value="1">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 1 / 1">
              1:1
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio4" name="aspectRatio" value="0.6666666666666666">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 2 / 3">
              2:3
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="aspectRatio5" name="aspectRatio" value="NaN">
            <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: NaN">
              Free
            </span>
          </label>
        </div>
        <!-- <div style="display: none;"> -->
<div >
      
        <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
          <label class="btn btn-primary active">
            <input type="radio" class="sr-only" id="viewMode0" name="viewMode" value="0" checked>
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 0">
              VM0
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="viewMode1" name="viewMode" value="1">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 1">
              VM1
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="viewMode2" name="viewMode" value="2">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 2">
              VM2
            </span>
          </label>
          <label class="btn btn-primary">
            <input type="radio" class="sr-only" id="viewMode3" name="viewMode" value="3">
            <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 3">
              VM3
            </span>
          </label>
        </div> 

        <div class="dropdown dropup docs-options">
          <button type="button" class="btn btn-primary btn-block dropdown-toggle" id="toggleOptions" data-toggle="dropdown" aria-expanded="true">
            Toggle Options
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" role="menu" aria-labelledby="toggleOptions">
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="responsive" checked>
                responsive
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="restore" checked>
                restore
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="checkCrossOrigin" checked>
                checkCrossOrigin
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="checkOrientation" checked>
                checkOrientation
              </label>
            </li>

            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="modal" checked>
                modal
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="guides" checked>
                guides
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="center" checked>
                center
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="highlight" checked>
                highlight
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="background" checked>
                background
              </label>
            </li>

            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="autoCrop" checked>
                autoCrop
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="movable" checked>
                movable
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="rotatable" checked>
                rotatable
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="scalable" checked>
                scalable
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="zoomable" checked>
                zoomable
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="zoomOnTouch" checked>
                zoomOnTouch
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="zoomOnWheel" checked>
                zoomOnWheel
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="cropBoxMovable" checked>
                cropBoxMovable
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="cropBoxResizable" checked>
                cropBoxResizable
              </label>
            </li>
            <li class="dropdown-item">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="toggleDragModeOnDblclick" checked>
                toggleDragModeOnDblclick
              </label>
            </li>
          </ul>
        </div>

       <!--  <a class="btn btn-success btn-block" data-toggle="tooltip" href="https://fengyuanchen.github.io/photo-editor" title="An advanced example of Cropper.js">Photo Editor</a>

 		
     <!-- /.docs-toggles -->
    </div>
  </div>
</div>

	<div class="row">
	
		<div class="col-md-12" style="background-color:#E6E6E6 ">
		
<pre>1.	[사진 첨부하기] 를 클릭, 등록할 사진을 선택한 후,
	이력서 및 회원정보에 첨부할 영역을 마우스로 드래그하여 선택해 주십시오.
	(사진 파일은 10MB 미만의 JPG, GIF 파일만 업로드가 가능합니다)
2.	이력서용 사진 칸에 원하는 사진 영역 선택이 완료되면
	[사진 등록하기]를 클릭해주십시오.
3.	사진을 새로 등록 또는 변경하면 작성한 이력서에서도 사진이 변경됩니다.
	(이력서 권장 사진 크기는 100*140 픽셀입니다.)</pre>
		
		</div>
	
	</div>


</div>
  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.bundle.min.js"></script>
  <script src="https://fengyuanchen.github.io/js/common.js"></script>
  <script src="js/cropper.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
