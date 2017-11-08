<?php 

/**
* İLETİŞİM BİLGİLERİ
*/
class IletisimBilgileri extends Controller
{
	
	function __construct()
	{
		parent::__construct();
	}


	public function iletisimBilgileri()
	 {
	 	$Index_Model=$this->load->model("Index_Model");	
	 	foreach($Index_Model->iletisimBilgileri() as $yaz){		 	
				$iletisim["sorumlu_personel"]=$yaz["sorumlu_personel"];
				$iletisim["unvan"]=$yaz["unvan"];
				$iletisim["mail"]=$yaz["mail"];
				$iletisim["tel"]=$yaz["tel"];
				$iletisim["gsm"]=$yaz["gsm"];
				$iletisim["adres"]=$yaz["adres"];
				$iletisim["harita"]=$yaz["harita"];
				$iletisim["facebook"]=$yaz["facebook"];
				$iletisim["twitter"]=$yaz["twitter"];
				$iletisim["instagram"]=$yaz["instagram"];
				$iletisim["googleplus"]=$yaz["googleplus"];
			
		}
		return $iletisim;
	 }
}