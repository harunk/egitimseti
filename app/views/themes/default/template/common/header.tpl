<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?php echo $parametreler["title"]; ?></title>

    <!-- Tell the browser to be responsive to screen width -->
          <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
          <!-- Bootstrap 3.3.5 -->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/bootstrap/css/bootstrap.min.css">
           <!-- Bootstrap 3.3.5 -->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/bootstrap/css/animate.css">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
          <!-- Ionicons -->
          <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
          <!-- Table -->
          <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
          <link rel="stylesheet" href="https://cdn.datatables.net/1.10.10/css/dataTables.bootstrap.min.css">
          <link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
          <!-- Theme style -->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/dist/css/AdminLTE.min.css">
          <!-- SweetAlert-->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/plugins/sweetalert/sweetalert.css" />
           <!-- Mixituo-->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/plugins/mixitup/mixitup.css?v=<?php echo _VERSIYON; ?>" />
          <!-- LightBox-->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/plugins/lightbox20/lightbox.css?v=<?php echo _VERSIYON; ?>" />
          <!-- w3 css -->
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/dist/css/w3.css" />
          <link rel="stylesheet" href="<?php echo _URL; ?>/public/dist/css/w3-theme.css" />
          <!-- Tema -->
          <link rel="stylesheet" href="<?php echo _TEMA_URL; ?>/css/style.css?v=<?php echo _VERSIYON; ?>" />
          <link rel="stylesheet" href="<?php echo _TEMA_URL; ?>/css/menustyle.css?v=<?php echo _VERSIYON; ?>">
          <link rel='stylesheet' href='<?php echo _URL; ?>/public/plugins/unitegallery/css/unite-gallery.css' type='text/css' />
          <link rel='stylesheet' href='<?php echo _TEMA_URL; ?>/css/component.css?v=<?php echo _VERSIYON; ?>' type='text/css' />
  
