<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<% 
	String id = "";
	try{
		id =(String)session.getAttribute("id");
		
		if(id==null || id==""){
			response.sendRedirect("index.html");
		}
%>			
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>about Time</title>

	<link rel="icon" href="img/favicon.ico" type="image/png">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0"> <!-- needed for mobile devices -->
  
	<!-- popup upload창 -->
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<link href="http://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.css" rel="stylesheet" type="text/css">
	<link href="css/up_pop.css" rel="stylesheet" type="text/css">
	
  	<!-- Import font -->
  	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
	<link rel='stylesheet prefetch' href='http:////netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css'>
  	
  	<!-- Style for Bootstrap -->
  	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  	
  	<!-- Custom style for the demo-->
  	<link rel="stylesheet" href="css/demo.css">

  	<!-- Media Boxes CSS files -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="css/mediaBoxes.css">
	
	<!-- popup -->
   	 <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
	 <link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>
	 <link rel="stylesheet" href="css/popup.css" media="screen" type="text/css" />
    	
   	<!-- icon -->
	<link rel="stylesheet" href="css/menubar.css" media="screen" type="text/css" />

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<style>

	/* == LETS MODIFY SOME COLORS AND STYLE FOR THE DEMO == */

		
		/* *********** STYLE OF GRID 1 *********** */
		#search{
  			float: right;
  		}


		/* *********** STYLE OF GRID 2 *********** */
		#filter2 li a.selected,
		#grid2 .thumbnail-overlay .fa{
			background: #28ac86;
		}
		.media-boxes-drop-down-menu > li > a.selected,
		#grid2 .media-box-date,
		#grid2 .media-box-author{
      		color: #28ac86;
    	}
    	.media-boxes-drop-down{
  			float: right;
  			margin-left: 5px;
  		}


    	/* *********** STYLE OF GRID 3 *********** */
		#sort2 .media-boxes-drop-down-menu > li > a.selected,
		#filter3 .media-boxes-drop-down-menu > li > a.selected,
		#grid3 .media-box-date{
      		color: #09b0dd;
    	}  	
    	#grid3 .thumbnail-overlay .fa{
			background: #09b0dd;
		}	

#upload1{
   border-top:dashed;
   border-bottom:dashed;
   border-color: #dddddd;
   border-radius: 5px;
   background: url(images/photoplus.png) no-repeat center;
   background-color:#f7f7f7;
   cursor:pointer;
   height: 200px;
   width: 597px;
   margin-left: -30px;
}

#upload2{
   border-top:dashed;
   border-bottom:dashed;
   border-color: #dddddd;
   border-radius: 5px;
   background: url(images/videoplus.png) no-repeat center;
   background-color:#f7f7f7;
   cursor:pointer;
   height: 200px;
   width: 597px;
   margin-left: -30px;
}

#upload3{
   border-top:dashed;
   border-bottom:dashed;
   border-color: #dddddd;
   border-radius: 5px;
   background: url(images/docuplus.png) no-repeat center;
   background-color:#f7f7f7;
   cursor:pointer;
   height: 200px;
   width: 597px;
   margin-left: -30px;
}

#upload1 input, #upload2 input, #upload3 input {
   filter: alpha(opacity=0);
   opacity: 0;
   cursor:pointer;
   height: 200px;
   width: 597;
}

#messages1, #messages2, #messages3 {
	width: 598px;
	margin-top: -52px;
	margin-left: -30px;
}

textarea {
	width: 100%;
	border-style: none;
    outline: none !important;
    padding: 10px;
    width: 597px;
    margin-left: -30px;
    overflow: hidden;
    font-family: 'Nanum Gothic', 돋움, Dotum, Sans-Serief;
    font-size: 15px;
}

#com1, #com2, #com3 {
	display: none;
}

#date {
    margin-top: -13px;
	margin-left: -20px;
    margin-bottom: -30px;
    outline: none !important;
}

