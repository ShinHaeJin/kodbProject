<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>Uploaded files</h3>
	${pageContext.request.contextPath}<br>
	<c:forEach items="${requestScope.fullPathNames}" var="file">
            <li>${file}</li>
	    
	    <c:if test="${requestScope.hidden eq '1' }">
			<img src="${file}" width=150 height=150>
		</c:if>
		
		<c:if test="${requestScope.hidden eq '2'}">
			<video controls width="400" height="400" autoplay>
			      <source src="${file}" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
			      </source>
		     </video>
	      </c:if>
	     
     </c:forEach>
		 <li>${requestScope.comment}</li>
</body>
</html>
