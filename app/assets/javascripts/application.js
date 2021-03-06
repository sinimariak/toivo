// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.raty
//= require ratyrate

$(document).ready(function(){
	if ($("#user_vendor").prop('checked')) $("#vendor_fields").show();
	else $("#vendor_fields").hide();
});

function toggle(className, obj) {
    var $input = $(obj);
    if ($input.prop('checked')) $(className).show();
    else $(className).hide();
}

$(function(){
   /* start typed element */
   //http://stackoverflow.com/questions/24874797/select-div-title-text-and-make-array-with-jquery
   var subElementArray = $.map($('.sub-element'), function(el) { return $(el).text(); });    
   $(".element").typed({
       strings: subElementArray,
       typeSpeed: 30,
       contentType: 'html',
       showCursor: false,
       loop: true,
       loopCount: true,
   });

});