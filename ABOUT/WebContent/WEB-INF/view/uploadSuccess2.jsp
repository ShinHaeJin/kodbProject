<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<!DOCTYPE html>

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta http-equiv="imagetoolbar" content="false">
	<title>Mason - An adaptive tumblr theme.</title>
	
	<meta name="description" content="An adaptive tumblr theme.">
	<link rel='stylesheet prefetch' href='http:////netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.css'>
	<link rel='stylesheet' href='css/menu_bar.css' media="screen" type="text/css">
	<link rel="stylesheet" href="css/photo_list.css" media="screen" type="text/css" />
	<!-- date -->
	<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="css/date.css" media="screen" type="text/css" />

	<link rel="shortcut icon" href="http://33.media.tumblr.com/avatar_d5da3d90f97e_128.png">
	<link rel="apple-touch-icon" href="http://33.media.tumblr.com/avatar_d5da3d90f97e_128.png">
	<link rel="alternate" type="application/rss+xml" href="http://mikedidthis-mason.tumblr.com/rss">
		<!--[if lt IE 9]>
		<script src="http://static.tumblr.com/g8b5dgd/oqXm47me1/html5shiv.js"></script>
		<![endif]-->
		<link href='http://fonts.googleapis.com/css?family=Asap:400,400italic' rel='stylesheet' type='text/css'>
		
		
		<link href='http://static.tumblr.com/g8b5dgd/Poomcahyq/style-nevis.css' rel='stylesheet' type='text/css'>
		

		<link href='http://static.tumblr.com/g8b5dgd/hUHmcahy8/style-fontomas.css' rel='stylesheet' type='text/css'>
	<!-- IE Photoset Fixes -->
		<!--[if IE]>
		<style>
			@media screen and (min-width:0em){
				#posts .post.photoset .photoset-grid li.\32.last{margin-left:-1%;}
				#posts .post.photoset .photoset-grid li.\33.last{margin-left:-2%;}
				#posts.page-permalink .post.photoset .photoset-grid li.\32.last{margin-left:-1%;}
				#posts.page-permalink .post.photoset .photoset-grid li.\33.last{margin-left:-2%;}
			}
		</style>
		<![endif]-->
		
		<!-- Theme Variables -->
		<!-- Image -->
		<meta name="image:Logo" content="http://static.tumblr.com/g8b5dgd/CrAm47nch/mason-logo-icon.png"/>
		<meta name="image:PostLines" content="http://static.tumblr.com/g8b5dgd/grpm47ndf/lines.png"/>
		<meta name="image:HeaderBG" content=""/>
		<meta name="image:PostsWrapperBG" content=""/>
		<meta name="image:FooterBG" content=""/>
		<!-- Social Names -->
		<meta name="text:Google Analytics ID" content="">
		<meta name="text:Twitter Profile" content="">
		<meta name="text:Disqus Shortname" content="">
		<meta name="text:Email Address" content="">
		<meta name="text:Facebook Profile" content="">
		<meta name="text:Twitter Profile" content="">
		<meta name="text:Google Profile" content="">
		<meta name="text:YouTube Profile" content="">
		<!-- Theme Text Style -->
		<meta name="color:LogoTextColour" content="#28292a"/>
		<meta name="color:HeadingTextColour" content="#28292a"/>
		<meta name="color:ParagraphTextColour" content="#505253"/>
		<meta name="color:AnchorTextColour" content="#28292a"/>
		<meta name="color:BoldTextColour" content="#28292a"/>
		<meta name="color:TextHighlightColour" content="#ff6633"/>
		<!-- Element Styles -->
		<meta name="color:HeaderBGColour" content="#ffffff"/>
		<meta name="color:HeaderTrimColour" content="#d6d7d8"/>
		<meta name="color:HeaderPagesTextColour" content="#999999"/>
		<meta name="color:FilterTrimColour" content="#d6d7d8"/>
		<meta name="color:FilterBGColour" content="#ffffff"/>
		<meta name="color:FilterTextColour" content="#d6d7d8"/>
		<meta name="color:FilterTrimHoverColour" content="#999999"/>
		<meta name="color:FilterTextHoverColour" content="#999999"/>
		<meta name="color:PostsWrapperBGColour" content="#fbfbfb"/>
		<meta name="color:PostBGColour" content="#ffffff"/>
		<meta name="color:PostTrimColour" content="#d6d7d8"/>
		<meta name="color:PostFooterBGColour" content="#ffffff"/>
		<meta name="color:PostFooterTextColour" content="#999999"/>
		<meta name="color:PostDropShadow" content="#e0e0e0"/>
		<meta name="color:FooterBGColour" content="#ffffff"/>
		<meta name="color:FooterTrimColour" content="#d6d7d8"/>
		<meta name="color:FooterHeadingTextColour" content="#999999"/>
		<meta name="color:FooterAnchorTextColour" content="#d6d7d8"/>
		<meta name="color:FooterTwitterText" content="#999999"/>
		<meta name="color:FooterTwitterAnchor" content="#505253"/>
		<meta name="color:FooterTwitterAnchorHover" content="#ff6633"/>
		<meta name="color:FooterTwitterTime" content="#d6d7d8"/>
		<meta name="color:FooterTwitterTimeHover" content="#999999"/>
		<!-- Theme Options -->
		<meta name="if:Enable Img Only Logo" content="0" />
		<meta name="if:Enable Post Notes" content="1" />
		<meta name="if:Enable Remove Next Page Button On Complete" content="1" />
		<meta name="if:Enable Lines On Post Text" content="1" />
		<meta name="if:Enable Text Only Logo" content="0" />
		<meta name="if:Enable Permalink Navigation" content="1" />
		<meta name="if:Enable Theme Credits" content="1" />
		<meta name="if:Enable Theme Version Check" content="1" />
		<meta name="if:Enable Smaller Header" content="0" />
		<meta name="if:Enable Exact Post Date" content="0" />
		<!-- Web Fonts -->
		<meta name="if:Enable Nevis Heading Font" content="1" />
		<meta name="text:Heading Text Font Family" content="Asap" />
		<meta name="text:Heading Text Font Family Weight" content="700" />
		<meta name="text:Body Text Font Family" content="Asap" />
		<meta name="text:Body Text Font Normal Weight" content="400" />
		<meta name="text:Body Text Font Normal Italic Weight" content="400" />
		<!-- Filter Options -->
		<meta name="if:Nav Chrono" content="0">
		<meta name="text:Submit Text" content="Submit A Post">
		<meta name="text:Filter Menu Name" content="Filter Posts By">
		<meta name="text:Filter Menu Tag 1" content="audio" />
		<meta name="text:Filter Menu Tag 2" content="chat" />
		<meta name="text:Filter Menu Tag 3" content="photo" />
		<meta name="text:Filter Menu Tag 4" content="photoset" />
		<meta name="text:Filter Menu Tag 5" content="quote" />
		<meta name="text:Filter Menu Tag 6" content="text" />
		<meta name="text:Filter Menu Tag 7" content="video" />
		<meta name="text:Filter Menu Tag 8" content="mikedidthis" />
		<meta name="text:Filter Menu Tag 9" content="themeforest" />
		<meta name="text:Filter Menu Tag 10" content="custom filter" />
		<meta name="text:Filter Menu Tag 11" content="" />
		<meta name="text:Filter Menu Tag 12" content="" />
		<!-- Mason Specific -->
		<meta name="text:Posts Per Page" content="10">
		<meta name="text:No More Posts Message" content="No More Posts To Display">
		<!-- jQuery -->
		<script src="js/jquery-1.10.2.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="http://static.tumblr.com/l184zuh/M30lxehxp/jquery-1.7.1.min.js"><\/script>')</script>
		<!-- java script -->
		<script src="js/menu_bar.js"></script>
	  	<script src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment.min.js'></script>
	  	<script src='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js'></script>
	  	<script src="js/date.js"></script>
	
	<link rel="alternate" href="android-app://com.tumblr/tumblr/x-callback-url/blog?blogName=mikedidthis-mason" />