#input-date{
	border-style: none;
    outline: none !important;
    color: #999999;
    font-family: 'Nanum Gothic', 돋움, Dotum, Sans-Serief;
    font-size: 15px;
}
	</style>
</head>
<body>
<div id="mask"> <!-- The transperent background overlay -->
<div class="model"> <!-- The popup -->
  <div class="constraint"> <!-- Popup content -->
   <!-- icon -->
    <jh>
    	<div class="icons" style="width: 60px;">
    	<a href="#" class="js-open-modal btn" data-modal-id="popup1"><img height = "60" src="images/pho.png"></a>
        </div>
    </jh>
    
  	<jh>
  		<div class="icons2" style="width: 60px;">
  			<a href="#" class="js-open-modal btn" data-modal-id="popup2"><img height="60" src="images/vid.png"></a>
        </div>
    </jh>
  	
    <jh>
    	<div class="icons3" style="width: 60px;">
    		<a href="#" class="js-open-modal btn" data-modal-id="popup3"><img height="60" src="images/mem.png"></a>
        </div>
    </jh>

     <jh>
          <div class="icons4" style="width: 60px;">
          	<a href="#" class="js-open-modal btn" data-modal-id="popup4"><img height="60" src="images/docu.png"></a>
          </div>
     </jh>
        <!-- icon -->
  </div>
<!-- /Popup content -->
</div>
</div> <!-- end popup -->

<!-- 업로드 팝업창 -->
<div id="popup1" class="modal-box">
  <header> <a href="#" class="js-modal-close close">×</a>
    <h3>사진업로드</h3>
  </header>
	    <form action="upload.do" method="post" enctype="multipart/form-data">
  <div class="modal-body">
  <p class="up1"><div id="messages1"></div></p>
	  	<input type="hidden" name="hidden" value="1"/>
	  	 <fieldset id="upform">
	    <div id="upload1">
	    	<input id="imgsel" type="file" name="fileNm" multiple="multiple"/>
	    </div>
	    <!-- comment -->
	    <div id="com1">
	    <div id="txt" style="margin-bottom: -20px;">
			<textarea id="text" name="comment" rows="7" cols="50" placeholder="comment.."></textarea>
		</div>
		<hr width="597px;" style="margin-left: -30px;">
		<!-- hash -->
		<div id="txt" style="width: 597px; margin-top: -20px; margin-bottom: -20px;">
			<textarea name="hash" rows="1" cols="50" placeholder="#해시" style="height: 50px;"></textarea>
		</div>
		<hr width="597px;" style="margin-left: -30px;">
		<div id="date">
	      <input id="input-date" type="date" name="date" value="1990-12-18">
  		</div>
		</div></fieldset>
  </div>
  <footer><input type="submit" value="upload" class="btn btn-small"><a href="#" class="btn btn-small js-modal-close">Close</a></footer>
</form>
</div>

<div id="popup2" class="modal-box">
  <header> <a href="#" class="js-modal-close close">×</a>
    <h3>동영상 업로드</h3>
  </header>
	 <form action="upload.do" method="post" enctype="multipart/form-data">
  <div class="modal-body">
  <p class="up2"><div id="messages2"></div></p>
	  	<input type="hidden" name="hidden" value="2">
	  	 <fieldset id="upform">
	    <div id="upload2">
	    	<input id="videosel" type="file" name="fileNm" multiple="multiple"/>
	    </div>
	    
	     <!-- comment -->
	    <div id="com2">
	    <div id="txt" style="margin-bottom: -20px;">
			<textarea id="text" name="comment" rows="7" cols="50" placeholder="comment.."></textarea>
		</div>
		<hr width="597px;" style="margin-left: -30px;">
		<!-- hash -->
		<div id="txt" style="width: 597px; margin-top: -20px;">
			<textarea name="hash" rows="1" cols="50" placeholder="#해시" style="height: 50px;"></textarea>
		</div>
			<hr width="597px;" style="margin-left: -30px;">
	<div id="date">
	      <input id="input-date" type="date" name="date" value="1990-12-18">
  		</div>
		</div></fieldset>
  </div>
  <footer><input type="submit" value="upload" class="btn btn-small"><a href="#" class="btn btn-small js-modal-close">Close</a></footer>
