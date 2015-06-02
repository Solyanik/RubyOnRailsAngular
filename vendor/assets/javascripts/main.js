$(document).ready(function()
{
	$(".btn-click").click( function(e) {
		scrollToTarget($(this).attr('name-url'));
	});
});

// Scroll to target
function scrollToTarget(e)
{
	if(e == 1) e = 0;
	else if(e == 2) e = $(document).height();
	else e = $(e).offset().top;

	$('html,body').animate({scrollTop:e}, 'slow');
}