<script src="http://assets.tumblr.com/assets/scripts/tumblelog.js?_v=c78ef57bd25c48e7f24a984e7ef6ceba"></script>
<link rel="stylesheet" type="text/css" href="http://assets.tumblr.com/fonts/gibson/stylesheet.css?v=3">
<meta http-equiv="x-dns-prefetch-control" content="off"/>
<meta name="keywords" content="photo,artcore,photoset,gif,text" />

</head>
	<body>
			<header>
			 <nav class="fixd_nav">
				<ul>
		          <li><a href="#" style="text-decoration: none;">about Time</a></li>
			      
			      <li style="float: left;">
			      <form class="form-horizontal" style="width: 200px; margin-top: 14px; float: left;">
			        <fieldset>
			          <div class="control-group">
			            <div class="controls">
			              <div class="input-prepend input-group">
			                <span class="add-on input-group-addon">
			                  <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
			                </span>
			                <input type="text" style="width: 200px" name="reservation" id="reservation" class="form-control" value="02/01/2015 - 02/15/2015" /> 
			              </div>
			            </div>
			          </div>
			        </fieldset>
			      </form>
			      </li>
		          
		            <li><a href="timeline.jsp"><i class="fa fa-home"></i></a></li>
		            <li><a href="#"><i class="fa fa-user"></i></a></li>
		            <li><a href="#"><i class="fa fa-pencil"></i></a></li>
		            <li>
		              <div class="search" id="search">
		                <form method="get" id="searchform" action="">
		                  <div class="search-input-wrap">
		                    <input class="search-input" placeholder="Search in Site" type="text" id="s"/>
		                  </div>
		                  <input class="search-submit" type="submit" id="go" value="">
		                  <div class="icon"><i class="fa fa-search"></i></div>
		                </form>
		              </div>
		            </li>
		            <li>
		            	<a href="#0" id="trigger">
		            		<i class="fa fa-reorder"></i>
		            	</a>
			        </li>
			    </ul>
			</nav>
		</header>
		<div class="post-wrapper"><!-- ì¬ì§ -->
			<section class="page-index" id="posts">
			
			<c:forEach items="${requestScope.fullPathNames}" var="file">
    			<c:if test="${requestScope.hidden eq '1' }">
         			<article class="post photo submission">
					<a href="#" class="view" data-click-through="" data-replaced="False">
						<img src="${file}" data-250="${file}" data-400="${file}" data-500="${file}" data-1280="${file}" data-replaced="False">
					</a>
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="#" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="#" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="#" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
				</article>
      			</c:if>
      
		      <c:if test="${requestScope.hidden eq '2'}">
		        <article class="post video">
					<div class="video-wrapper">
						<iframe src="${file}" width="100%" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
					</div>
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
				</article>
			</c:if>
        
     </c:forEach>
			
				<!-- <article class="post photo submission " id="90052945765">
					<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="Teste" class="view" rel="90052945765" data-click-through="" data-replaced="False">
						<img src="http://40.media.tumblr.com/7a2712881e9932333da903c3597ef3fa/tumblr_n7tp7fTTWJ1rpvya6o1_250.jpg" data-250="http://40.media.tumblr.com/7a2712881e9932333da903c3597ef3fa/tumblr_n7tp7fTTWJ1rpvya6o1_250.jpg" data-400="http://36.media.tumblr.com/7a2712881e9932333da903c3597ef3fa/tumblr_n7tp7fTTWJ1rpvya6o1_400.jpg" data-500="http://41.media.tumblr.com/7a2712881e9932333da903c3597ef3fa/tumblr_n7tp7fTTWJ1rpvya6o1_500.jpg" data-1280="http://41.media.tumblr.com/7a2712881e9932333da903c3597ef3fa/tumblr_n7tp7fTTWJ1rpvya6o1_1280.jpg" data-replaced="False">
					</a>
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
					
					
				</article>
				
				<article class="post video submission " id="66774512722">ë¹ëì¤
					<div class="video-wrapper">
						<iframe width="500" height="281" id="youtube_iframe" src="https://www.youtube.com/embed/vqF0fEK0iaI?feature=oembed&amp;enablejsapi=1&amp;origin=http://safe.txmblr.com&amp;wmode=opaque" frameborder="0" allowfullscreen></iframe>
					</div>
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
				
					
				</article>
				
				<article class="post video  " id="35135064879">
					<div class="video-wrapper">
						<iframe src="//player.vimeo.com/video/32156629?title=0&byline=0&portrait=0" width="500" height="281" frameborder="0" title="Her Ghost Friend &quot;æ¾èª²å¾ã®ã·ã½ã¼ã©ã¹&quot;MV" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
					</div>
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
				</article>
				
				<article class="post audio audio " id="35134974251">
                    <iframe src="https://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F57116039&amp;visual=true&amp;liking=false&amp;sharing=false&amp;auto_play=false&amp;show_comments=false&amp;continuous_play=false&amp;origin=tumblr" frameborder="0" allowtransparency="true" class="soundcloud_audio_player" width="400" height="400"></iframe>
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
				</article>
				
				<article class="post text text mikedidthis " id="22778709184">
					
					<div class="wrapper">
						
						<a href="http://mikedidthis-mason.tumblr.com/post/22778709184/introducing-mason-my-new-adaptive-tumblr" title="INTRODUCING Mason.  My New, ADAPTIVE, Tumblr  theme by mikedidthis." class="title"><h1>INTRODUCING Mason.  My New, ADAPTIVE, Tumblr  theme by mikedidthis.</h1></a>
						
					</div>
					<div class="lines">
						<p><strong>Mason is an adaptive Tumblr theme aimed at presenting your content, to any device, in a masonry based style. </strong><br><br>Included is ajax based page loading, as well as URL tracking (no broken back button). Users can quickly view your posts, view them in the detail, and go back to where they were.<br></p><p class="read_more_container"><a href="http://mikedidthis-mason.tumblr.com/post/22778709184/introducing-mason-my-new-adaptive-tumblr" class="read_more">Read More</a></p>
					</div>
					
					<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
					
					
				</article>
				
				<article class="post photo gif  reblog " id="23290656391">
					
					
					
					<a href="http://mikedidthis-mason.tumblr.com/post/23290656391" title="" class="view" rel="23290656391" data-click-through="" data-replaced="False">
						<img src="http://38.media.tumblr.com/tumblr_m1mrfxSuFX1qedb29o1_r1_250.gif" data-250="http://38.media.tumblr.com/tumblr_m1mrfxSuFX1qedb29o1_r1_250.gif" data-400="http://38.media.tumblr.com/tumblr_m1mrfxSuFX1qedb29o1_r1_400.gif" data-500="http://38.media.tumblr.com/tumblr_m1mrfxSuFX1qedb29o1_r1_500.gif" data-1280="" data-replaced="False">
					</a>
