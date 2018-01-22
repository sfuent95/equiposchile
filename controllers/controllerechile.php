<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadequiposchile.php';
	require_once '../modelos/modeloequiposchile.php';

	$modelech= new ModelEquiposChile();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		case 'listar':
				$jsondata=$modelech->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;

        case 'obtener':
            $jsondata = $modelech->Obtener($_REQUEST['ccId']);
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsondata);
            break;
  	}
}

?>
