
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

	<meta name="mobile-web-app-capable" content="yes">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="theme-color" content="#000000">
	
	<title>10 Most Beautiful Places on Earth | Story on Krea</title>
	<meta name="og:title" content="10 Most Beautiful Places on Earth | Story on Krea"/>
	<meta name="og:type" content="article"/>
	<meta name="og:url" content="https://krea.xyz/most-beautiful-places"/>
	<meta name="og:image" content="/images/lavender-provence-small.jpg"/>
	<meta name="og:site_name" content="Krea"/>
	<meta name="og:description" content="Create and Experience Web's Most Beautiful Stories. "/>
	
	<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
	
	<link rel="stylesheet" type="text/css" href="/css/home.css">
	<link rel="stylesheet" type="text/css" href="/css/fullpage.css" />
	<link rel="stylesheet" type="text/css" href="/css/tilt.css" />
    <link href="https://fonts.googleapis.com/css?family=Exo:900|Assistant:200|Playfair+Display:700|Montserrat:300|Raleway:300,700|Roboto+Slab:300" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/slide.css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.18/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript" src="/js/tilt.js"></script>
	
	<script>
		var gyroListener = function(event){
			if(event.rotationRate.alpha || event.rotationRate.beta || event.rotationRate.gamma){
	  			gyroPresent = true;
	  			window.removeEventListener("devicemotion", gyroListener);
			}
		};
  		var gyroPresent = false;
		window.addEventListener("devicemotion", gyroListener);
	</script>
	
	<style>
    
    	#related_stories{
    		width: 100%;
    		overflow-x: auto;
    		display: flex;
    	}
    	
    	.footer-slide .title{
	    	padding-top: 20px;
    		font-size: 12pt;
    		font-weight: 500;
    	}
    
    	.horizontal_item_space{
    		height: 300px;
    		width: 100%;
    		max-width: 400px;
    		max-height: 50vh;
    		flex: 0 0 auto;
    		padding: 0px;
    	}
    
    </style>
	
</head>


