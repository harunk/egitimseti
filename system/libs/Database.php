<?php 

/**
* Database
*/
class Database extends PDO
{
	
	public function __construct($dsn, $kullanici, $sifre)
	{			
		try{
			parent::__construct($dsn, $kullanici, $sifre);
			//$this->exec("SET NAMES 'utf8'");
			//$this->exec("SET CHARSET 'utf8'");
		}catch (Exception $e) {
			echo 'Bağlantı Hatası:' . $e->getMessage();	
		}		
	}

	public function select($sql,$params=array(),$fetchmode=PDO::FETCH_ASSOC)
	{
		
		try {
			$sth=$this->prepare($sql);
			foreach($params as $key=>$value)
			{
				$sth->bindValue($key,$value);
			}
			$sth->execute();
	 		return $sth->fetchAll($fetchmode);
		} catch (Exception $e) {
			return "Hata oluştu:".$e->getMessage();
		}
		
	
	}


	public function insert($tableName,$params=array())
	{
		
		$fieldKeys=implode(",",array_keys($params));
		$fieldValue=":".implode(",:",array_keys($params));
		$sql="insert into ".$tableName."(".$fieldKeys.") values(".$fieldValue.")";
		$sth=$this->prepare($sql);
		foreach($params as $key=>$value)
		{
			$sth->bindValue($key,$value);
		}
		return $sth->execute();
 
	}
	public function update($tableName,$data,$where)
	{
		$updateKeys="";
		foreach ($data as $key => $value) {
			$updateKeys.=$key."=:".$key.", ";
		}
		$updateKeys=rtrim($updateKeys," , ");

		$sql="update ".$tableName." set ".$updateKeys." where ".$where;
		echo $sql;
		
		$sth=$this->prepare($sql);
		foreach($data as $key=>$value)
		{
			$sth->bindValue($key,$value);
		}
		return $sth->execute();

	}
	public function delete($tableName,$where)
	{
		$sql="delete from ".$tableName."  where ".$where;			
		$sth=$this->prepare($sql);		
		return $sth->execute();

	}
}
 ?>