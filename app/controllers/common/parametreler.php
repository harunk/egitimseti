<?php 

/**
* Parametreler
*/
class Parametreler extends Controller
{
	protected $data=array();
	function __construct()
	{
		parent::__construct();
	}

	public function Parametreler()
	{
		$Index_Model=$this->load->model("Index_Model");
		/*PARAMETRE TANIMLAMALARI BAŞI*/
		$data["title"]="Kalaçweb İçerik Template";
	 	foreach($Index_Model->parametreler() as $parametreyaz){
		 	if(strlen(trim($parametreyaz["resimyolu"]))>0){
				$data[$parametreyaz["parametrekodu"]]=_URL.'/media/images/parametreresimleri/'.$parametreyaz["resimyolu"];
			}elseif(strlen(trim($parametreyaz["renkkodu"]))>0){
				$data[$parametreyaz["parametrekodu"]]=$parametreyaz["renkkodu"];
			}else{
				$data[$parametreyaz["parametrekodu"]]=$parametreyaz["deger"];
			}
		}
		/*PARAMETRE TANIMLAMALARI BAŞI*/
		return $data;
	}
}