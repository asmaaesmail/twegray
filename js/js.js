$(document).ready(function(){
    /* ----------- loader --------------- */
    
       /// loading website

         
      window.onload = function () {
		$(".loader").fadeOut(300);
	};
    
    /* ------------------------top---------------------------*/
    
	var scroltopbtn = $("#top");
	$(window).scroll(function () {
		if ($(this).scrollTop() > 100) {
			scroltopbtn.fadeIn();
           
		} else {
			$(scroltopbtn).fadeOut();
		}
        
        if ($(this).scrollTop() > 150) {
			
            $(".logo").addClass("resp-logo");
            $(".navigation").addClass("navigation1");
		} else {
			$(".logo").removeClass("resp-logo");
			$(".navigation").removeClass("navigation1");
		}
	});
	scroltopbtn.on('click', function () {
		$('html , body').animate({
			scrollTop: 0
		}, 600);
	});
/* ----------------------------------------------------- */

/******** toggle navbar **************/
(function($) { // Begin jQuery
  $(function() { // DOM ready
    // If a link has a dropdown, add sub menu toggle.
    $('nav ul li a:not(:only-child)').click(function(e) {
      $(this).siblings('.nav-dropdown').toggle();
      // Close one dropdown when selecting another
      $('.nav-dropdown').not($(this).siblings()).hide();
      e.stopPropagation();
    });
    // Clicking away from dropdown will remove the dropdown class
    $('html').click(function() {
      $('.nav-dropdown').hide();
    });
    // Toggle open and close nav styles on click
    $('#nav-toggle').click(function() {
       
      $('.navigation').toggleClass("nav100");
         $('nav ul').slideToggle();
        $('.nav-list').toggleClass('nav-list11')
    });
    // Hamburger to X toggle
    $('#nav-toggle').on('click', function() {
      this.classList.toggle('active');
         /* $('.nav-list').toggleClass('nav-list11');*/
    });
  }); // end DOM ready
})(jQuery); // end jQuery
    
    
   
    
    /*------------wow init ----------------*/
     wow = new WOW({
         animateClass: 'animated',
         offset: 100,
         callback: function (box) {
         console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
         }
         });
         wow.init();
    /* -------------------------------------*/
    
    
    
});