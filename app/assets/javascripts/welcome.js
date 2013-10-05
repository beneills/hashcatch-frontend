// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$( document ).ready( function () {
    if (!$.cookie('hide_help') || $.cookie('hide_help') == "false") {
	$( "#help-show" ).hide();
	$( '#help' ).show();
    } else {
	$( "#help-show" ).show();
    }

//    $( "#tweet-body" ).keypress(function() {
    $( "#tweet-button" ).click(function() {
	var tweet = $( "#tweet-body" ).val();
	var link = $( "#tweet-button" ).parent();
	var url = link.attr('href');
	// TODO hack
	url = url.replace(/&text=.*$/, "&text=" + encodeURIComponent(tweet));
	link.attr('href', url);
    });

    $( "#help-show" ).click(function() {
	$.cookie('hide_help', 'false', { expires: 365*100 });
	// http://stackoverflow.com/questions/5003220/javascript-jquery-animate-to-auto-height
	var help = $('#help'),
	helpHeight = help.height();
	$('#help').fadeIn("fast");
	help.css('height', 'auto')
	
	$( "#help-show" ).hide();
    });



    $( "#help-dismiss" ).click(function() {
	$.cookie('hide_help', 'true', { expires: 365*100 });
	$('#help').animate({height: "10px"}, 600, function () {
	    $('#help').fadeOut("fast", function (){
		$( "#help-show" ).fadeIn();
	    })
	});
    });

    // $(window).scroll(function() {
    // 	var height = $(window).scrollTop();

    // 	if(height  > 100) {
    // 	    console.log("hit");
    // 	}
    // });
});
