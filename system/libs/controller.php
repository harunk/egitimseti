<?php 
class Controller{
	protected $load=array();
	protected $registry=array();
	public function __construct(){
		$this->load=new Load();
		$this->registry=new Registry();
		
	}

}


 ?>