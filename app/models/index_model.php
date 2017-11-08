<?php 
/**
* 
*/
class Index_Model extends Model
{
	
	public function __construct()
	{
		parent::__construct();
	}
	 public function anasayfa(){
	 	
	 	return 1;

		
	 }
	 public function parametreler()
	 {
	 	$sql="select * from parametreler ";
	 	$params=array();
	 	return $this->db->select($sql,$params);
	 }
	  public function iletisimBilgileri()
	 {
	 	$sql="select * from iletisimbilgileri ";
	 	$params=array();
	 	return $this->db->select($sql,$params);
	 }

	 public function makaleKaydet($tableName,$data=array())
	 {
	 	return $this->db->insert($tableName,$data);
	 }

	 public function makaleGuncelle($tableName,$data=array(),$where)
	 {
	 	
	 	return $this->db->update($tableName,$data,$where);
	 }
	 public function makaleSil($tableName,$where)
	 {
	 	
	 	return $this->db->delete($tableName,$where);
	 }

	  public function makaleListele(){
	 	$sql="select * from makaleler ";
	 	$params=array();
	 	return $this->db->select($sql,$params);		
	 }

	
}

 ?>