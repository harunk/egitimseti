<?php 

/**
* Menü
*/
class Menu extends Controller
{
	protected $data=array();
	function __construct()
	{
		parent::__construct();
	}
	public function Menu()
	{	
		$menu=array();
		array_push($menu, array(
					'id'				=>null,
					'adi'     			=> "Anasayfa",
					'altbaslik'  		=> null,
					'altkategoriler' 	=> null,
					'column'   			=> isset($category['column']) ? $category['column'] : 1,
					'href'    			=> _URL
				));
		
		return $menu;
		
	}
	public function IcerikMenu()
	{
		$data['icerikmenu']=null;
		/**menü**/
		$data["icerikmenu"]=$this->Menu();
		/*Kategoriler*/
		$Menu_Model=$this->load->model("Menu_Model");
		$categories=$Menu_Model->IcerikMenu(0,1);
		foreach ($categories as $category) {
			
				// altkategoriler
				$children_data = array();
				$children = $Menu_Model->IcerikMenu($category['id'],0);
				foreach ($children as $child) {
					$children_data[] = array(
						'id' 			=>$child["id"],
						'adi'  			=> $child['kategoriadi'],
						'altbaslik'  	=> $child['altbaslik'],
						'href' 			=> "",
						'altkategoriler'=>$this->altkategoriler($child["id"])
					);
				}
				

				// Level 1
				$data['icerikmenu'][] = array(
					'id'				=>$category["id"],
					'adi'     			=> $category['kategoriadi'],
					'altbaslik'  		=> $category['altbaslik'],
					'altkategoriler' 	=> $children_data,
					'column'   			=> isset($category['column']) ? $category['column'] : 1,
					'href'    			=> ""
				);
			
		}

		return $data;
	}

	public function altkategoriler($id)
	{
		if($id && filter_var($id,FILTER_VALIDATE_INT)){
			$Menu_Model=$this->load->model("Menu_Model");
			$children_data = array();
			$children = $Menu_Model->IcerikMenu($id,0);
			foreach ($children as $child) {
						$children_data[] = array(
							'id' 	=>$child["id"],
							'adi'  	=> $child['kategoriadi'],
							'href'  => ""
						);
					}
			return $children_data;
		}
				
		
	}

	public function EkMenu()
	{
		/**menü**/
		$Menu_Model=$this->load->model("Menu_Model");
		$categories=$Menu_Model->IcerikMenu(0,0);
		foreach ($categories as $category) {
			
				// altkategoriler
				$children_data = array();
				$children = $Menu_Model->IcerikMenu($category['id'],0);
				foreach ($children as $child) {
					$children_data[] = array(
						'id' 			=>$child["id"],
						'adi'  			=> $child['kategoriadi'],
						'altbaslik'  	=> $child['altbaslik'],
						'href' 			=> "",
						'altkategoriler'=>$this->altkategoriler($child["id"])
					);
				}
				

				// Level 1
				$data['icerikmenu'][] = array(
					'id'				=>$category["id"],
					'adi'     			=> $category['kategoriadi'],
					'altbaslik'  		=> $category['altbaslik'],
					'altkategoriler' 	=> $children_data,
					'column'   			=> isset($category['column']) ? $category['column'] : 1,
					'href'    			=> ""
				);
			
		}
		

		return $data;
	}
}