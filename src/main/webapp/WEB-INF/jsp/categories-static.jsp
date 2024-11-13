<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Krea | Categories</title>
	
	<link href="/css/home.css" rel="stylesheet" type="text/css" media="all">
	<link href="/css/categories.css" rel="stylesheet" type="text/css" media="all">
	
	<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
	
	<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/coverflow.css" />
	
	<link type="text/css" href="/css/jquery.ui.core.css" rel="stylesheet" />
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mobile/1.4.5/jquery.mobile.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/2907ed87b5.js"></script>
</head>

<body>

	<jsp:include page="includes/header.jsp">
		<jsp:param name="pageType" value="categories"/>
	</jsp:include>

	<div id="coverflow_space">

		<div id="coverflow">

			<div class="category_card"
				style="background-image: url('/images/12.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/munnar.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/boracay.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>
			<div class="category_card"
				style="background-image: url('/images/12.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/munnar.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/boracay.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>
			<div class="category_card"
				style="background-image: url('/images/12.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/munnar.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/boracay.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

			<div class="category_card"
				style="background-image: url('/images/12.jpg');">
				<div class="card_title noselect">Travel</div>
				<div class="card_details">
					<div class="card_desc noselect">If you like to travel, this
						is for you. We have a stunning collection of stories that will
						arouse your travel hormones.</div>
					<a class="category_link">View Stories</a>
				</div>
			</div>

		</div>

	</div>

	<jsp:include page="includes/footer.jsp"/>

</body>

<script src="/js/jquery-1.10.2.js"></script>
<script src="/js/jquery.ui.core.js"></script>
<script src="/js/jquery.ui.widget.js"></script>
<script src="/js/jquery.ui.effect.js"></script>
<script src="/js/jquery.mobile.custom.js"></script>
<script src="/js/debounce.js"></script>

<script src="/js/support.core.js"></script>
<script src="/js/support.transform3d.js"></script>
<script src="/js/renderer.3d.js"></script>
<script src="/js/renderer.classic.js"></script>

<script src="/js/coverflow.min.js"></script>
<script>
    $(function() {
    	
    	var count = $('.category_card').length;
    	var init = (count%2 == 0) ? ((count/2)-1) : ((count-1)/2);  	
    	
        $('#coverflow').coverflow({
          duration: 300,
          angle: 15,
          overlap: 0.2,
          scale: 0.7,
          easing: 'easeInOutCubic'
          });
        $('#coverflow').coverflow( 'select', init);
   	});
    
  </script>

<script>
    
        $(adjustHeader);
        $(window).scroll(adjustHeader);
        
        function adjustHeader(){
            if($(document).scrollTop() > 40)
                $('header').addClass('black');
            else
                $('header').removeClass('black');
        }
        
        $('#menu_btn').click(function(){
          $('#menu_btn').toggleClass('open');  
          $('#header_options').toggleClass('open');  
        });
        
        function validateEmail(email) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(String(email).toLowerCase());
        }

        function sendSuccess(){
          	$('#subscribe_submit .plane').addClass('gone');
          	$('#subscribe_submit .tick').addClass('enter');
          	setTimeout(function(){
            	$('#submit_text').html('SENT');
          	}, 100);
          	setTimeout(function(){
            	$('#subscribe_submit').addClass('success');
          	}, 300);
        }
        
        $('#subscribe_submit').click(function(){
        	sendSuccess();
        	$(this).attr("disabled", true);
        });
        
    
    </script>
</html>
