<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Media Boxes</title>

	<link rel="icon" href="img/favicon.ico" type="image/png">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0"> <!-- needed for mobile devices -->
  
  	<!-- Import font -->
  	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>

  	<!-- Style for Bootstrap -->
  	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  	
  	<!-- Custom style for the demo-->
  	<link rel="stylesheet" href="css/demo.css">

  	<!-- Media Boxes CSS files -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="css/mediaBoxes.css">

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

	</style>
	
</head>
<body>
	

	<div class="header">
		<div class="content">

			<div class="navbar navbar-default" role="navigation">
			  <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand" href="#">
			    	<img src="img/logo.png" alt="" style="margin-right:5px;"> Media Boxes
			    </a>
			  </div>

			  <!-- Collect the nav links, forms, and other content for toggling -->
			  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			    <ul class="nav navbar-nav navbar-right">
			      <li class="active"><a href="demo1.html">Demo 1</a></li>
			      <li><a href="demo2.html">Demo 2</a></li>
			      <li><a href="demo3.html">Demo 3</a></li>
			      <li><a href="demo4.html">Demo 4</a></li>
			      <li><a href="multiple-filters.html">Multiple Filters</a></li>
			      <li class="get-it-now">
			      		<a href="http://codecanyon.net/item/multi-purpose-media-boxes-responsive-grid/5683020">Buy Now</a>
			      </li>
			    </ul>
			  </div>
			</div><!-- /.navbar -->
    
		</div>
	</div>

	<div class="section">
		<div class="content">

			<h2><span class="glyphicon glyphicon-th-large"></span> Grid of Posts with Images, Videos and Sounds.</h2>

			<p>
				Display your portfolio with thumbnails of different dimensions (width and height) with a powerfull filter system.
			</p>

		</div>
	</div>
	
	<div class="grid-section" style="background-image: url('img/bg-blur1.jpg');">

		<div class="content grid-container">

		<!--  ================== MEDIA BOXES ================== -->
		
		<div class="filters-container">
			
			<input type="text" id="search" class="media-boxes-search" placeholder="Search By Title">

			<ul class="media-boxes-filter" id="filter">
			  <li><a class="selected" href="#" data-filter="*">All</a></li>
			  <li><a href="#" data-filter=".image">Images</a></li>
			  <li><a href="#" data-filter=".video">Videos</a></li>
			  <li><a href="#" data-filter=".sound">Sounds</a></li>
			  <li><a href="#" data-filter=".image, .sound">Images and Sounds</a></li>
			</ul>

		</div>		

		<div id="grid">

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box image" data-columns="2">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-1.jpg"></div>
		                <div data-popup="gallery/img-1.jpg" title="Dolor sit amet"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-plus mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Dolor sit amet</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico dell consecteture adipisicing.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box video">
		            <div class="media-box-image">
		                <div data-width="240" data-height="168" data-thumbnail="gallery/thumbnails/thumb-2.jpg"></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=5guMumPFBag" title="Psico dell consecteture"></div>
		                
						<div class="thumbnail-overlay">
							<i class="fa fa-video-camera mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Psico dell consecteture</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box sound">
		            <div class="media-box-image">
		                <div data-width="214" data-height="320" data-thumbnail="gallery/thumbnails/thumb-3.jpg"></div>
		                <div data-type="iframe" data-popup="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/123844205&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true" title="Sed do eiusmod"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-headphones mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Sed do eiusmod</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico dell consecteture adipisicing.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box video">
		            <div class="media-box-image">
		                <div data-width="320" data-height="213" data-thumbnail="gallery/thumbnails/thumb-4.jpg"></div>
		                <div data-type="iframe" data-popup="https://www.youtube.com/watch?v=UrIbxk7idYA" title="Incididunt ut labore"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-video-camera mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Incididunt ut labore</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box sound">
		            <div class="media-box-image">
		                <div data-width="214" data-height="320" data-thumbnail="gallery/thumbnails/thumb-5.jpg"></div>
		                <div data-type="iframe" data-popup="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/75185296&amp;auto_play=true&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true" title="Et dolore magna"></div>

		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-headphones mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Et dolore magna</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box video">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-6.jpg"></div>
		                <div data-type="iframe" data-popup="https://www.youtube.com/watch?v=2zqy21Z29ps" title="Enim ad minim"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-video-camera mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Enim ad minim</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                	Lorem ipsum dolor sitam psico dell consecteture adipisicing elit 
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>
		 
		<!-- -------------------------- BOX MARKUP -------------------------- -->            
		        <div class="media-box video">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-7.jpg"></div>
		                <div data-type="iframe" data-popup="http://vimeo.com/22884674" title="Nostrud exercitation"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-video-camera mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Nostrud exercitation</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>
		      
		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box image">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-8.jpg"></div>
		                <div data-popup="gallery/img-8.jpg" title="Ullamco laboris"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-plus mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Ullamco laboris</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>
		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box image">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-9.jpg"></div>
		                <div data-popup="gallery/img-9.jpg" title="Nisi ut aliquip"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-plus mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Nisi ut aliquip</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>
		      
		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box video">
		            <div class="media-box-image">
		                <div data-width="320" data-height="213" data-thumbnail="gallery/thumbnails/thumb-10.jpg"></div>
		                <div data-type="iframe" data-popup="https://www.youtube.com/watch?v=KVu3gS7iJu4" title="Ex ea commodo"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-video-camera mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Ex ea commodo</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico dell consecteture adipisicing.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>
		      
		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box image">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-11.jpg"></div>
		                <div data-popup="gallery/img-11.jpg" title="Duis aute irure"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-plus mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Duis aute irure</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box sound">
		            <div class="media-box-image">
		                <div data-width="320" data-height="214" data-thumbnail="gallery/thumbnails/thumb-12.jpg"></div>
	                	<div data-type="iframe" data-popup="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/75185291&amp;auto_play=true&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true" title="Dolor in reprehenderit"></div>
		                
		                <div class="thumbnail-overlay">
	                      	<i class="fa fa-headphones mb-open-popup"></i>
	              			<a href="#"><i class="fa fa-link"></i></a>
		                </div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Dolor in reprehenderit</div>
		                <div class="media-box-date">December 10, 2013</div>
		                <div class="media-box-text">
		                    Lorem ipsum dolor sitam psico.
		                </div>
		                <div class="media-box-more"> <a href="#">Read more</a> </div>
		            </div>
		        </div>
		      
			  
		</div> <!-- #container -->

		<!--  ================== END MEDIA BOXES ================== -->

		</div>

	</div>

	
	<div class="section">
		<div class="content">
			<h2><span class="glyphicon glyphicon-th-large"></span> Grid with thumbnails of the same Ratio</h2>
			<p>You can specify the ratio for the thumbnails and the plugin will crop the height and center it. Very handy for thumbnails of the same dimensions.</p>
		</div>
	</div>

	<div class="grid-section" style="background-image: url('img/bg-blur2.jpg');">

		<div class="content grid-container">
			
			<!--  ================== MEDIA BOXES ================== -->
			
			<div class="filters-container">

				<div class="media-boxes-drop-down" id="sort">
					<div class="media-boxes-drop-down-header">
					</div>
					<ul class="media-boxes-drop-down-menu">
						<li><a href="#" data-sort-by="original-order" class="selected">Original Order</a></li>
						<li><a href="#" data-sort-by="title" data-sort-toggle="true">Sort by Title</a></li>
						<li><a href="#" data-sort-by="year" data-sort-toggle="true">Sort by Year</a></li>
						<li><a href="#" data-sort-by="author" data-sort-toggle="true">Sort by Author</a></li>
					</ul>
				</div>

				<ul class="media-boxes-filter" id="filter2">
				  <li><a class="selected" href="#" data-filter="*">All</a></li>
				  <li><a href="#" data-filter=".category1">Category 1</a></li>
				  <li><a href="#" data-filter=".category2">Category 2</a></li>
				  <li><a href="#" data-filter=".category3">Category 3</a></li>
				  <li><a href="#" data-filter=".category1, .category2">Category 1 and 2</a></li>
				</ul>

			</div>
			
			

			<div id="grid2">

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category1">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-13.jpg"></div>
			                <div data-popup="gallery/img-13.jpg" title="Dolor sit amet"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2008</div>
			                <div class="media-box-title">Dolor sit amet</div>
			                <div class="media-box-author">
			                	by Brand Philander
			                </div>
			            </div>
			        </div>

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category2">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-14.jpg"></div>
			                <div data-popup="gallery/img-14.jpg" title="Psico dell consecteture"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2010</div>
			                <div class="media-box-title">Psico dell consecteture</div>
			                <div class="media-box-author">
			                	by Isadore Lynton
			                </div>
			            </div>
			        </div>

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category3" >
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-15.jpg"></div>
			                <div data-popup="gallery/img-15.jpg" title="Sed do eiusmod"></div>

			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2006</div>
			                <div class="media-box-title">Sed do eiusmod</div>
			                <div class="media-box-author">
			                	by Damon Hart
			                </div>
			            </div>
			        </div>
			      
			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category1">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-16.jpg"></div>
			                <div data-popup="gallery/img-16.jpg" title="Incididunt ut labore"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2007</div>
			                <div class="media-box-title">Incididunt ut labore</div>
			                <div class="media-box-author">
			                	by Winifred May
			                </div>
			            </div>
			        </div>

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category2">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-17.jpg"></div>
			                <div data-popup="gallery/img-17.jpg" title="Enim ad minim"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2009</div>
			                <div class="media-box-title">Enim ad minim</div>
			                <div class="media-box-author">
			                	by Faye Thomas
			                </div>
			            </div>
			        </div>
			      
			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category3">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-18.jpg"></div>
			                <div data-popup="gallery/img-18.jpg" title="Et dolore magna"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2001</div>
			                <div class="media-box-title">Et dolore magna</div>
			                <div class="media-box-author">
			                	by Jan Allen
			                </div>
			            </div>
			        </div>

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category1">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-19.jpg"></div>
			                <div data-popup="gallery/img-19.jpg" title="Nostrud exercitation"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2014</div>
			                <div class="media-box-title">Nostrud exercitation</div>
			                <div class="media-box-author">
			                	by Celia Todd
			                </div>
			            </div>
			        </div>    

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category2">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-20.jpg"></div>
			                <div data-popup="gallery/img-20.jpg" title="Ullamco laboris"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2013</div>
			                <div class="media-box-title">Ullamco laboris</div>
			                <div class="media-box-author">
			                	by Leigh Ryan
			                </div>
			            </div>
			        </div>

			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category3">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-21.jpg"></div>
			                <div data-popup="gallery/img-21.jpg" title="Ex ea commodo"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2004</div>
			                <div class="media-box-title">Ex ea commodo</div>
			                <div class="media-box-author">
			                	by Gladys Rhodes
			                </div>
			            </div>
			        </div>      
			        
			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category1">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-22.jpg"></div>
			                <div data-popup="gallery/img-22.jpg" title="Nisi ut aliquip"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2011</div>
			                <div class="media-box-title">Nisi ut aliquip</div>
			                <div class="media-box-author">
			                	by Stanley	 Obrien
			                </div>
			            </div>
			        </div>    
			        
			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category2">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-23.jpg"></div>
			                <div data-popup="gallery/img-23.jpg" title="Duis aute irure"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2005</div>
			                <div class="media-box-title">Duis aute irure</div>
			                <div class="media-box-author">
			                	by Philip Becker
			                </div>
			            </div>
			        </div>      
			                       		        
			<!-- -------------------------- BOX MARKUP -------------------------- -->      
			        <div class="media-box category3">
			            <div class="media-box-image">
			                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-24.jpg"></div>
			                <div data-popup="gallery/img-24.jpg" title="Dolor in reprehenderit"></div>
			                
			                <div class="thumbnail-overlay">
		                      	<i class="fa fa-plus mb-open-popup"></i>
		              			<a href="#"><i class="fa fa-link"></i></a>
			                </div>
			            </div>

			            <div class="media-box-content">
			            	<div class="media-box-year">2007</div>
			                <div class="media-box-title">Dolor in reprehenderit</div>
			                <div class="media-box-author">
			                	by Joann Keller
			                </div>
			            </div>
			        </div>    

			</div> <!-- #container -->		

		    <!--  ================== END MEDIA BOXES ================== -->
		</div>

	</div>

	<div class="section">
		<div class="content">
			<h2><span class="glyphicon glyphicon-th-large"></span> Grid of Videos</h2>
			<p>
				You can use this plugin for any purpose, even customize it for your own needs.
			</p>
		</div>
	</div>

	<div class="grid-section" style="background-image: url('img/bg-blur3.jpg');">

		<div class="content grid-container">

			<!--  ================== MEDIA BOXES ================== -->

			<div class="filters-container">
			
				<input type="text" id="search2" class="media-boxes-search" placeholder="Search By Title">

				<div class="media-boxes-drop-down" id="sort2">
					<div class="media-boxes-drop-down-header">
					</div>
					<ul class="media-boxes-drop-down-menu">
						<li><a href="#" data-sort-by="original-order" class="selected">Original Order</a></li>
						<li><a href="#" data-sort-by="title" data-sort-toggle="true">Sort by Title</a></li>
						<li><a href="#" data-sort-by="year" data-sort-toggle="true">Sort by Year</a></li>
					</ul>
				</div>

				<div class="media-boxes-drop-down" id="filter3">
					<div class="media-boxes-drop-down-header">
					</div>
					<ul class="media-boxes-drop-down-menu">
						<li><a class="selected" href="#" data-filter="*">All</a></li>
						<li><a href="#" data-filter=".category1">Category 1</a></li>
						<li><a href="#" data-filter=".category2">Category 2</a></li>
						<li><a href="#" data-filter=".category3">Category 3</a></li>
						<li><a href="#" data-filter=".category1, .category2">Category 1 and 2</a></li>
					</ul>
				</div>

			</div>		

			<div id="grid3">

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category1">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-25.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=Os1G8RtqY2c"></div>

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Dolor sit amet</div>
		                <div class="media-box-date">2008</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category1">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-11.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=5guMumPFBag"></div>

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Psico dell consecteture</div>
		                <div class="media-box-date">2007</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category2" data-columns="2">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-26.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=UrIbxk7idYA"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Sed do eiusmod</div>
		                <div class="media-box-date">2013</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category3">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-1.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=2zqy21Z29ps"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Incididunt ut labore</div>
		                <div class="media-box-date">2010</div>
		            </div>
		        </div>
		 
		<!-- -------------------------- BOX MARKUP -------------------------- -->            
		        <div class="media-box category1">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-2.jpg" ></div>
						<div data-type="iframe" data-popup="http://vimeo.com/22884674"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Enim ad minim</div>
		                <div class="media-box-date">2014</div>
		            </div>
		        </div>
		     
		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category2">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-3.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=KVu3gS7iJu4"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Ullamco laboris</div>
		                <div class="media-box-date">2011</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category3">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-4.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=vIu85WQTPRc"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Nostrud exercitation</div>
		                <div class="media-box-date">2003</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category1">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-5.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=ufsrgE0BYf0"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Et dolore magna</div>
		                <div class="media-box-date">2012</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category2" >
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-6.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=vw61gCe2oqI"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Ex ea commodo</div>
		                <div class="media-box-date">2005</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category3">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-7.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=7ZF4jzMJ1oI"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Duis aute irure</div>
		                <div class="media-box-date">2004</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category1">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-8.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=IHHPPX6dnYU"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Nisi ut aliquip</div>
		                <div class="media-box-date">2013</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category2" data-columns="2">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-10.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=xpkcEIsgGmU"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Dolor in reprehenderit</div>
		                <div class="media-box-date">2014</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category3">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-9.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=qGDyslD68as"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Cillum dolore eu</div>
		                <div class="media-box-date">2009</div>
		            </div>
		        </div>

		<!-- -------------------------- BOX MARKUP -------------------------- -->      
		        <div class="media-box category1">
		            <div class="media-box-image">
		                <div data-width="240" data-height="161" data-thumbnail="gallery/thumbnails/thumb-27.jpg" ></div>
						<div data-type="iframe" data-popup="https://www.youtube.com/watch?v=z5Humz3ONgk"></div>	                

						<div class="thumbnail-overlay">
							<i class="fa fa-play mb-open-popup"></i>
						</div>
		            </div>

		            <div class="media-box-content">
		                <div class="media-box-title">Nulla pariatur</div>
		                <div class="media-box-date">2011</div>
		            </div>
		        </div>
     

		    </div> <!-- #container -->
			<!--  ================== END MEDIA BOXES ================== -->

		</div>
	
	</div>


	<div class="section">
		<div class="content">
			
			<div class="features-container">

				<div class="row">
  					<div class="col-md-6">
						<h4><i class="fa fa-user"></i> Each media box is independent</h4>
						<p>Your boxes don't have to be the same, so make any combination that you can think with images, videos, sounds, iframes, text, HTML, etc.</p>
  					</div>
  					<div class="col-md-6">
  						<h4><i class="fa fa-expand"></i> Put anything on the popup</h4>
  						<p>You can load images, Youtube/Vimeo videos, SoundCloud sounds, iframes, HTML, Google maps, Web pages or content via AJAX.</p>
  					</div>
				</div>

				<div class="row">
  					<div class="col-md-6">
						<h4><i class="fa fa-arrows-alt"></i> Fully Responsive</h4>
						<p>The grid will automatically adapt to its container taking care of keeping the right proportions.</p>
  					</div>
  					<div class="col-md-6">
  						<h4><i class="fa fa-tablet "></i> Different resolutions</h4>
  						<p>You can define a different grid layout for phones, tablets, desktops and all kind of resolutions.</p>
  					</div>
				</div>

				<div class="row">
  					<div class="col-md-6">
						<h4><i class="fa fa-sort-amount-asc"></i> Powerful filter system</h4>
						<p>You can make all kind of complicated filters and define your own HTML markup.</p>
  					</div>
  					<div class="col-md-6">
  						<h4><i class="fa fa-th"></i> Super fast grid system</h4>
  						<p>The plugin is using Isotope v2 which is one of the fastest and powerful grid systems out there, using the best browser features when available.</p>
  					</div>
				</div>
				
				<div class="row">
  					<div class="col-md-6">
						<h4><i class="fa fa-hand-o-up"></i> Overlay Effect</h4>
						<p>Several overlay effects that are using CSS3 transitions in order to give you the best performance available.</p>
  					</div>
  					<div class="col-md-6">
  						<h4><i class="fa fa-file-image-o"></i> Define the Ratio</h4>
  						<p>You can specify the ratio of the thumbnails and the plugin will cut and center them for you with CSS techniques (only cuts the height, the width remains the same).
  					</div>
				</div>

				<div class="row">
  					<div class="col-md-6">
						<h4><i class="fa fa-pencil"></i> Fully Customizable</h4>
						<p>You can adapt the plugin to your needs, it is very simple to customize it via CSS or JS (if you know it).</p>
  					</div>
  					<div class="col-md-6">
  						<h4><i class="fa fa-file-o"></i> Documentation</h4>
  						<p>You can read the documentation for free <a href="../documentation/index.html">here</a>, and feel free to ask any question you may have.</p>
  					</div>
				</div>
				
			</div>

			<div style="text-align:center;" >
			    <a class="get-it-now-bottom" href="http://codecanyon.net/item/multi-purpose-media-boxes-responsive-grid/5683020" style="text-decoration:none;">
			      	Buy Now
			    </a>  
		      	<br>
		      	<br>
		      	<br>
		      	<a style="color:#f55856;" href="http://codecanyon.net/user/davidbo90/follow">David Blanco</a> 2013 © All rights reserved.
		  </div>
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
	    	boxesToLoadStart: 8,
	    	boxesToLoad: 5,
	    	horizontalSpaceBetweenBoxes: 20,
        	verticalSpaceBetweenBoxes: 20,
	    }); 

	    $('#grid2').mediaBoxes({
	    	filterContainer: '#filter2',
	    	sortContainer: '#sort',
	    	getSortData: {
	          title: '.media-box-title',
	          year: '.media-box-year parseInt',
	          author: '.media-box-author'
	        },
	    	horizontalSpaceBetweenBoxes: 20,
        	verticalSpaceBetweenBoxes: 20,
	    }); 

	    $('#grid3').mediaBoxes({
	    	filterContainer: '#filter3',
	    	search: '#search2',
	    	sortContainer: '#sort2',
	    	getSortData: {
	          title: '.media-box-title',
	          year: '.media-box-date parseInt',
	        },
	    	boxesToLoadStart: 9,
	    	boxesToLoad: 10,
	    	horizontalSpaceBetweenBoxes: 20,
        	verticalSpaceBetweenBoxes: 20,
	    });

	</script>


	<!-- Bootstrap JS file -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<script src="js/demo.js"></script>


</body>
</html>