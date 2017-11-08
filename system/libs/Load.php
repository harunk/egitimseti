<?php 
/**
* 
*/
class Load
{
	
	
	function __construct()
	{
		
	}

	public function view($direction,$filename,$data=false){
		if($data==true){
			extract($data);
		}
		if(file_exists("./app/views/themes/"._TEMA."/template/common/header.tpl")){
			require_once "./app/views/themes/"._TEMA."/template/common/header.tpl";
		}
		if(isset($data["leftbar"])){
			if(file_exists("./app/views/themes/"._TEMA."/template/common/left.tpl")){
				require_once "./app/views/themes/"._TEMA."/template/common/left.tpl";
			}
		}
		if(isset($filename) && preg_match('/^[0-9a-zA-Z\-\/]+$/', $filename)){
			if(file_exists("./app/views/themes/"._TEMA."/template/".strtolower($direction)."/".strtolower($filename).".tpl")){
				require_once "./app/views/themes/"._TEMA."/template/".strtolower($direction)."/".strtolower($filename).".tpl";
			}
		}
		if(isset($data["rightbar"])){
			if(file_exists("./app/views/themes/"._TEMA."/template/common/right.tpl")){
				require_once "./app/views/themes/"._TEMA."/template/common/right.tpl";
			}
		}
		if(file_exists("./app/views/themes/"._TEMA."/template/common/footer.tpl")){
			require_once "./app/views/themes/"._TEMA."/template/common/footer.tpl";
		}
	}

	

	public function model($filename){
		if(file_exists("./app/models/".strtolower($filename).".php")){
			require_once "./app/models/".strtolower($filename).".php";
			if(class_exists($filename)){
				return new $filename();
			}
		}
		
		
	}

	public function Controller($direction,$filename,$method=""){
		if(file_exists("./app/controllers/".strtolower($direction)."/".strtolower($filename).".php")){
			require_once "./app/controllers/".strtolower($direction)."/".strtolower($filename).".php";
			if(class_exists($filename)){
			 $returnclass=new $filename();
			 	if(method_exists($returnclass, $method)){
					return $returnclass->$method();
				}
			}
		}
		
		

		
	}

	

	
}
 ?>