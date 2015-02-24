<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/uptable.css" media="screen" type="text/css" />
</head>
<body>

 <table id="uptable">
   <tr><td id="uptable_td1"></td></tr>
   <tr><td id="uptable_td2">  
   <form action="upload.do" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="hidden" value="1">
    <div class="upload">
        <input type="file"  name="fileNm" id="fileNm" multiple/>
    </div>
		<textarea name="comment" rows="30" cols="80" style="width: auto;">
		</textarea>
	<input type="submit" value="upload">
	</form>
	</td></tr>
   <tr><td id="uptable_td3">닫기</td></tr>
   </table>
 
</body>
</html>
