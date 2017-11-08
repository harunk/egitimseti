<aside class="<?php if(isset($leftbar) && isset($rightbar)){ echo 'col-sm-12 col-md-6 col-lg-6';}elseif($leftbar){ echo 'col-sm-12 col-md-9 col-lg-9';}elseif ($rightbar){ echo 'col-sm-12 col-md-9 col-lg-9';}else{echo 'col-sm-12 col-md-12 col-lg-12';}?>">
<?php if($icerikler["icerik"]){ ?>
<?php 
foreach($icerikler["icerik"] as $yaz) {
?>	


<div class="box box-reset" style="position:relative;">
	        <div class="box-header nopadding with-border">
		        
	          <h3 class="baslik3 "><?php echo $yaz['adi']; ?> </h3>
	                   
	        </div>
	        <div class="box-body ">
	        	<div class="col-xs-12 col-md-6 col-lg-6">
					<img class="img-responsive" src="<?php echo $yaz['resim_yolu']; ?>" alt="<?php echo $yaz['adi']; ?>">
	             </div>
	             <div class="col-xs-12 col-md-6 col-lg-6">
					<?php echo $yaz['aciklama']; ?>
					
	             </div>
	        	
				  </div>
	            			
				<div class="box-footer">
					<div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 ">
						<a href="<?php echo $yaz['href']; ?>" class="btn btn-danger btn-flat pull-right">Devamını Oku</a>
					</div>
	        
	    		</div>
</div>
<?php } ?>
<?php } ?>

</aside>
