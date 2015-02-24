if (window.File && window.FileList && window.FileReader) {
	InitDnD();
}
else {
  alert('noinit');
}
 
//
// initialize
function InitDnD() {
	var imgsel = $id("imgsel");
	var videosel = $id("videosel");
	var docsel = $id("docsel");
  
	// file select
	imgsel.addEventListener("change", ImgSelectHandler, false);
	videosel.addEventListener("change", VideoSelectHandler, false);
	docsel.addEventListener("change", DocSelectHandler, false);
}

// file selection
function ImgSelectHandler(e) {
	// fetch FileList object
	var files = e.target.files || e.dataTransfer.files;
	// process all File objects
	for (var i = 0, f; f = files[i]; i++) {
		ParseImg(f);
	}
}
function VideoSelectHandler(e) {
	// fetch FileList object
	var files = e.target.files || e.dataTransfer.files;
	// process all File objects
	for (var i = 0, f; f = files[i]; i++) {
		ParseVideo(f);
	}
}
function DocSelectHandler(e) {
	// fetch FileList object
	var files = e.target.files || e.dataTransfer.files;
	// process all File objects
	for (var i = 0, f; f = files[i]; i++) {
		ParseDoc(f);
	}
}

function ParseImg(file) {
  // display an image
	if (file.type.indexOf("image") == 0) {
		var reader = new FileReader();
		reader.onload = function(e) {
      Output1(
        '<img src="' + e.target.result + '" width="100%" height="100%" />'
	    );
	  }; 
	  $id("upload1").style.height = "45px";
	  $id("upload1").style.marginTop = "2px";
	  $id("upload1").style.backgroundImage = "url(images/addmore.png)";
	  $id("com1").style.display="block";
	  $id("imgsel").style.height = "45px";
	  reader.readAsDataURL(file);
  }
	else {
		alert("사진이 아님!");
	}
}

function ParseVideo(file) {
	  // display an video
	if (file.type.indexOf("video") == 0) {
		var reader = new FileReader();
		reader.onload = function(e) {
      Output2(
    		  '<video width=100% height=100% controls><source src="' + e.target.result + '" type="video/mp4"></video>'
	    );
	  }; 

	  $id("upload2").style.height = "45px";
	  $id("upload2").style.marginTop = "2px";
	  $id("upload2").style.backgroundImage = "url(images/addmore.png)";
	  $id("com2").style.display="block";
	  $id("videosel").style.height = "45px";	  
	 
	  reader.readAsDataURL(file);
  }	
	else {
			alert("���� ������ �ƴ�");
		}
}

function ChangeDoc(){
	  $id("upload3").style.height = "45px";
	  $id("upload3").style.marginTop = "2px";
	  $id("upload3").style.backgroundImage = "url(images/addmore.png)";
	  $id("com1").style.display="block";
	  $id("docsel").style.height = "45px";	 
}
function ParseDoc(file) {
	  // display an Document
//	alert(file.type);
		if (file.type.indexOf("application/pdf") == 0) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
	      Output3(
	    		  '<img src="images/docImg/pdf.jpg" width="100px"/>'
		    );
		  };
		  ChangeDoc();
		  
		  reader.readAsDataURL(file);
	  }
	  else if (file.type.indexOf("application/haansofthwp") == 0) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
	      Output3(
	    		  '<img src="images/docImg/hwp.jpg" width="100px"/>'
		    );
		  };
		  ChangeDoc();
		  
		  reader.readAsDataURL(file);
	  }
	  else if (file.type.indexOf("application/vnd.openxmlformats-officedocument.presentationml.presentation") == 0) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
	      Output3(
	    		  '<img src="images/docImg/ppt.jpg" width="100px"/>'
		    );
		  };
		  ChangeDoc();
		  
		  reader.readAsDataURL(file);
	  }
	  else if (file.type.indexOf("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet") == 0) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
	      Output3(
	    		  '<img src="images/docImg/xls.jpg" width="100px"/>'
		    );
		  };
		  ChangeDoc();
		  
		  reader.readAsDataURL(file);
	  }
	  else if (file.type.indexOf("application/vnd.openxmlformats-officedocument.wordprocessingml.document") == 0) {
			var reader = new FileReader();
			
			reader.onload = function(e) {
	      Output3(
	    		  '<img src="images/docImg/doc.jpg" width="100px"/>'
		    );
		  };
		  ChangeDoc();
		  
		  reader.readAsDataURL(file);
	  }
	  else {
			alert("invalid document");
		}
	}

// getElementById
function $id(id) {
	return document.getElementById(id);
}

// output information
function Output1(msg) {
	$id("messages1").innerHTML = $id("messages1").innerHTML + msg;
}
function Output2(msg) {
	$id("messages2").innerHTML = $id("messages2").innerHTML + msg;
}
function Output3(msg) {
	$id("messages3").innerHTML = $id("messages3").innerHTML + msg;
}