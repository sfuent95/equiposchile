<?php

class EquiposChile{
	private $equi_id;
	private $equi_nombre;
	private $equi_apodo;
	private $equi_ciudad;
	private $equi_fundacion;
	private $equi_res;
	private $equi_urlinsignia;
	private $equi_urlplantel;

	public function __GET ($k){
		return $this->$k;
	}
	public function __SET($k,$v){
		$this->$k=$v;
	}
	public function returnArray(){
		return get_object_vars($this);
	}
}

?>
