<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

    <link rel="stylesheet" href="css/timeline.css" media="screen" type="text/css" />
        <link rel="stylesheet" href="css/neon.css" media="screen" type="text/css" />
        <!-- popup -->
          <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
		  <link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>
		  <link rel="stylesheet" href="css/popup.css" media="screen" type="text/css" />
    	<!-- popup -->
    	
    	<!-- icon -->
		  <link rel="stylesheet" href="css/menubar.css" media="screen" type="text/css" />
		<!-- icon -->
</head>
<script src="js/jquery-1.10.2.js"></script>

<body>

<div id="mask"> <!-- The transperent background overlay -->

<div class="model"> <!-- The popup -->

  <div class="constraint"> <!-- Popup content -->
   <!-- icon -->
<ul>
  <jh><a href="#">
    <div class="icons">
        <img height = "60" src="images/pho.png">
        </div>
  </jh>
    </a>

    <jh><a href="#">
      <div class="icons2">
          <img height="60" src="images/vid.png">
          </div>
   </jh>
      </a>

     <jh><a href="#">
        <div class="icons3">
            <img height="60" src="images/mem.png">
            </div>
    </jh>
        </a>

        <jh><a href="#">
          <div class="icons4">
              <img height="60" src="images/docu.png">
              </div>
        </jh>
          </a>
          </ul>
        <!-- icon -->
  </div>
<!-- /Popup content -->
</div>
</div> <!-- /The popup -->
<div class="wrap">
  <a class="model_link" href="#">WRITE</a><!-- The link -->
</div>
  <br><br>  
  
<div class="container">
<!-- 2009이전 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2"></ul><!-- 7-12월 -->

<!-- 2010 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2"></ul><!-- 7-12월 -->

<!-- 2011 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2"></ul><!-- 7-12월 -->

<!-- 2012 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2"></ul><!-- 7-12월 -->

<!-- 2013 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2"></ul><!-- 7-12월 -->

<!-- 2014 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2"></ul><!-- 7-12월 -->

<!-- 2015 -->
<ul class="grid1"></ul><!-- 1-6월 -->
<ul class="grid2" style="margin-right: 0px;"></ul><!-- 7-12월 -->
<div style="margin-top: auto;">
<div class="year">
<a href="#" class="animate">2009 이전</a></div>
<div class="year">
<a href="#" class="animate">2010</a></div>
<div class="year">
<a href="#" class="animate">2011</a></div>
<div class="year">
<a href="#" class="animate">2012</a></div>
<div class="year">
<a href="#" class="animate">2013</a></div>
<div class="year">
<a href="#" class="animate">2014</a></div>
<div class="year" style="margin-right: 0px;">
<a href="#" class="animate">2015</a></div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<ul>
<center>
 <div id="container2">
  <p><a href="메모">
    Photo
  </a></p>&nbsp;&nbsp;
    <p><a href="사진">
	Video
  </a></p>&nbsp;&nbsp;
    <p><a href="비디오">
    Document
  </a></p>&nbsp;&nbsp;
  <p><a href="메모">
  	Memo
  </a></p>
</div>
</center>
</ul>
</div>
 <script src='http://thecodeplayer.com/u/js/jquery.easing.min.js'></script>
 <script src="js/timeline.js"></script>
   <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>
  <script src="js/popup.js"></script>
</body>
</html>