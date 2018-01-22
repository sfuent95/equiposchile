<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class ModelEquiposChile{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	public function listar(){
		$responsearray = array();
		try{
			$result = array();
			$stm=$this->pdo->prepare("SELECT * FROM equipos");
			$stm->execute();
			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$equiposchile = new EquiposChile();
					$equiposchile->__SET('equi_id', $r->equi_id);
					$equiposchile->__SET('equi_nombre', $r->equi_nombre);
					$equiposchile->__SET('equi_apodo', $r->equi_apodo);
					$equiposchile->__SET('equi_ciudad', $r->equi_ciudad);
					$equiposchile->__SET('equi_fundacion', $r->equi_fundacion);
					$equiposchile->__SET('equi_res', $r->equi_res);
					$equiposchile->__SET('equi_urlinsignia', $r->equi_urlinsignia);
					$equiposchile->__SET('equi_urlplantel', $r->equi_urlplantel);
				$result[] = $equiposchile->returnArray();
			}
			$responsearray['success']=true;
			$responsearray['message']='Listado correctamente';
			$responsearray['datos']=$result;

		}catch(Exception $e){
			echo $e;
			$responsearray['success']=false;
			$responsearray['message']='Error al listar cuerpocelnos';
		}
		return $responsearray;
	}
	public function Obtener($id){
        $jsonresponse = array();
        try{
            $stm = $this->pdo->prepare("SELECT * FROM equipos
            							where equi_id = ?");
            $stm->execute(array($id));
            $r = $stm->fetch(PDO::FETCH_OBJ);

            $equiposchile = new EquiposChile();
						$equiposchile->__SET('equi_id', $r->equi_id);
						$equiposchile->__SET('equi_nombre', $r->equi_nombre);
						$equiposchile->__SET('equi_apodo', $r->equi_apodo);
						$equiposchile->__SET('equi_ciudad', $r->equi_ciudad);
						$equiposchile->__SET('equi_fundacion', $r->equi_fundacion);
						$equiposchile->__SET('equi_res', $r->equi_res);
						$equiposchile->__SET('equi_urlinsignia', $r->equi_urlinsignia);
						$equiposchile->__SET('equi_urlplantel', $r->equi_urlplantel);

            $jsonresponse['success'] = true;
            $jsonresponse['message'] = 'Se obtuvo  correctamente';
            $jsonresponse['datos'] = $equiposchile->returnArray();
        } catch (Exception $e){
            //die($e->getMessage());
            $jsonresponse['success'] = false;
            $jsonresponse['message'] = 'Error ';
        }
        return $jsonresponse;
    }
}
?>