<ul class="footer">
						<li class="time">
							<span class="stamp">7 months ago</span>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-trash"></i></span>
								<span class="details">DELETE</span>
							</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon" style="margin-left: 2px; margin-top: -1px;">&nbsp;<i class="fa fa-pencil"></i></span>
								<span class="details">UPDATE</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/90052945765/teste" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
				</article>
				
				<article class="post photo photoset artcore  reblog photoset" id="22850364326">
					
					<ul class="photoset-grid" id="photoset-grid22850364326" data-grid-array="1232">
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo1_250.jpg" data-250="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo1_250.jpg" data-400="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo1_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo1_500.jpg" data-1280="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo2_250.jpg" data-250="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo2_250.jpg" data-400="http://36.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo2_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo2_500.jpg" data-1280="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo2_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo5_r1_250.jpg" data-250="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo5_r1_250.jpg" data-400="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo5_r1_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo5_r1_500.jpg" data-1280="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo5_r1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo6_r1_250.jpg" data-250="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo6_r1_250.jpg" data-400="http://36.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo6_r1_400.jpg" data-500="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo6_r1_500.jpg" data-1280="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo6_r1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://36.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo7_r1_250.jpg" data-250="http://36.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo7_r1_250.jpg" data-400="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo7_r1_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo7_r1_500.jpg" data-1280="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo7_r1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo8_r1_250.jpg" data-250="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo8_r1_250.jpg" data-400="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo8_r1_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo8_r1_500.jpg" data-1280="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo8_r1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo9_r1_250.jpg" data-250="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo9_r1_250.jpg" data-400="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo9_r1_400.jpg" data-500="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo9_r1_500.jpg" data-1280="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo9_r1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
						<li>
							
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="" class="view" rel="22850364326" data-click-through="" data-replaced="False">
								<img src="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo12_r1_250.jpg" data-250="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo12_r1_250.jpg" data-400="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo12_r1_400.jpg" data-500="http://41.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo12_r1_500.jpg" data-1280="http://40.media.tumblr.com/tumblr_m1c3k5kyCH1ro5vpyo12_r1_1280.jpg" data-replaced="False">
							</a>
							
							
						</li>
						
					</ul>
					
					
					
					
					
					
                    
					
					
					<ul class="footer">
						<li class="time">
							
							<span class="stamp">2 years ago</span>
							
							
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find#disqus" title="View Comments" class="disqus">
								<span class="icon">f</span>
								<span class="details">0</span>
							</a>
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find#disqus_thread" title="View comments for this post" class="dsq-comment-count">0</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find#notes" title="View Notes" class="notes">
								<span class="icon">N</span>
								<span class="details">29</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22850364326/mikedidthis-focus-a-photoset-from-artcore-find" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
					
					
				</article>
				
				<article class="post photo photo  reblog " id="22590343437">
					
					
					
					<a href="http://mikedidthis-mason.tumblr.com/post/22590343437" title="" class="view" rel="22590343437" data-click-through="" data-replaced="False">
						<img src="http://41.media.tumblr.com/tumblr_m1tlwdhXVD1qdgz39o1_250.jpg" data-250="http://41.media.tumblr.com/tumblr_m1tlwdhXVD1qdgz39o1_250.jpg" data-400="http://40.media.tumblr.com/tumblr_m1tlwdhXVD1qdgz39o1_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m1tlwdhXVD1qdgz39o1_500.jpg" data-1280="http://41.media.tumblr.com/tumblr_m1tlwdhXVD1qdgz39o1_1280.jpg" data-replaced="False">
					</a>
					
					
					
					
					
					
					
					
                    
					
					
					<ul class="footer">
						<li class="time">
							
							<span class="stamp">2 years ago</span>
							
							
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590343437#disqus" title="View Comments" class="disqus">
								<span class="icon">f</span>
								<span class="details">0</span>
							</a>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590343437#disqus_thread" title="View comments for this post" class="dsq-comment-count">0</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590343437#notes" title="View Notes" class="notes">
								<span class="icon">N</span>
								<span class="details">16574</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590343437" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
					
					
				</article>
				
				<article class="post photo photo  reblog " id="22590355398">
					
					
					
					<a href="http://mikedidthis-mason.tumblr.com/post/22590355398" title="" class="view" rel="22590355398" data-click-through="" data-replaced="False">
						<img src="http://40.media.tumblr.com/tumblr_m3kegdYL8G1qfd1rto1_250.jpg" data-250="http://40.media.tumblr.com/tumblr_m3kegdYL8G1qfd1rto1_250.jpg" data-400="http://40.media.tumblr.com/tumblr_m3kegdYL8G1qfd1rto1_400.jpg" data-500="http://40.media.tumblr.com/tumblr_m3kegdYL8G1qfd1rto1_500.jpg" data-1280="" data-replaced="False">
					</a>
					
					
					
					
					
					
					
					
                    
					
					
					<ul class="footer">
						<li class="time">
							
							<span class="stamp">2 years ago</span>
							
							
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590355398#disqus" title="View Comments" class="disqus">
								<span class="icon">f</span>
								<span class="details">0</span>
							</a>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590355398#disqus_thread" title="View comments for this post" class="dsq-comment-count">0</a>
						</li>
						
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590355398#notes" title="View Notes" class="notes">
								<span class="icon">N</span>
								<span class="details">8042</span>
							</a>
						</li>
						<li>
							<a href="http://mikedidthis-mason.tumblr.com/post/22590355398" title="View Post" class="permalink">
								<span class="icon">?</span>
								<span class="details">VIEW</span>
							</a>
						</li>
					</ul>
					
					
				</article>
 -->				
				
				
				
				<div class="pagination next-page">
					<p class="details"><span class="icon">g</span>Posts: <strong><span class="start">?</span> - <span class="end">?</span></strong></p>
					<a href="/page/2" class="load">Load <strong>Next</strong> Page</a>
				</div>
				
				
			</section>
		</div>
