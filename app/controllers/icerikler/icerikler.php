<?php 
/**
* İçerikler
*/
class Icerikler extends Controller
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function AnasayfaIcerikListesi()
	{
		$data['icerik']=null;
		$Icerik_Model=$this->load->model("Icerik_Model");
		$icerikler=$Icerik_Model->icerikler(3);
		foreach ($icerikler as $icerik) {
			$data['icerik'][] = array(
					'id'				=>$icerik["id"],
					'kategori_id'		=>$icerik["kategori_id"],
					'adi'     			=>$icerik['icerikadi'],
					'aciklama'  		=>$this->registry->MetinKisalt(strip_tags(htmlspecialchars_decode($icerik['aciklama'])),600),
					'resim_yolu'  		=>($icerik['resim_yolu'])? _URL."/media/images/icerikler/".$icerik['resim_yolu'] : _URL."/media/images/icon/images_icon_256.png",
					'href'    			=> ""
				);
		}
		return $data;

	}
}