</head>
<body style="margin:0;padding: 0;">
<?php if(isset($datayigoster)){ ?>  
<button class="btn btn-danger btn-flat w3-circle w3-padding" style="position: fixed; bottom: 0px; right: 0px; z-index: 100; word-wrap: break-word; text-align: center;" data-toggle="collapse" data-target="#demo"><i class="ion ion-eye" style="font-size: 3em;"></i><br /><small>DATA</small></button>
<div id="demo" class="collapse" style="position: absolute; top: 0px; left: 0px; z-index: 99; word-wrap: break-word; width: 100%;">
  <pre>
    <?php
      var_dump($data);
    ?>
  </pre>
</div>
<?php } ?>
<aside class="container-fluid" style="overflow: hidden;">
    <!--Üst Header Başı-->
		<section class="row bottom-footer  bg-header" >
      <!--Sosyal link Başı-->
			<div class="w3-right" style="padding: 5px;">						
					<ul class="sosyalpaylasimmenu">
					<?php if(isset($iletisim["twitter"]) && filter_var($iletisim["twitter"],FILTER_VALIDATE_URL)){ ?>
						<li><a class="bg-menu2" target="_blank" title="Twitter" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["twitter"] ?>"><i  class="fa fa-twitter fa2"></i></a></li>
					<?php } ?>
					<?php if(isset($iletisim["facebook"]) && filter_var($iletisim["facebook"],FILTER_VALIDATE_URL)){ ?>	
						<li><a class="bg-menu2" target="_blank" title="Facebook" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["facebook"] ?>"><i class="fa fa-facebook fa2"></i></a></li>
						<?php } ?>
					<?php if(isset($iletisim["linkedin"]) && filter_var($iletisim["linkedin"],FILTER_VALIDATE_URL)){ ?>	
						<li><a class="bg-menu2" target="_blank" title="Linkedin" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["linkedin"] ?>"><i class="fa fa-linkedin fa2"></i></a></li>
						<?php } ?>
					<?php if(isset($iletisim["pinterest"]) && filter_var($iletisim["pinterest"],FILTER_VALIDATE_URL)){ ?>	
						<li><a class="bg-menu2" target="_blank" title="Pinterest" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["pinterest"] ?>"><i class="fa fa-pinterest fa2"></i></a></li>
						<?php } ?>
					<?php if(isset($iletisim["googleplus"]) && filter_var($iletisim["googleplus"],FILTER_VALIDATE_URL)){ ?>	
						<li><a class="bg-menu2" target="_blank" title="Google Plus" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["googleplus"] ?>"><i class="fa fa-google-plus fa2"></i></a></li>
						<?php } ?>
					<?php if(isset($iletisim["youtube"]) && filter_var($iletisim["youtube"],FILTER_VALIDATE_URL)){ ?>	
						<li><a class="bg-menu2" target="_blank" title="Youtube" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["youtube"] ?>"><i class="fa fa-youtube fa2"></i></a></li>
						<?php } ?>
					<?php if(isset($iletisim["instagram"]) && filter_var($iletisim["instagram"],FILTER_VALIDATE_URL)){ ?>	
						<li><a class="bg-menu2" target="_blank" title="Instagram" data-toggle="tooltip" data-placement="bottom" rel="nofollow" href="<?php echo $iletisim["instagram"] ?>"><i class="fa fa-instagram fa2"></i></a></li>
						<?php } ?>
					</ul>
			</div><!--Sosyal Link Sonu-->
      <!--Telefon Başı-->
			<div class="pull-left">
					<ul  class="headeriletisim">
						<?php 
						if(isset($iletisim["tel"]) && strlen(trim($iletisim["tel"]))>0){ 	
							echo '<li><i class="fa fa-phone fa2"></i><span>'.$iletisim["tel"].'</span></a></li>';
						}
						if(isset($iletisim["gsm"]) && strlen(trim($iletisim["gsm"]))>0){ 	
							echo '<li><i class="fa fa-mobile fa2"></i><span>'.$iletisim["gsm"].'</span></a></li>';
						}  
								
						?>
						
					</ul>
			</div><!--Telefon Sonu-->      
		</section><!--Üst Header Sonu-->
<!--Logo & Reklam Başı-->
  <section class="row bg-beyaz w3-padding-16">
   
      <div class="col-md-4">
        <div class="logo">
          <a href="./" >
            <img  src="<?php echo $parametreler['_LOGO']; ?>" class="lazyload2 img-responsive" title="<?php echo $parametreler['_SITEADI']; ?>" alt="<?php echo $parametreler['_SITEADI']; ?>" style="height: 100px;" >
          </a> 
        </div> 
      </div>
      <div class="col-md-8 ustheaderreklam" style="text-align: right;">
          <img src="./media/images/reklamalani/reklamalaniustheader.png" style=" height: 100px!important;" alt="">
      </div>
  </section><!--Logo & Reklam Sonu--> 
 
<?php if ($menu["icerikmenu"]) { ?>
<section class="row bg-menu">
<div class="container-fluid">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php  ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
    	<button class="solakaydir"><i class="fa fa-chevron-left"></i></button>
    	<button class="sagakaydir"><i class="fa fa-chevron-right"></i></button>
      <ul class="nav navbar-nav ustmenu bg-menu">
        <?php foreach ($menu["icerikmenu"] as $category) { ?>
        <?php if ($category['altkategoriler']) { ?>
        <li class="dropdown icerikmenu"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['adi']; ?><br /><small><?php echo $category['altbaslik']; ?></small></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['altkategoriler'], ceil(count($category['altkategoriler']) / $category['column'])) as $altkategoriler) { ?>
              <ul class="list-unstyled">
                <?php foreach ($altkategoriler as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['adi']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
          </div>
        </li>
        <?php } else { ?>
        <li class="icerikmenu"><a href="<?php echo $category['href']; ?>"><?php echo $category['adi']; ?><br /><small><?php echo $category['altbaslik']; ?></small></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
</section>
<?php } ?>
</aside>


