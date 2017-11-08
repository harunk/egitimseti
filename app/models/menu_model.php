<?php 
class Menu_Model extends Model
{
	
	public function __construct()
	{
		parent::__construct();
	}

	public function IcerikMenu($ustkategoriid=0,$anamenumu)
	{
		$sql="select * from kategoriler where ustkategoriid=:ustkategoriid and anamenumu=:anamenumu";
		$params=array(":ustkategoriid"=>$ustkategoriid,":anamenumu"=>$anamenumu);
	 	return $this->db->select($sql,$params);
	}


}	