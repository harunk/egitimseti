</div></body>
<!-- jQuery 2.1.4 -->
    <script src="<?php echo _URL; ?>/public/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="<?php echo _URL; ?>/public/plugins/jQuery/jquerymigrate.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo _URL; ?>/public/bootstrap/js/bootstrap.min.js"></script>
    <!-- bootstrap-dropdownhover -->
    <script src="<?php echo _URL; ?>/public/bootstrap/js/bootstrap-dropdownhover.js"></script>
    <!-- sweetalert -->
    <script src="<?php echo _URL; ?>/public/plugins/sweetalert/sweetalert.min.js"></script>
    <!-- İnput Mask -->
    <script type="text/javascript" src="<?php echo _URL; ?>/public/plugins/inputmask/inputmask.js"></script>
    <!-- Slimscroll -->
    <script src="<?php echo _URL; ?>/public/plugins/slimScroll/jquery.slimscroll.min.js"></script>
      <!-- Lightbo 2.0 -->
    <script src="<?php echo _URL; ?>/public/plugins/lightbox20/lightbox2.0.min.js"></script>
    
    <!-- lazyload -->
    
    <![if !IE]>
       <script src="<?php echo _URL; ?>/public/plugins/lazyload/lazyload.js"></script>
    <![endif]>

    <!--[if IE]>
       <script src="plugins/lazyload/lazyload.old.js"></script>
    <![endif]-->
     <script type="text/javascript">
    /*****************************************************/
    /*************İMAGE LAZYLOAD error on  ie*************/
    /*****************************************************/ 
       if(/MSIE \d|Trident.*rv:/.test(navigator.userAgent))
       {
          window.onload = function(e) {
            var x = document.getElementsByClassName("lazyload");
              for (var i=0;i<x.length;i++)
              {
              var y = x[i].getAttribute("data-src");
              x[i].src=y;
            }
         };
      }
      </script>

 
  <!-- bxSlider -->
  <link rel="stylesheet" href="<?php echo _URL; ?>/public/plugins/bxslider/jquery.bxslider.css?v=<?php echo _VERSIYON; ?>" />
  <script type="text/javascript" src="<?php echo _URL; ?>/public/plugins/bxslider/jquery.bxslider.min.js"></script>
  <script type="text/javascript" src="<?php echo _URL; ?>/public/plugins/bxslider/jquery.bxslider.draggable.js"></script>


   <!-- Js -->
    <script type="text/javascript" src="<?php echo _TEMA_URL; ?>/js/js.js?v=<?php echo _VERSIYON; ?>"></script>
<script type="text/javascript">
  $(document).ready(function(){
    var menuwidth=$("ul.ustmenu").width();
    var menuliwidth=0;
    for(var i=0; i<=$("ul.ustmenu>li").size();i++){
      menuliwidth+=$("ul.ustmenu>li:eq("+i+")").width();
    }
    
     if(menuliwidth<=menuwidth){
      $(".solakaydir,.sagakaydir").css({"display":"none","visibilty":"hidden"});
     }else{
      $("ul.ustmenu").css({"overflow":"hidden"});
     }
   $(".solakaydir").on("click",function() {
    var menuright=$("ul.ustmenu").css("right");
        menuright=menuright.substring(0,menuright.length-2);
    var menuleft=$("ul.ustmenu").css("left");
        menuleft=menuleft.substring(0,menuleft.length-2);
    if(menuleft<-10){
      $("ul.ustmenu").animate(
                    {
                      left: "+=500"
                    },{
                      duration: 1000,
                      specialEasing: 
                        {
                          width: "linear",
                          height: "easeOutBounce"
                        },
                      complete: function() {
                        "slow"
                    }}
                    );
    }
    });
   $(".sagakaydir").on("click",function() {
    var menuright=$("ul.ustmenu").css("right");
        menuright=menuright.substring(0,menuright.length-2);
    var menuleft=$("ul.ustmenu").css("left");
        menuleft=menuleft.substring(0,menuleft.length-2);
    if(menuright==0 && menuliwidth+menuleft>menuwidth){
      $("ul.ustmenu").animate({
                      left: "-=500"
                    }, 1000, function() {
                     "slow" 
                    });
    }else{
       $("ul.ustmenu").animate({
                      left: -menuliwidth+menuwidth+50
                    }, 1000, function() {
                     "slow" 
                    });
    }
    });
  });  
</script>
    
    <script type="text/javascript">
  
    $(document).ready(function(){
      var border='<div class="border-top-left"></div><div class="border-bottom-left"></div><div class="border-top-right"></div><div class="border-bottom-right"></div>';
     
      $("div.bx-wrapper").append(border);
      $("div.baslik").append(border);
      $(".bolumm").append(border);
      $(".ubolum").append(border);


      


    });

  /*****************************************************/
  /*****************BÜLTEN KAYDET***********************/
  /*****************************************************/

  function bultenekaydet()
    {
      var mail=$("#bulteneaboneol").val();
            $.ajax({  
              type: "POST",  
              url: "./temalar/tema3/fnk/tema.islem.php",  
              data:"islem=bultenekaydet&mail="+mail,
              chace:true, 
              timeout:5000,
              dataType:"json",
              success: function(aaa){ 
                  if (aaa.ok) {               
                    swal("İşlem Sonucu",aaa.ok,"success");
                    $("#bulteneaboneol").val("");
                  }else{
                     swal("İşlem Sonucu",aaa.hata,"error");
                  }
              }
            });  
      }

    </script>

    
<style>
  @-moz-document url-prefix()
  {
  .bx-wrapper{
    padding-top: 1px;
    }
  }

</style>



</html>
