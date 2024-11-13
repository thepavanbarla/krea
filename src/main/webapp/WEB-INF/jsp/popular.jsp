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
      
        <div id="popular_stories" class="horizontal_items">
        
        
        </div>
      
      </div>
    
    
    
    </div>
    
  	<jsp:include page="includes/footer.jsp" />
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script src="/js/page-utils.js"></script>
    
    <script>
    
	    var pageIndex = 0;
	    getPopularStories();
	
	    function getPopularStories(){
	        $.ajax({
	        	url: "/rest/stories/popular", 
	        	success: function(data){
	            	$(data).each(function(i, item){
	            		var html = prepareStoryTile(item);
	            		$('#popular_stories').append(html);
	            	});
	            	if(data.length > 0){
	        			pageIndex+=1;
	        		}
	          	}
	        });
	    }
	    
	    function prepareStoryTile(story){
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
        
    
    </script>
    
  </body>
</html>
