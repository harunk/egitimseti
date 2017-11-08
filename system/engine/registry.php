<?php
final class Registry {
	private $data = array();

	public function get($key) {
		return (isset($this->data[$key]) ? $this->data[$key] : null);
	}

	public function set($key, $value) {
		$this->data[$key] = $value;
	}

	public function has($key) {
		return isset($this->data[$key]);
	}
	public function TarihiiVtyeUyarla($date,$eskiformat='d/m/Y',$yeniformat='Y-m-d'){
			if(isset($date) && strlen($date)>0){
		       $Tarih=DateTime::createFromFormat($eskiformat, $date);
				return $Tarih->format($yeniformat);
			} 
	}
	
	public function Saat_Kontrolu($saat="00:00:00")
	{
	
	$saatler=explode(":",$saat);
	
		if($saatler[0]>23){
			$saatler[0]="23";
			}
		if($saatler[1]>59){
			$saatler[1]="59";
			}
		if($saatler[2]>59){
			$saatler[2]="59";
			}		
		
		$saat=$saatler[0].":".$saatler[1].":".$saatler[2];
	return $saat;
	}

	public function MetinKisalt($kelime, $str = 50)
   {
      if (strlen($kelime) > $str)
      {
         if (function_exists("mb_substr")) $kelime = mb_substr($kelime, 0, $str, "UTF-8").'..';
         else $kelime = substr($kelime, 0, $str).'..';
      }
      return $kelime;
   }
}