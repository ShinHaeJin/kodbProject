<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/uptable.css" media="screen" type="text/css" />
    <link rel="stylesheet" href="css/upT.css" media="screen" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
/*  $(document).ready(function(){
    $("#uploadImg").change(function() {
		var img = new Array();
		s = document.getElementById("uploadImg").files;
		for (var i = 0; i < s.length; i++) {
			pdffile = document.getElementById("uploadImg").files[i];
			pdffile_url = URL.createObjectURL(pdffile);
			alert(pdffile_url);
			//images += '<video><source src='+ pdffile_url +' width=200 height=200 type=video/mp4 autoplay/></video>';
			//$('.oo').append(images);z
		 	img[i] = document.createElement('img');
			img[i].className = 'im'+i;
			$("#uptable1 tr:eq(0)").after(img[i]);
		 
			//var src = 'data/iframeData.xml';
			//loadDataByIframe(iframe, pdffile_url);
		 	$('.im'+i).attr('src', pdffile_url);
			$('.im'+i).attr('width', '490px');
		 	//$('#viewer').attr('src', pdffile_url);
		}
	});
});

	$(document).ready(function(){
	    $("#uploadVideo").change(function() {
			var iframe = new Array();
			var ad="";
			s = document.getElementById("uploadVideo").files;
			ad='<tr><td>다른사진추가</td></tr>'+
			'<tr><td><textarea name="comment" style="width: auto; height: 150px;"></textarea></td></tr>'+
			'<tr><td>날짜</td></tr>'+
			'<tr><td>해시태그</td></tr>';
			//$("#upV_td1").append(ad);
			$("#uptable2 tr:eq(0)").after(ad);
			for (var i = 0; i < s.length; i++) {
				pdffile = document.getElementById("uploadVideo").files[i];
				pdffile_url = URL.createObjectURL(pdffile);
			 	iframe[i] = document.createElement('iframe');
				iframe[i].className = 'vi'+i;
				$("#uptable2 tr:eq(0)").after(iframe[i]);
				//document.body.appendChild(iframe[i]);
			 	$('.vi'+i).attr('src', pdffile_url);
				$('.vi'+i).attr('frameborder', '0'); 
				$('.vi'+i).attr('scrolling', 'no'); 
				$('.vi'+i).attr('width', '490px');
				$('.vi'+i).attr('height', '280px'); 
			}
		});
	});
	
 */
 
 </script>
</head>
<body>

  <form id="upload" method="post" enctype="multipart/form-data">
  <fieldset>
    <legend>Upload an Image</legend>

    <div>
	    <input id="fileselect" type="file" name="fileselect[]" multiple="multiple" value="1"/>
	    <div id="filedrag">
        Or drop files here
      </div>
    </div>
  </fieldset>
</form>

<div id="messages">
  <p>Status Messages</p>
</div>

<br><hr><br>

 <form id="upload" method="post" enctype="multipart/form-data">
  <fieldset>
    <legend>Upload an Image</legend>

    <div>
	    <input id="fileselect" type="file" name="fileselect[]" multiple="multiple" value="2" />
	    <div id="filedrag">
        Or drop files here
      </div>
    </div>
  </fieldset>
</form>

<div id="messages">
  <p>Status Messages</p>
</div>


  <script src="js/index.js"></script>

<!-- 	<section id="photoUp">
	 <table id="uptable1" >
	   <tr><td id="upI_td1"></td></tr>
	   <tr><td id="upI_td2">  
	   <form action="upload.do" method="post" enctype="multipart/form-data">
	  	<input type="hidden" name="hidden" value="1">
	    <div class="upload1">
	        <input type="file"  name="fileNm" id="uploadImg" multiple/>
	    </div>
			<textarea name="comment" rows="30" cols="80" style="width: auto;">
			</textarea> 
		<input type="submit" value="upload">
		</form>
		</td></tr>
	   <tr><td id="upI_td3"></td></tr>
	   </table>
	</section>
	
	 <section id="videoUp">
	 <table id="uptable2">
	   <tr><td id="upV_td1"></td></tr>
	   <tr><td id="upV_td2">  
	   <form action="upload.do" method="post" enctype="multipart/form-data">
	  	<input type="hidden" name="hidden" value="2">
	    <div class="upload2">
	        <input type="file"  name="fileNm" id="uploadVideo" multiple/>
	    </div>비디오를 추가하세요!
		 	<textarea name="comment" rows="15" cols="80" style="width: auto;">
			</textarea> 
		
		</td></tr>
	   <tr><td id="upV_td3">닫기<input type="submit" value="upload"></td>
		</tr></form>
	   </table>
	</section>
	<div style="clear: both">
	</div> 
 -->
 <script src="js/upT.js"></script>
</body>
</html>