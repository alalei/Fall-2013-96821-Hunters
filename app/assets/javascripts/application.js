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
//= require bootstrap
//= require_tree .

jQuery(function($) {
    changeFunction();
    $('#product_condition_true').change(changeFunction);
    $('#product_condition_false').change(changeFunction);
    $('#product_is_bid').change(changeFunction);
});
//change display according to the value of radio button
function changeFunction(){
    //alert(document.getElementById('product_condition_true').checked);
    var div = document.getElementById('daysUsed');
    div.style.display = (document.getElementById('product_condition_true').checked == true ? "none" : "block");

    var div = document.getElementById('is_bid');
    div.style.display = (document.getElementById('product_is_bid').checked == false ? "none" : "block");

}
