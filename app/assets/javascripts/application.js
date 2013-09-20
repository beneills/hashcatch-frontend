// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready( function () {
//    $( "#tweet-body" ).keypress(function() {
    $( "#tweet-button" ).click(function() {
	var tweet = $( "#tweet-body" ).val();
	var link = $( "#tweet-button" ).parent();
	var url = link.attr('href');
	// TODO hack
	url = url.replace(/&text=.*$/, "&text=" + encodeURIComponent(tweet));
	link.attr('href', url);
    });

    $( "#arrow" ).click(function() {
	// http://stackoverflow.com/questions/5003220/javascript-jquery-animate-to-auto-height
	var help = $('#help'),
	helpHeight = help.height();
	help.css('min-height', helpHeight);

	var text = $('#help-text'),
	textHeight = text.height();
	autoHeight = text.css('height', 'auto').height();
	text.height(textHeight).animate({height: autoHeight}, 600);

	$( "#arrow" ).hide();

	$( ".twitter-hashtag-button a" ).remove();
//fadeOut();
 // slideUp(500, function() {
 // 	    help.css('height', 'auto');
 // 	});
	
	//, function(){
//	$( "#arrow" )

	// $( "#help" ).slideDown( "medium", function() {
	//     // Animation complete.
	// });
    });



    $( "#help-dismiss" ).click(function() {
	$('#help-text').animate({height: "10px"}, 600);
	$( "#arrow" ).show();
    });
});