<body>

	<div id="fullpage">
		<div class="section title-section" id="section_0" data-index="0">
			<div class="top-bar">
				<a href="/">
					<img class="logo" src="/images/web-logo-white.svg" />
					<img class="mobile-logo" src="/images/web-logo-white.svg" />
				</a>
			</div>
			<div class="fp-bg unready" style="background-image: url('/images/antelope-canyon.jpg');"></div>
            <div class="content" id="content_0">
            	<div class="title-container unready">
            		<h1>${story.storyTitle}</h1>
            		<span>
            			<span class="author">by Krea</span>
            			&bull;
            			<span class="date">${story.publishedDateStr}</span>
            		</span>
            	</div>
            </div>
		</div>
		
		
		<c:forEach items="${story.slides}" var="slide" varStatus="loop">
		
			<div class="section content-section" id="section_${loop.count}" data-index="${loop.count}">
				<div class="fp-bg" style="background-image: url('${slide.slideImage}');"></div>
				<div style="pointer-events: none; z-index: 90" class="mask-container" id="mask-container-${loop.count}" data-url="${slide.slideImage}"></div>
				<div class="content" id="content_${loop.count}">
					<div class="content-container faded">
						<h3 style="position: relative; z-index: 10000">${slide.slideTitle}</h3>
						<p class="lowered">
							${slide.slideDesc}
						</p>
					</div>
	            </div>
			</div>
		
		</c:forEach>
		
		
		
		<div class="section footer-section">
			<div class="fp-bg" style="background-image: linear-gradient(#000,#000);"></div>
			<div class="footer-slide">
				<p class="instruction">Share this story with your friends!</p>
				<br /> 
				<a class="share fb" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://krea.xyz/most-beautiful-places"><i class="fab fa-facebook-square"></i></a> 
				<a class="share tw" target="_blank" href="http://twitter.com/share?text=10 Most beautiful places on Earth. A story on Krea.&url=https://krea.xyz/most-beautiful-places&hashtags=krea,beautifulplaces,travel"><i class="fab fa-twitter-square"></i></a> 
				<a class="share wa" target="_blank" href="https://plus.google.com/share?url=https://krea.xyz/most-beautiful-places"><i class="fab fa-whatsapp-square"></i></a> 
				<br/>
				
				<h2 id="related_stories_title" class="title">Next Story</h2>
				<div id="related_stories">
					
				</div>

				<div class="bottom">
					<span>Built with </span>&nbsp;
					<a href="/">
						<img id="footer_logo" src="/images/web-logo-white.svg" />
					</a>
				</div>
			</div>
		</div>
		
	</div>
	
	<div class="hint" id="swipe-up-hint" style="display: none;">
		<div class="hint-content">
			<i id="swipe-up" class="far fa-hand-point-up"></i>
			<br/>
			Swipe up to read the next slide.
			<br/>		
			<a href="javascript:;" onclick="closeSwipeUpHint();">Got it!</a>
		</div>
	</div>
	
	<div class="hint" id="double-tap-hint" style="display: none;">
		<div class="hint-content">
			<i id="double-tap" class="far fa-hand-point-up"></i>
			<br/>
			Double tap to explore the picture.
			<br/>		
			<a href="javascript:;" onclick="closeDoubleTapHint();">Got it!</a>
		</div>
	</div>
	
	<div class="hint" id="phone-tilt-hint" style="display: none;">
		<div class="hint-content">
			<i id="phone-tilt" class="fas fa-mobile-alt"></i>
			<br/>
			Tilt your device to span the picture. <br/>
			Double tap again to exit tilt mode. <br/>
			<!-- Swipe up to see more slides. You're all set. Enjoy!
			<br/> -->		
			<a href="javascript:;" onclick="closePhoneTiltHint();">Got it!</a>
		</div>
	</div>
	
	
	<div id="loading">
		<img src="/images/loading.svg"/>
	</div>
	
	<div id="progress"></div>
	<div id="progressBg"></div>

	<script type="text/javascript" src="/js/fullpage.parallax.min.js"></script>
	<script type="text/javascript" src="/js/fullpage.extensions.min.js"></script>
	
	<script type="text/javascript">
	
	var storyId = "${story.storyId}";
	
	var showSwipeUpHint = false;
	var showDoubleTapHint = false;
	var showPhoneTiltHint = false;
	var lastTranslatePos = null;
	var lastPosDifference = 0;
	var myFullpage = null;
	var windowHeight = 0;
	var pageCount = ${story.slides.size() + 1};
		
	$(window).resize(function(){
		  fullpage_api.destroy('all');
      	initFullPage(); 
    });
	
	  function initFullPage(){
	    
	      myFullpage = null;
        myFullpage = new fullpage('#fullpage', {
    	    navigation: true,
        	navigationPosition: 'right',
        	parallax: true,
        	licenseKey: 'B209BA90-8A624C2A-8A45B1B0-84548293', 
        	parallaxKey: 'a3JlYS54eXpfcG4wY0dGeVlXeHNZWGc9S2g3',
        	parallaxOptions: {
				type: 'reveal',
				percentage: 40,
				scrollBar: true,
				property: 'translate'
			},
			scrollSpeed: 1000,
			afterLoad: function(origin, destination, direction){
				
				if(showDoubleTapHint){
					$('#double-tap-hint').fadeIn(400);
					setCookie('double-tap-hint-state', '1', 365);
					showDoubleTapHint = false;
				}
				
				if(origin != null && origin.index > 0){
					// destroy tilt mask if enabled at origin
					$('.mask-container .mask').remove();
					$('#content_' + origin.index + ' p').show();
				}
			},
			onLeave: function(origin, destination, direction){
				if(destination != null && destination.index > 0){
					$('#content_' + destination.index + '>div').removeClass('faded');
					$('#content_' + destination.index + ' p').removeClass('lowered');
				}
				
				var progressHeight = ((destination.index)/pageCount) * windowHeight;
				$('#progress').css('height', progressHeight+'px');
			}
    	});
    	
    	windowHeight = $(window).height();  
	  }
    	
  	$('.hide-text-btn').click(function(){
  		var index = $(this).attr('data-index');
  		$('#content_' + index).toggleClass('hide');
  		
  		if($('#content_' + index).hasClass('hide')){
  			$(this).find('img').attr('src', '/images/hide-text-active.svg');
  		}else{
  			$(this).find('img').attr('src', '/images/hide-text.svg');
  		}
  	});
  	
  	function getImageInitPosition(imageUrl, index){
  		var img = new Image();
  		img.onload = function() {
  			var height = this.height;
  			var width = this.width;
  			var aspectRatio = width/height;
  			
  			var viewportHeight = window.innerHeight;
  			height = viewportHeight;
  			
  			var resizedImgWidth = (aspectRatio * height);
  			var delta = resizedImgWidth - window.innerWidth;
  			var initPos = delta/2;
  			
  			$('#mask-container-' + index).attr('data-first-pos', -initPos);
  		}
  		img.src = imageUrl;
  	}
  	
  	
  	//reading double tap
  	var tapped = false;
  	var firstPos = null;
    	
		$(".section").on("touchstart",function(e){
		    if(!tapped){ 
		      	tapped=setTimeout(function(){
		          	tapped=null;
		      	},300);
		    } else { 
		      	clearTimeout(tapped);
		      	tapped=null;
		      	
		      	var index = $(this).attr('data-index');
		      	
		      	if(index == 0)
		      		return;
		      	
				if(showPhoneTiltHint){
					$('#phone-tilt-hint').fadeIn(400);
					setCookie('phone-tilt-hint-state', '1', 365);
					showPhoneTiltHint = false;
				}
		      	
		      	var toggleState = $('#content_' + index + ' p').css('display');
		      	$('#content_' + index + ' p').slideToggle(350, 'linear');
		      	
		      	
		      	if(toggleState != 'none'){
		      		$('#content_' + index + ' .content-container').animate({'padding-top': '20px'}, 350, 'linear');
		      		var maskContainer = $('#mask-container-' + index)[0];
		      		var imgUrl = maskContainer.getAttribute('data-url');
		      		
		      		if(maskContainer.hasAttribute('data-first-pos') == false)
		      			getImageInitPosition(imgUrl, index);
		      		
		      		var mask = new PhotoTilt({
	      	        	url:imgUrl,
	      	        	container: maskContainer,
	      	        	maxTilt: 13
	      	    	});
		      		
		      		$('.mask').css('display', 'block');
		      	}
	    		else{
	    			$('#content_' + index + ' .content-container').animate({'padding-top': '100px'}, 350, 'linear');
	    			$('.mask').removeClass('active');
	    		      $('.section.active .fp-bg').css('background-position-x', '50%');
	    		      firstPos = $('#mask-container-' + index).attr('data-first-pos');
	    		      $("<style id='tempStyle' type='text/css'> .half-translate{ transform: translateX(" + firstPos + "px) !important; } </style>").appendTo("head");
	    		      $('.mask img').addClass('half-translate');
	    		      setTimeout(function(){
	    		      		$('.mask').css('display', 'none');
	    		        	$('.mask-container .mask').remove();
	    		        	$('#tempStyle').remove();
	    		        	firstPos = null;
    		      		}, 600);
		    	}
		      	e.preventDefault();  	
		    }
		});
		
		function closeSwipeUpHint(){
			$('#swipe-up-hint').fadeOut(400);
		}
		
		function closeDoubleTapHint(){
			$('#double-tap-hint').fadeOut(400);
		}
		
		function closePhoneTiltHint(){
			$('#phone-tilt-hint').fadeOut(400);
		}
		
		window.onload = function(){
		  
		  initFullPage(); 
			
			setTimeout(function(){
				$('#loading').fadeOut(800);	
			}, 250);
			
			setTimeout(function(){
				$('.title-container').removeClass('unready');
				$('#section_0 .fp-bg').removeClass('unready');
			}, 500);
			
			setTimeout(function(){
				$('#section_0 .fp-bg').addClass('animateBg');
			}, 3000);
			
			var swipeUpHintState = getCookie('swipe-up-hint-state');
			if(swipeUpHintState != '1')
				showSwipeUpHint = true;
			
			if(showSwipeUpHint){
				setTimeout(function(){
					$('#swipe-up-hint').fadeIn(400);
					setCookie('swipe-up-hint-state', '1', 365);
					showSwipeUpHint = false;
				}, 1500);
			}
			
			var doubleTapHintState = getCookie('double-tap-hint-state');
			if(doubleTapHintState != '1')
				showDoubleTapHint = true;
			
			var phoneTiltHintState = getCookie('phone-tilt-hint-state');
			if(phoneTiltHintState != '1')
				showPhoneTiltHint = true;
				
			setTimeout(function(){
				loadNextStory();
			}, 500);	
			
		}
		
		function loadNextStory(){
	        $.ajax({
	        	url: "/rest/stories/related/" + storyId, 
	        	success: function(data){
	        		if(data.length > 0){
            			var html = prepareNextStoryTile(data[0]);
            			$('#related_stories').append(html);
	        		}
	        		else{
	        			$('#related_stories_title').css('display', 'none');
	        			$('#related_stories').css('display', 'none');
	        		}
	          	}
	        });
		}
	        
        function prepareNextStoryTile(story){
        	return '<a class="horizontal_item_space" href="/story/' + story.storySlug + '">'+
						'<div class="horizontal_item"' +
						'style="background-image: url(\'' + story.coverPhoto + '\');">' +
							'<div class="item_details">' +
								'<span class="category">' + story.categoryName + '</span>' +
								'<h3 class="item_title">' +
									story.storyTitle +
								'</h3>' +
							'</div>' +
						'</div>' +
					'</a>';
						
        }
		
		// cookie utils
		function setCookie(cname,cvalue,exdays) {
		    var d = new Date();
		    d.setTime(d.getTime() + (exdays*24*60*60*1000));
		    var expires = "expires=" + d.toGMTString();
		    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
		}

		function getCookie(cname) {
		    var name = cname + "=";
		    var decodedCookie = decodeURIComponent(document.cookie);
		    var ca = decodedCookie.split(';');
		    for(var i = 0; i < ca.length; i++) {
		        var c = ca[i];
		        while (c.charAt(0) == ' ') {
		            c = c.substring(1);
		        }
		        if (c.indexOf(name) == 0) {
		            return c.substring(name.length, c.length);
		        }
		    }
		    return "";
		}
		
		
		
	</script>

</body>




</html>