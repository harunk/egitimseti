<?php 
//header('Content-type: text/html; charset=utf-8');
//Config.php dosyasını include ediyoruz
require_once "./config.php";
//system dosyalarının include ediyoruz
require_once "./system/libs/controller.php";
require_once "./system/libs/Load.php";
require_once "./system/libs/Database.php";
require_once "./system/libs/Model.php";
require_once './system/engine/registry.php';
//Bootstrap Bölümü
$url=isset($_GET["url"])?$_GET["url"]:null;
if($url!=null){
	$url=rtrim($url,'/');
	$url=explode('/', $url);
}else{
	unset($url);
}

	if(isset($url[0])){
		if(file_exists("./app/controllers/".$url[0].".php"))
		{
			require_once "./app/controllers/".$url[0].".php";
			$c=new $url[0]();
			if(isset($url[2])){
				if(method_exists($url[0], $url[1])){
					$c->$url[1]($url[2]);
				}				
			}else{
				if(isset($url[1])){
					if(method_exists($url[0], $url[1])){
						$c->$url[1]();
					}					
				}else{
					//hata
				}
			}
		}
		
	}else{
		if(file_exists("./app/controllers/index.php")){
			require_once "./app/controllers/index.php";
		}
		if(class_exists("Index")){
			$c=new Index();
			if(method_exists($c, "anasayfa")){
				$c->anasayfa();
			}
		
		}
		
	}





 ?>