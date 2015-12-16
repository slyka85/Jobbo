// jQuery & Velocity.js
 $(document).ready(function(){

function slideUpIn() {
  $("#login").velocity("transition.slideUpIn", 1250)
};

function slideLeftIn() {
  $(".row").delay(500).velocity("transition.slideLeftIn", {stagger: 500})    
}

function shake() {
		$(".sign-in-box").velocity("transition.expandOut");
	// $(".username-row").velocity("transition.expandOut");
  // $(".password-row").velocity("transition.expandOut");
  // $("#login-button").velocity("transition.expandOut");
}

slideUpIn();
slideLeftIn();
$("#login-button").on("click", function () {
  shake();
});

});