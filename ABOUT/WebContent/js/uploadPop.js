/*
 * dynamic upload popup 
 * 
 */	

var textarea = $('#text'),
	    top = textarea.scrollTop(),
	    height = textarea.height();
	    if(top > 0){
	       textarea.css("height",top + height);
	    }
	    /* 
	    $("textarea").keyup(function(e) {
	        while ($(this).outerHeight() < this.scrollHeight + parseFloat($(this).css("borderTopWidth")) + parseFloat($(this).css("borderBottomWidth"))) {
	            $(this).height($(this).height() + 1);
	        }; */
	        
	        /* function resize(obj) {
	            obj.style.height = "1px";
	            obj.style.height = (20+obj.scrollHeight)+"px";
	          }
	    }); */
	    /* 
	    $('#text').on('keyup', function(){
	        $(this).css('height', '100%');
	    }); */
	$(function(){
		var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");
		var append2 = ("<div id='messages'></div>");
	
		$('a[data-modal-id]').click(function(e) {
			e.preventDefault();
	    $("body").append(appendthis);
	    $(".modal-overlay").fadeTo(500, 0.7);
	    //$(".js-modalbox").fadeIn(500);
			var modalBox = $(this).attr('data-modal-id');
			$('#'+modalBox).fadeIn($(this).data());
		});  
	  
	  
		$(".js-modal-close, .modal-overlay").click(function() {
		    $(".modal-box, .modal-overlay").fadeOut(500, function() {
		    	/* 팝업창 닫기 */
		        $(".modal-overlay").remove(); 		
		    	
		    	/* 이미지 등 추가시 미리보기 append 새로고침 */
		    	$("#messages1").remove();
		    	$("#messages2").remove();
		    	$("#messages3").remove();
		    	$("<div id='messages1'></div>").appendTo(".up1");
		    	$("<div id='messages2'></div>").appendTo(".up2");
		    	$("<div id='messages3'></div>").appendTo(".up3");
		    		
		    	/* upload창 css 원상복구 */
		        $("#upload1").css('height', '200px');
				$("#upload1").css('margin-top', '-2px');
				$("#upload1").css('background-image', ('url(images/photoplus.png)'));
				$("#upload1").css('background-size', '150px');	 
				$("#upload1 input").css('height', '200px');
				
				$("#upload2").css('height', '200px');
				$("#upload2").css('margin-top', '-2px');
				$("#upload2").css('background-image', ('url(images/videoplus.png)'));
				$("#upload2").css('background-size', '150px');	 
				$("#upload2 input").css('height', '200px');
				
				$("#upload3").css('height', '200px');
				$("#upload3").css('margin-top', '-2px');
				$("#upload3").css('background-image', ('url(images/docuplus.png)'));
				$("#upload3").css('background-size', '150px');	 
				$("#upload3 input").css('height', '200px');
				
				/* input value초기화 */
				$("#imgsel").val("");
		    	$("#videosel").val("");
		    	$("#docsel").val("");
		    	/* textarea value 초기화 */
				$("textarea").val("");
				/* comment textarea 숨기기 */	    	
				//$("#com").hide();
				document.getElementById("com1").style.display="none";
				document.getElementById("com2").style.display="none";
				document.getElementById("com3").style.display="none";
		    });
		});
		 
		$(window).resize(function() {
		    $(".modal-box").css({
		        top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
		        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
		    });
		});
		 
		$(window).resize();
		 
	/* 이미지 select시 변경 */
	/*$("#imgsel").change(function() {
		 작은 파일선택창으로 css 변경 
		$(".upload").css('height', '45px');
		$(".upload").css('margin-top', '2px');
		$(".upload").css('background-image', ('url(images/addmore.png)'));
		$(".upload").css('background-size', '160px');
		$(".upload input").css('height', '45px');
		// comment textarea 보이기 
		$(".com").show();
    });
	*/
	/* 비디오 select시 변경 */
/*	$("#videosel").change(function() {
		 작은 파일선택창으로 css 변경 
		$(".upload").css('height', '45px');
		$(".upload").css('margin-top', '2px');
		$(".upload").css('background-image', ('url(images/addmore.png)'));
		$(".upload").css('background-size', '160px');
		$(".upload input").css('height', '45px');
		 comment textarea 보이기 
		$("#com").show();
    }); 
	
	 문서 select시 변경 
	$("#docsel").change(function() {
		 작은 파일선택창으로 css 변경 
		$(".upload").css('height', '45px');
		$(".upload").css('margin-top', '2px');
		$(".upload").css('background-image', ('url(images/addmore.png)'));
		$(".upload").css('background-size', '160px');
		$(".upload input").css('height', '45px');
		 comment textarea 보이기 
		$(".com").show();
    });*/ 
});