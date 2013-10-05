$( document ).ready( function () {
    $( ".application-help" ).hide();

    $( ".application-title" ).hover(function() {
	/* todo all apps */
	$( ".application-help" ).fadeIn(100);
    }, function() {
	/* todo all apps */
	$( ".application-help" ).stop().fadeOut(300);
    });
});
