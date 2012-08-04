// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){
$("#slider").slides({
preload: true,
preloadImage: '/img/ajax-loader.gif',
play: 5000,
pause: 2500,
slideSpeed: 600,
hoverPause: true,
generateNextPrev: false
});

$('#radio_5').prop('disabled', true);
    	$('#radio_2').prop('checked', true);
    	$(document).on('change', 'input:radio, input:checkbox', function(){
        if ($(this).attr('type') == 'radio') {
            that = $(this);
            $('input[name=' + $(this).attr('name') + ']').each(function() {
                if ($(this) != that) $('label[for=' + $(this).attr('id') + ']').removeClass('active');             
            });
        }
        if (this.checked) {
            $(this).attr('checked', 'checked');
            $('label[for=' + $(this).attr('id') + ']').addClass('active');
        }else {
            $(this).removeAttr('checked');
            $('label[for=' + $(this).attr('id') + ']').removeClass('active');
        }
    });

});
