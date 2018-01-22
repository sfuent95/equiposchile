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
	private $pal_equi_id;
	private $pal_primera;
	private $pal_primerab;
	private $pal_copachile;
	private $pal_supercopa;
	private $pal_sudamericana;
	private $pal_libertadores;

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