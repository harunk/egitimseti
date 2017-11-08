<?php 
/**
* Model
*/
class Model
{		
	protected $db=array();
	public function __construct()
	{
		$sunucu="127.0.0.1";
		$kullanici="root";
		$sifre="";
		$veritabani="egitim";
		$dsn = 'mysql:host='.$sunucu.';dbname='.$veritabani.'';	
		$this->db=new Database($dsn, $kullanici, $sifre);
		
	}

	
}

 ?>