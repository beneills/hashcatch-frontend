$( document ).ready( onLoad );
document.addEventListener("page:change", onLoad); // every link click

function onLoad () {
    $( ".application-help" ).hide();

    $( ".application-title" ).hover(function() {
	var help = $(this).parent().parent().find(".application-help");
	help.fadeIn(100);
    }, function() {
	$( ".application-help" ).stop().fadeOut(300);
    });
}
