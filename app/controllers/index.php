<?php 

/**
* Anasayfa Comtroler
*/

class Index extends Controller
{
	function __construct()
	{
		parent::__construct();
	}
	 public function anasayfa(){
	 	$data["datayigoster"]=true;	 	 	
	 	$data["parametreler"]=$this->load->Controller('common','Parametreler','Parametreler');
		$data["iletisim"]=$this->load->Controller('common','iletisimBilgileri','iletisimBilgileri'); 	
		$data["menu"]=$this->load->Controller('common','Menu','IcerikMenu');
		$data["ekmenu"]=$this->load->Controller('common','Menu','EkMenu');
		$data["rightbar"]=true;//Şimdilik manuel seçtiriyorum. sonra yönetim panelinde sağ barda goster dediğim alanları sorgulayıp dinamik hale getirebilirim.
		$data["leftbar"]=null;//Şimdilik manuel seçtiriyorum. sonra yönetim panelinde sağ barda goster dediğim alanları sorgulayıp dinamik hale getirebilirim.
		$data["icerikler"]=$this->load->Controller('icerikler','Icerikler','AnasayfaIcerikListesi');;
	 	$this->load->view("common","anasayfa",$data);
	 }


	

	 
	 



	 

	
}
 ?>