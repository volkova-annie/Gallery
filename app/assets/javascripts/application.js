// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require bootstrap-sprockets
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(startApplication);

function startApplication(){
	$('.img-left-side').css({"display": "none"});
    $('.img-right-side').css({"display": "none"});
    $('.image_diag').css({"display": "none"});  
}

function updateSlider(slideAmount) {
  //get the element
  var displayValue = document.getElementById("chosen_value");
  //show the amount
  console.log("IN updateSlider:  - slideAmount = " + slideAmount );
  displayValue.innerHTML = slideAmount;

  //get the element
  var pic = document.getElementById("pic");
  //set the dimensions
  //   pic.style.width = slideAmount + "%";
  //   pic.style.height = slideAmount + "%";
  // return slideAmount;

}
