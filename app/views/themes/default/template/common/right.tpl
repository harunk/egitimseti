<aside class="<?php if ($rightbar){ echo 'col-sm-12 col-md-3 col-lg-3';}?>">
<?php if ($ekmenu["icerikmenu"]) { ?>
	<?php foreach($ekmenu["icerikmenu"] as $yaz) { ?>
		<section class="box box-reset">
			<div class="box-body">
				<ul class="list-group">
					<li style="border-radius:0px;" class="list-group-item active">
						<a href="<?php if($yaz['href']){echo $yaz['href'];}else{echo 'javascript:void(0)';} ?>">
							<i class="fa fa-calculator"></i>
							<span> <?php echo $yaz["adi"]; ?></span> 
							<small> <?php echo $yaz["altbaslik"]; ?></small>
						</a>
					</li>
					<?php if ($yaz["altkategoriler"]) { ?>
						<?php 
						foreach($yaz["altkategoriler"] as $yazalt){ 
							if($yazalt["altkategoriler"]){
								?>
								<li class="menutabs_bol">
									<a href="<?php  if($yazalt['href']){echo $yazalt['href'];}else{echo 'javascript:void(0)';} ?>" data-toggle="collapse" data-target="#icmenu_<?php echo $yazalt['id']; ?>"> 
										<i class="fa fa-dot-circle-o" style="font-size:0.95em;"></i> 
										<?php echo $yazalt["adi"]; ?> <i class"fa fa-caret-down"></i>
									</a> 
										<ul class="collapse" id="icmenu_<?php echo $yazalt['id']; ?>"> 
											<?php foreach($yazalt["altkategoriler"] as $yazalt2){ ?>
												<li class="menutabs_bol2">
													<a href="<?php  if($yazalt2['href']){echo $yazalt2['href'];}else{echo 'javascript:void(0)';} ?>"> 
														<i class="fa fa-dot-circle-o" style="font-size:0.95em;"></i> 
														<span><?php echo $yazalt2["adi"]; ?></span>
													</a>
												</li>
											<?php } ?>
							 			</ul> 
								</li>
								<?php
							}else{
							?>
							<li class="menutabs_bol2">
								<a href="<?php  if($yazalt['href']){echo $yazalt['href'];}else{echo 'javascript:void(0)';} ?>" data-toggle="collapse" data-target="#icmenu_31"> 
								<i class="fa fa-bullhorn" style="font-size:0.95em;"></i> 
								<?php echo $yazalt["adi"]; ?>
								</a>
							</li>
							<?php

							}
						 } 
						 ?>

					<?php }?>
					

					
				</ul>
			</div>
		</section>
	<?php } ?>	
<?php } ?>
</aside>		