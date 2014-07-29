
$(document).ready(function() {
	var link = $('.side-nav').find('li');

	link.on('click',function(e){
		link.removeClass('green');
		$(this).addClass('green');
	});

	$('#add_review').on('click',function(e){
        e.preventDefault()
        console.log('clicked')

        $('#review').slideToggle();
    });


	$('#vote_btn').on('click', function(e){
		e.preventDefault();
		$('#vote_btn').attr('value', ' ♥ Thank You!');
		$('#vote_btn').css('font-size', '12px');
		$('#vote_btn').css('border', '12px');

	});


	//number of likes animation

	var n_likes = $('#likes');
	var likes = $('#likes').attr('data-likes');
	 
  jQuery({someValue: 0}).animate({someValue: parseInt(likes)}, {
    duration: 1000,
    easing:'swing', // can be anything
    step: function() { // called on every step
      // Update the element's text with rounded-up value:
      n_likes.text(Math.ceil(this.someValue)+ " ♥ Likes");
      n_likes.css('color', 'red');
      n_likes.css('font-size','18px');
   	}
  });
    
});
