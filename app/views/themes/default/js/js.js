
$(function(){



	function printDiv(divName) 
		{
	     var printContents = document.getElementById(divName).innerHTML;
	     var originalContents = document.body.innerHTML;
	 
	     document.body.innerHTML = printContents;

	     window.print();

	     document.body.innerHTML = originalContents;
	 	}

	function HrnToolTip(id)
		{
		var x=Math.floor((Math.random() * 10000) + 1);
			$('#'+id).attr("aria-describeby",x);
		var t=$('#'.id).data("HrnToolTip");
			$('#'+id).append('<div id="tooltip_sil_'+id+'" class="tooltip fade top in" role="'+x+'" style="top:-33px; left:-32.5px; display:block;">'+t+'</div>');
		}

	function HrnToolTipSil(id)
		{
		
		}

	function sleep(milliseconds) 
		{
		    var start = new Date().getTime();
		 
		    for (var i = 0; i < 1e7; i++) 
		    {
		 
		        if ((new Date().getTime() - start) > milliseconds)
		        {
		            break;
		        }
		 
		    }
		 
		}


	swal.setDefaults({ animation:false });



	$("ul.kategorimenu #tabmenua").hover(function(){
		var u=$(this).data("href");
		$(this).addClass("active");
		$(".tab_icerikler .menutabs").css({"display":"none","visibility":"hidden"});
		$(".tab_icerikler "+u).css({"display":"block","visibility":"visible"});
	});
	$(".ustmenu .dropdown-toggle").hover(function(){
		$(".dropdown-menu.kategorimenukapsa").css({"visibility":"visible"});
	});
	





	function isValidEmailAddress(emailAddress) 
		{
	   		var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
	    	return pattern.test(emailAddress);
		}

	


	/*****************************************************/
	/*****************İMAGE LAZYLOAD not on ie**********************/
	/*****************************************************/ 
	 if(/MSIE \d|Trident.*rv:/.test(navigator.userAgent)==false){
		window.addEventListener("load", function(event) {
	       $("img.lazyload").lazyload({effect : "fadeIn" });
		});    
	  	$("img.lazyload").lazyload({effect : "fadeIn" });
	 } 	

	/*****************************************************/
	/*****************İMAGE FİLTER************************/
	/*****************************************************/
	//var containerEl = document.querySelector('.FilterImage');
	//var mixer = mixitup('#FilterImage');

	/*****************************************************/
	/*****************İMAGE GALERY************************/
	/*****************************************************/
	//jQuery("#imagegalery").unitegallery();


	/*****************************************************/
	/*****************YUKARI GİT BUTONU*******************/
	/*****************************************************/
	  $('.yukarigit').hide(500);
	  $(window).scroll(function(){
	    if ($(this).scrollTop() > 150) {  
	      $('.yukarigit').fadeIn(500);
	      //$('.headermenu').addClass('fixedmenu animated fadeInDown');
	      //$("#logoinmenu").css({"display":"block"});
	    } else {
	      $('.yukarigit').hide(500);
	     // $('.headermenu').removeClass('fixedmenu animated fadeInDown');
	      //$("#logoinmenu").css({"display":"none",":visibility":"visible"});
	    }
	  });
	  $('.yukarigit').click(function(){
	  $('html, body').animate({scrollTop : 0},800);
	  return false;
	  });

	 $(".icerikmenuopen").click(function(){
	 	$("#icerikmenudetay").toggle(500);
	 }); 


	/*****************************************************/
	/*****************ANA SLİDER**************************/
	/*****************************************************/

	     var slider = $('#slider').bxSlider({
	        mouseDrag: true,
	        responsive:true,
	        captions: true, 
	        adaptiveHeight:true,
	        auto:true,
	        autoControls:true,
	        infiniteLoop:true,
	        hideControlOnEnd: true,
	        pager:true,
	        pause:10000, 
	        onSliderLoad: function () {
	            $('#slider>li .bx-caption_manuel').eq(1).addClass('active-slide');
	            $(".bx-caption_manuel.active-slide").addClass("wow animated bounceInRight");
	        },
	        onSlideAfter: function (currentSlideNumber, totalSlideQty, currentSlideHtmlObject) {
	            console.log(currentSlideHtmlObject);
	            $('.active-slide').removeClass('active-slide');
	            $('#slider>li .bx-caption_manuel').eq(currentSlideHtmlObject + 1).addClass('active-slide');
	            $(".bx-caption_manuel.active-slide").addClass("animated bounceInRight");

	        },
	        onSlideBefore: function () {
	            $(".bx-caption_manuel.active-slide").removeClass("animated bounceInRight");
	            $(".bx-caption_manuel.blue-overlay.active-slide").removeAttr('style');

	        }
	      });
	     $('#slider').hover(function(){
	        slider.stopAuto(); 

	      });
	      $('#slider').mouseleave(function(){
	        slider.startAuto();        
	      });




	/*****************************************************/
	/*****************DİĞER SLİDERLAR*********************/
	/*****************************************************/      
	   var sliderlar= $('.sliderdetay').bxSlider({    
	        mouseDrag: true,
	        slideWidth:300,
	        minSlides:1,
	        maxSlides:4,
	        slideMargin: 0,
	        auto:true,
	        autoControls:true,
	        infiniteLoop:true,
	        hideControlOnEnd: true,
	        pager:true
	      }); 
	      $('.sliderdetay').hover(function(){
	        sliderlar.stopAuto();     
	      });
	      $('.sliderdetay').mouseleave(function(){
	        sliderlar.startAuto();        
	      });




	/*****************************************************/
	/*****************MARKA SLİDER**************************/
	/*****************************************************/
	      var slidermarka= $('.slidermarka').bxSlider({    
	        mouseDrag: true,
	        slideWidth:300,
	        minSlides:1,
	        maxSlides:4,
	        slideMargin: 0,
	        auto:true,
	        autoControls:true,
	        infiniteLoop:true,
	        hideControlOnEnd: true,
	        pager:false
	      }); 
	      $('.slidermarka').hover(function(){
	        slidermarka.stopAuto();     
	      });
	      $('.slidermarka').mouseleave(function(){
	        slidermarka.startAuto();        
	      });

	   




	/*****************************************************/
	/*****************İNPUT MASK**************************/
	/*****************************************************/

	  $('.datemask').mask('00/00/0000');
	  $('.times').mask('00:00');
	  $('.date_times').mask('00/00/0000 00:00:00');
	  $('.ceps').mask('00000-000');
	  $('.phones').mask('0000-0000');
	  $('.phone_with_ddds').mask('(00) 0000-0000');
	  $('.phone_uss').mask('(000) 000-0000');
	  $('.mixeds').mask('AAA 000-S0S');
	  $('.cpfs').mask('000.000.000-00', {reverse: true});
	  $('.moneys').mask('00000000.00', {reverse: true});
	  $('.money2s').mask("#.##0,00", {reverse: true});
	  $('.ip_address').mask('0ZZ.0ZZ.0ZZ.0ZZ', {
	    translation: {
	      'Z': {
	        pattern: /[0-9]/, optional: true
	      }
	    }
	  });
	  $('.ip_address').mask('099.099.099.099');
	  $('.percent').mask('##0,00%', {reverse: true});
	  $('.clear-if-not-match').mask("00/00/0000", {clearIfNotMatch: true});
	  $('.placeholder').mask("00/00/0000", {placeholder: "__/__/____"});
	  $('.fallback').mask("00r00r0000", {
	      translation: {
	        'r': {
	          pattern: /[\/]/, 
	          fallback: '/'
	        }, 
	        placeholder: "__/__/____"
	      }
	    });
	  $('.selectonfocus').mask("00/00/0000", {selectOnFocus: true});



	 


});