</form>
</div>

<div id="popup3" class="modal-box">
  <header> <a href="#" class="js-modal-close close">×</a>
    <h3>메모쓰기</h3>
  </header>
	 <form action="upload.do" method="post" enctype="multipart/form-data">
  <div class="modal-body">
    <p>메모</p>
  </div>
  <footer><input type="submit" value="upload" class="btn btn-small"><a href="#" class="btn btn-small js-modal-close">Close</a> </footer>
</form>
</div>

<div id="popup4" class="modal-box">
  <header><a href="#" class="js-modal-close close">×</a>
    <h3>문서업로드</h3>
  </header>
	    <form action="upload.do" method="post" enctype="multipart/form-data">
  <div class="modal-body">
  <p class="up3"><div id="messages3"></div></p>
	  	<input type="hidden" name="hidden" value="3">
	  	 <fieldset id="upform">
	    <div id="upload3">
	    	<input id="docsel" type="file" name="fileNm" multiple="multiple"/>
	    </div>
	     <!-- comment -->
	    <div id="com3">
	    <div id="txt" style="margin-bottom: -20px;">
			<textarea id="text" name="comment" rows="7" cols="50" placeholder="comment.."></textarea>
		</div>
		<hr width="597px;" style="margin-left: -30px;">
		<!-- hash -->
		<div id="txt" style="width: 597px; margin-top: -20px;">
			<textarea name="hash" rows="1" cols="50" placeholder="#해시" style="height: 50px;"></textarea>
		</div>
		<hr width="597px;" style="margin-left: -30px;">
		<div id="date">
	      <input id="input-date" type="date" value="1990-12-18">
  		</div>
		</div></fieldset>
  </div>
  <footer><input type="submit" value="upload" class="btn btn-small"><a href="#" class="btn btn-small js-modal-close">Close</a></footer>
</form>
</div>
	<!-- 상단 메뉴바 -->
	<div class="header">
		<div class="content">
			<div class="navbar navbar-default" role="navigation" >
			  <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand" href="#">
			    	<img src="img/logo.png" alt="" style="margin-right:5px;"> AboutTime
			    </a>
			  </div>

			  <!-- Collect the nav links, forms, and other content for toggling -->
		  <form id="home" action="selectPhotoByMonthOne.do" method="post">
			  <input type="hidden" name="hidden" value="1">
			  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			    <ul class="nav navbar-nav navbar-right">
			      <li><a href="#" onclick="document.getElementById('home').submit();"><i class="fa fa-home fa-3x" style="margin-top: -10px;"></i></a></li>
			      <li><a href="mypage.html"><i class="fa fa-user fa-3x" style="margin-top: -10px;"></i></a></li>
			      <li><a class="model_link" href="#"><i class="fa fa-pencil fa-3x" style="margin-top: -10px;"></i></a></li>
			      <li class="get-it-now">
			      		<a href="logout.jsp" >LogOut</a>
			      </li>
			    </ul>
			  </div>
			 </form>
			</div><!-- /.navbar -->
    
		</div>
	</div>

	<div class="section">
		<div class="content">
			<h2><span class="glyphicon glyphicon-th-large"></span> Grid of Posts with Images, Videos and Sounds.</h2>
			<p></p>
		</div>
	</div>
	
	<div class="grid-section" style="background-image: url('img/bg-blur1.jpg');"><!-- 배경 -->

		<div class="content grid-container">

		<!--  ================== MEDIA BOXES ================== -->
     <div class="filters-container">
            
            <ul class="media-boxes-filter" id="filter">
              <li><a class="selected" href="#" data-filter="*">All</a></li>
              <li><a href="#" data-filter=".category1">Category 1</a></li>
              <li><a href="#" data-filter=".category2">Category 2</a></li>
              <li><a href="#" data-filter=".category3">Category 3</a></li>
              <li><a href="#" data-filter=".category1, .category2">Category 1 and 2</a></li>
            </ul>
        </div>

		<div id="grid">
