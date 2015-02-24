//Creating 50 thumbnails inside .grid
//the images are stored on the server serially. So we can use a loop to generate the HTML.
var images="", images2="";
for(var i =6; 1 <= i; i--)
	images += '<li><img src="images/background/'+i+'.jpg"/></li>';

for(var i =12; 7<= i; i--)
	images2 += '<li><img src="images/background/'+i+'.jpg" /></li>';
		
//appending the images to .grid
$(".grid1").append(images);
$(".grid2").append(images2);


var d = 0; //delay
var s; //transform params

//animation time
$(".animate").on("click", function(){
	//fading out the thumbnails with style
	$("img").each(function(){
		d = Math.random()*1000; //1ms to 1000ms delay
		$(this).delay(d).animate({opacity: 0}, {
			//while the thumbnails are fading out, we will use the step function to apply some transforms. variable n will give the current opacity in the animation.
			step: function(n){
				s = 1-n; //scale - will animate from 0 to 1
				$(this).css("transform", "scale("+s+")");
			}, 
			duration: 1000, 
		});
	}).promise().done(function(){
		//after *promising* and *doing* the fadeout animation we will bring the images back
		storm();
	});
});
//bringing back the images with style
function storm()
{
	$("img").each(function(){
		d = Math.random()*1000;
		$(this).delay(d).animate({opacity: 1}, {
			step: function(n){
				$(this).css("transform", "scale("+s+")");
			}, 
			duration: 3000, 
			//some easing fun. Comes from the jquery easing plugin.
			easing: 'easeOutQuint', 
		});
	});
}



