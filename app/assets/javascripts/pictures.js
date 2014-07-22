
$(document).ready(function() {
	var link = $('.side-nav').find('li');

	link.on('click',function(e){
		e.preventDefault();
		link.removeClass('green');
		$(this).addClass('green');
	});
});