</body>
	<script type="text/javascript">
// Mason Tumblr Theme Index Scripts 1.5 - mikedidthis (http://mikedidthis.co.uk) //
(function(a){a.fn.countPosts=function(){var b=a(this),d=b.children(".post").size(),c=b.find(".next-page").find(".load").attr("href"),f=b.find(".prev-page").find(".load").attr("href"),i=b.find("span.start"),b=b.find("span.end");pageNumber=!c&&!f?"0":c?c:f;var g=pageNumber.match(/[0-9]+/);c?f?(g=parseInt(g-1)-1,c=postsPerPage*g+1):c=1:(g=parseInt(g),c=postsPerPage*g+1);d=c+(d-1);i.text(c);b.text(d)}})(jQuery);
(function(a){a.fn.postPageURL=function(){var b=a(".prev-page .load").attr("href"),d=a(".next-page .load").attr("href"),c=/[0-9]+/,f=a(this).children(".post");try{if(!d&&!b)var i=" ";else{if(d)g=d.replace("").replace(),j=parseInt(d.match(c))-1;else var g=b.replace("").replace(/\d+/g,""),j=parseInt(b.match(c))+1;i=""}f.each(function(){var b=a(this).attr("id");sessionStorage.setItem(b,i)})}catch(e){e.name.toUpperCase()}}})(jQuery);
(function(a){a.fn.noMorePosts=function(){var b=a(this);b.find(".prev-page").size();b.find(".next-page").size()||a('<div class="pagination end"><p class="details"><span class="icon">g</span>Posts: <strong><span class="start">?</span> - <span class="end">?</span></strong></p><p class="load">'+noMorePostsMessage+"</p></div>").appendTo(b)}})(jQuery);
$(function(){var a=$("#posts"),b=a.height();a.height(b);a.postPageURL();a.noMorePosts();a.countPosts();$(window).load(function(){$(".photoset-grid").photosetGrid();$(".video-wrapper").fitVids();$("a.dsq-comment-count").disqusNumber();$("span.details").updateNumbers();a.isotope({itemSelector:".post, .pagination",layoutMode:"masonry",masonry:{columnWidth:1},animationOptions:{duration:0,easing:"swing",queue:!1},transformsEnabled:!1},function(){$(".post, .pagination").delay(0).fadeTo(0,1);$(".view").not(".photoset-grid li .view").biggerPics()})})});
(function(a){var b=a("#posts");a(".prev-page .load").live("click",function(d){d.preventDefault();var c=a(this),f=c.attr("href"),d=c.offset().top,i=a(window).scrollTop(),g=d-i;c.text("page loading");a("<div/>").load(f+"#posts .post, .prev-page, .next-page",function(){var d=a(this),e=a(this).find(".next-page").children(".details"),i=c.parent(),k=a(this).children(".post");try{k.each(function(){var b=a(this).attr("id");sessionStorage.setItem(b,f)})}catch(l){l.name.toUpperCase()}d.countPosts();a(e).clone().appendTo(i);
var h=d.children().not(".next-page");b.prepend(h).promise().done(function(){disqusUsername&&a("body").disquscommentCount();h.find("span.details").updateNumbers();h.find(".video-wrapper").fitVids();h.find(".audio").each(function(){var b=window.location.href.split(window.location.pathname)[0],c=a(this).closest(".post").attr("id"),d=a(this);a.ajax({url:b+"/api/read/json?id="+c,dataType:"jsonp",timeout:5E4,success:function(a){d.html('<div style="background-color:white;height:30px" class="audio_player">'+
a.posts[0]["audio-player"]+"</div>")}})})}).promise().done(function(){b.imagesLoaded(function(){h.find(".photoset-grid").photosetGrid();b.isotope("reloadItems").isotope({sortBy:"original-order"},function(){c.text("page loaded").removeAttr("href").addClass("loaded");setTimeout(function(){h.find("a.dsq-comment-count").disqusNumber();h.find(".disqus").children("span.details").updateNumbers()},
1E3)})})})})})})(jQuery);
(function(a){var b=a("#posts");a(".next-page .load").live("click",function(d){d.preventDefault();var c=a(this),f=c.attr("href");c.text("page loading");a("<div/>").load(f+"#posts .post, .next-page, .prev-page",function(){var d=a(this),g=a(this).children(".post");try{g.each(function(){var b=a(this).attr("id");sessionStorage.setItem(b,f)})}catch(j){j.name.toUpperCase()}d.noMorePosts();d.countPosts();var e=a(this).children().not(".prev-page");b.append(e).promise().done(function(){disqusUsername&&a("body").disquscommentCount();
e.find("span.details").updateNumbers();e.find(".video-wrapper").fitVids();e.find(".audio").each(function(){var b=window.location.href.split(window.location.pathname)[0],c=a(this).closest(".post").attr("id"),d=a(this);a.ajax({url:b+"/api/read/json?id="+c,dataType:"jsonp",timeout:5E4,success:function(a){d.html('<div style="background-color:white;height:30px" class="audio_player">'+a.posts[0]["audio-player"]+"</div>")}})})}).promise().done(function(){b.imagesLoaded(function(){e.find(".photoset-grid").photosetGrid();
a(this).isotope("appended",a(e),function(){removeLoadNextPageButton?(c.parent().remove(),b.isotope("reLayout")):c.text("page loaded").removeAttr("href").addClass("loaded");e.delay(0).fadeTo(0,1);e.find(".view").not(".photoset-grid li .view").biggerPics();setTimeout(function(){e.find("a.dsq-comment-count").disqusNumber();e.find(".disqus").children("span.details").updateNumbers();c.on("click")},1E3)})})})})})})(jQuery);
(function(a){if(!a("html").is(".lt-ie9")){var b;a(window).scroll(function(){b=!0});setInterval(function(){if(b){var refc=window.location.pathname;try{var d=a(".post:in-viewport").first().attr("id"),c=sessionStorage.getItem(d);history.replaceState&&c&&(new_url=c,history.replaceState("","",new_url));if((refc != new_url) && (new_url != '/page/1')){_gaq.push(['_trackPageview', new_url]);}}catch(f){f.name.toUpperCase();}b=!1}},250)}})(jQuery);
</script>
	<script src="http://static.tumblr.com/g8b5dgd/t4kmcaq6e/mikedidthis-mason-general-1-5-min.js"></script>
	<script src="http://static.tumblr.com/g8b5dgd/F2Gmcaq6q/mikedidthis-mason-index-helpers-1-5-min.js"></script>
	</html>