<!--  Select Photo By Yar -->
	<!-- -------------------------- BOX MARKUP -------------------------- --> 
	<%-- <c:if test="${requestScope.hidden eq '1' }"> --%>
					<c:if test="${requestScope.allPhoto != null}">
						<c:forEach items="${requestScope.allPhoto}" var="photo">
							<div class="media-box category1">
								<div class="media-box-image mb-open-popup">
									<div data-width="240" data-height="161"
										data-thumbnail="${photo.pPath}"></div>
									<%-- <div data-popup="${photo.pPath}" ></div> --%>
									<div class="thumbnail-overlay" onclick="location.href='selectByMonth.do?year=${photo.pYear}&month=${photo.pMonth}';">
										<div class="media-box-title" >${photo.pComment}</div>
										<div class="media-box-date">${photo.pYear}-${photo.pMonth}-${photo.pDay}</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
					<!-- Video -->
						<c:if test="${requestScope.allVideo != null}">
						<c:forEach items="${requestScope.allVideo}" var="video">
							<div class="media-box category1">
								<div class="media-box-image mb-open-popup">
									<div data-width="240" data-height="161"
										data-thumbnail="${video.vPath}"></div>
									<%-- <div data-popup="${photo.pPath}" ></div> --%>
									<div class="thumbnail-overlay" onclick="location.href='selectByMonth.do?year=${video.vYear}&month=${video.vMonth}';">
										<div class="media-box-title" >${video.vComment}</div>
										<div class="media-box-date">${video.vYear}-${video.vMonth}-${video.vDay}</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
<%--  </c:if> 
 --%>
			  
		</div> <!-- #container -->

		<!--  ================== END MEDIA BOXES ================== -->

		</div>

	</div>

	

	<div class="to-top">
		<i class="glyphicon glyphicon-chevron-up"></i>
	</div>

	<!-- jQuery 1.7.2+ -->
	<script src="js/plugin/jquery-1.10.2.min.js"></script>
	
	<!-- Media Boxes JS files -->
	<script src="js/plugin/jquery.isotope.min.js"></script>
	<script src="js/plugin/jquery.imagesLoaded.min.js"></script>
	<script src="js/plugin/jquery.transit.min.js"></script>
	<script src="js/plugin/jquery.easing.js"></script>
	<script src="js/plugin/waypoints.min.js"></script>
	<script src="js/plugin/modernizr.custom.min.js"></script>
	<script src="js/plugin/jquery.magnific-popup.min.js"></script>
	<script src="js/plugin/jquery.mediaBoxes.js"></script>

	<script>

	    $('#grid').mediaBoxes({
	    	filterContainer: '#filter',
	    	search: '#search',
	    	columns: 6,
	    	boxesToLoadStart: 16,
	    	horizontalSpaceBetweenBoxes: 10,
	    }); 
	    
	</script>


	<!-- Bootstrap JS file -->
	<script src="bootstrap/bootstrap.min.js"></script>
	<script src="js/demo.js"></script>
	
	<!-- popup -->
	 <script src='http://thecodeplayer.com/u/js/jquery.easing.min.js'></script>	
	<!--  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>
	 --> <script src="js/popup.js"></script>

<!-- 업로드 실행 --> 
 <script src="js/upload2.js"></script>
 <script src="js/uploadPop.js"></script>

</body>
</html>

<%
		
	}finally{
	
	}
	
	%>
