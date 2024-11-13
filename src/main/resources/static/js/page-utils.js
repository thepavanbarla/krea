
// HEADER
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


// FOOTER
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
	
	var email = $('#email').val();
	
	if(!validateEmail(email)){
		alert('Please enter a valid email to subscribe. ');
		return;
	}else{
		$.ajax({
        	url: "/rest/subscribe/",
        	type: "POST",
        	data: {
        		"email": email
        	},
        	success: function(){
        		sendSuccess();
        		$('#subscribe_submit').attr("disabled", true);
        		$('#email').addClass('no-opacity');
        		setTimeout(function(){
        			$('#email').slideUp();
        		}, 300);
        	},
        	failure: function(){
        		alert('There was a issue subscribing you to Krea. Please try again later. ');
        	}
        });
	}
});