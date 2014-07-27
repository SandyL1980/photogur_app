
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


	$('.like').on('click', function(e){
		e.preventDefault();
		$('.like').text(' Thank You!');
		$('.like').css('font-size', '12px');

	});
    
});
