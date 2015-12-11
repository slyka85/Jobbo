 $(document).ready(function(){
 	console.log("im in");
	var b1 = $('ul.nav.navbar-nav li:first-child a');
	var b2 = $('ul.nav.navbar-nav li:nth-child(2) a');
	var b3 = $('ul.nav.navbar-nav li:nth-child(3) a');
	var b4 = $('ul.nav.navbar-nav li:nth-child(4) a'); 
	var b5 = $('ul.nav.navbar-nav li:nth-child(5) a');
	var b6 = $('ul.nav.navbar-nav li:nth-child(6) a');

	var p1 = new waterFloat(b1,900,3,8);
	var p2 = new waterFloat(b2,700,3,8);
	var p3 = new waterFloat(b3,800,3,10);
	var p4 = new waterFloat(b4,900,3,8);
	var p5 = new waterFloat(b5,700,3,8);
	var p6 = new waterFloat(b6,800,3,10);

   });