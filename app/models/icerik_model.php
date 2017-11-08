<?php 
class Icerik_Model extends Model
{
	
	public function __construct()
	{
		parent::__construct();
	}

	public function icerikler($limit="10")
	{
		$sql="select i.*,r.resim_yolu,k.kategoriadi from kategoriicerikleri i inner join kategoriler k on (k.id=i.kategori_id) left join kategoriicerik_resimleri r on i.id=r.icerik_id group by i.id limit ".$limit;
		$params=array();
		try {
			return $this->db->select($sql,$params);
		} catch (Exception $e) {
			return "Hata Oluştu:".$e->getMessage();
		}
	 	
	}


}	