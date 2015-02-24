<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
 <link rel='stylesheet prefetch' href='http:////netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css'>
	
<link rel="stylesheet" href="css/uptable.css" media="screen" type="text/css" />
    <link rel="stylesheet" href="css/upload.css" media="screen" type="text/css" />
        <link rel="stylesheet" href="css/neon.css" media="screen" type="text/css" />
        <!-- popup -->
          <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
		  <link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>
		  <link rel="stylesheet" href="css/popup.css" media="screen" type="text/css" />
    	
    	<!-- icon -->
		  <link rel="stylesheet" href="css/menubar.css" media="screen" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
</head>
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


<div id="messages">
  <p>Status Messages</p>
</div>
<table id="uptable">
   <tr><td id="uptable_td1"></td></tr>
   <tr><td id="uptable_td2">  
   <form action="upload.do" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="hidden" value="1">
  	 <fieldset>
    <legend>Upload an Image</legend>
    <div class="upload">
    	<input id="imgsel" type="file" name="fileNm" multiple="multiple"/>
    </div>
     <div>
	    <div id="filedrag">
        Or drop files here
      </div>
    </div>
    </fieldset>
		<textarea name="comment" rows="10" cols="70" style="width: auto;"></textarea>
	<input type="submit" value="upload">
	</form>
	</td></tr>
   <tr><td id="uptable_td3">닫기</td></tr>
</table>
   
   
<br><hr><br>

 <form id="upload" method="post" enctype="multipart/form-data">
  <fieldset>
    <legend>Upload an Image</legend>

    <div>
	    <input id="videosel" type="file" name="fileselect[]" multiple="multiple"/>
	    <div id="filedrag">
        Or drop files here
      </div>
    </div>
  </fieldset>
</form>

 <script src="js/upload.js"></script>
 <!-- popup -->
 <script src='http://thecodeplayer.com/u/js/jquery.easing.min.js'></script>	
 
   <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>
 <script src="js/popup.js"></script>
</body>
</html>