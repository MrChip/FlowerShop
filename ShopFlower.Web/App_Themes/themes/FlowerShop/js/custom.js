$(document).ready( function(){

	if( $.cookie('listing_products_mode') ){
            $("#product_list").removeClass('view-grid').removeClass('view-list').addClass( $.cookie('listing_products_mode') );
        }

	$("#productsview a").each( function() {
		if( $.cookie('listing_products_mode') && $(this).attr('rel') == $.cookie('listing_products_mode') ){
			$('#productsview a i').removeClass( 'active' );
			$( 'i', this).addClass('active'); 
		}
		$(this).click( function(){
			$('#productsview a i').removeClass( 'active' );
			$( 'i', this).addClass('active');
			$("#product_list").removeClass('view-grid').removeClass('view-list').addClass( $(this).attr('rel') );
			$.cookie( 'listing_products_mode', $(this).attr('rel') );
			return false;
		} ); 
	} );

	$('#nav_up').click(function () {
	   $('body,html').animate({
	    scrollTop: 0
	   }, 800);
	   return false;
	 });

	//userinfo
	 
	 $("#header_user").each( function(){
		var content = $(".groupe-content");
		$(".groupe-btn", this ).click( function(){
			content.toggleClass("eshow");
		}) ;
	} );
	$(window).resize(function() {
		if( $(window).width() > 600 ){
			 $(".groupe-content").removeClass('eshow');
		}
	});
	// canvas menu 	
	$(document.body).on('click', '[data-toggle="dropdown"]' ,function(){
	  if(!$(this).parent().hasClass('open') && this.href && this.href != '#'){
	   window.location.href = this.href;
	  }

	 });

	// Menu scrol top
	jQuery("#topnavigation").OffCavasmenu();
	 $('#topnavigation .btn-navbar').click(function () {
		   $('body,html').animate({
		    scrollTop: 0
		   }, 0);
	   return false;
	  });
	  

	
	// gototop
	   // hide #back-top first
		 $("#back-top").hide(); 
		 // fade in #back-top
		 $(function () {
			  $(window).scroll(function () {
			   if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			   } else {
				$('#back-top').fadeOut();
			   }
			  });
			  // scroll body to 0px on click
			  $('#back-top a').click(function () {
			   $('body,html').animate({
				scrollTop: 0
			   }, 800);
			   return false;
		  });
		 });	
} );

//canvast menu 
(function($) {
	$.fn.OffCavasmenu = function(opts) {
		// default configuration
		var config = $.extend({}, {
			opt1: null,
			text_warning_select:'Please select One to remove?',
			text_confirm_remove:'Are you sure to remove footer row?',
			JSON:null
		}, opts);
		// main function
	

		// initialize every element
		this.each(function() {  
			var $btn = $('#topnavigation .btn-navbar');
			var	$nav = null;
			 

			if (!$btn.length) return;
	 	 	var $nav = $('<section id="off-canvas-nav"><nav class="offcanvas-mainnav" ><div id="off-canvas-button"><span class="off-canvas-nav"><i class="icon-remove"></i></span>Close</div></nav></sections>'); 
	 	 	var $menucontent = $($btn.data('target')).find('.megamenu').clone();
			$("body").append( $nav );
	 	 	$("#off-canvas-nav .offcanvas-mainnav").append( $menucontent );
		 
		
 			$('html').addClass ('off-canvas');
			$("#off-canvas-button").click( function(){
				$btn.click();	
			} ); 
			$btn.toggle( function(){
				$("body").removeClass("off-canvas-inactive").addClass("off-canvas-active");
			}, function(){
				$("body").removeClass("off-canvas-active").addClass("off-canvas-inactive");
		 
			} );

		});
		return this;
	}
	
})(jQuery);
