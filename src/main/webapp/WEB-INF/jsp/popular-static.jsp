<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="theme-color" content="#000000">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">

    <title>Krea | Popular Stories</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/css/home.css">

    <script src="https://kit.fontawesome.com/2907ed87b5.js" crossorigin="anonymous"></script>

	<style>
	
		#page_content{
			background: rgba(46, 50, 66, 1);
			padding-top: 30px;
			width: 100%;
		}
		
	</style>
    
  </head>
  
  
  <body>
    
    <jsp:include page="includes/header.jsp">
		<jsp:param name="pageType" value="popular"/>
	</jsp:include>
    
    
    <div id="page_content">
    
      <div class="horizontal_section">
      
        <h2 class="title">Popular Stories</h2>
      
        <div class="horizontal_items">
        
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/bali.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
              <h3 class="item_title">These Bali Rice Gardens will give you Travel Goals</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/beach.jpg'); ">
              <div class="item_details">
                <span class="category" style="background: navy;">WATER</span>
                <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
              </div>
            </div>
          </div>

          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/1.jpg'); ">
              <div class="item_details">
                <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/12.jpg'); ">
            <div class="item_details">
            <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">Cats can smell things that you can't smell</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/cappadocia.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/6.jpg'); ">
            <div class="item_details">
              <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/boracay.jpg'); ">
              <div class="item_details">
                <span class="category" style="background: navy;">WATER</span>
                <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/brand_bg.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
              <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/munnar.jpg'); ">
            <div class="item_details">
              <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/mu-cang.jpg'); ">
              <div class="item_details">
                <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/bali.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
              <h3 class="item_title">These Bali Rice Gardens will give you Travel Goals</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/beach.jpg'); ">
              <div class="item_details">
                <span class="category" style="background: navy;">WATER</span>
                <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
              </div>
            </div>
          </div>

          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/1.jpg'); ">
              <div class="item_details">
                <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/12.jpg'); ">
            <div class="item_details">
            <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">Cats can smell things that you can't smell</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/cappadocia.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/6.jpg'); ">
            <div class="item_details">
              <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/boracay.jpg'); ">
              <div class="item_details">
                <span class="category" style="background: navy;">WATER</span>
                <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/brand_bg.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
              <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/munnar.jpg'); ">
            <div class="item_details">
              <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/mu-cang.jpg'); ">
              <div class="item_details">
                <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/bali.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
              <h3 class="item_title">These Bali Rice Gardens will give you Travel Goals</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/beach.jpg'); ">
              <div class="item_details">
                <span class="category" style="background: navy;">WATER</span>
                <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
              </div>
            </div>
          </div>

          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/1.jpg'); ">
              <div class="item_details">
                <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/12.jpg'); ">
            <div class="item_details">
            <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">Cats can smell things that you can't smell</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/cappadocia.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/6.jpg'); ">
            <div class="item_details">
              <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/boracay.jpg'); ">
              <div class="item_details">
                <span class="category" style="background: navy;">WATER</span>
                <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
              </div>
            </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/brand_bg.jpg'); ">
            <div class="item_details">
              <span class="category">TRAVEL</span>
              <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
          <div class="horizontal_item" style="background-image: url('/images/munnar.jpg'); ">
            <div class="item_details">
              <span class="category" style="background: navy;">WATER</span>
              <h3 class="item_title">10 beaches You Must Visit while you're alive</h3>
            </div>
          </div>
          </div>
          
          <div class="horizontal_item_space">
            <div class="horizontal_item" style="background-image: url('/images/mu-cang.jpg'); ">
              <div class="item_details">
                <span class="category">TRAVEL</span>
                <h3 class="item_title">These Nature's Wonders will leave you speechless</h3>
              </div>
            </div>
          </div>
          
        
        </div>
      
      </div>
    
    
    
    </div>
    
  	<jsp:include page="includes/footer.jsp" />
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script src="/js/page-utils.js"></script>
    
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
    
  </body>
</html>
