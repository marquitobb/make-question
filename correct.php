<?php

include('conexion.php');

extract($_GET);
if(!empty($id)){

    $id1 = $_GET['id'];
    $co = $_GET['correct'];
    $resp = $_GET['res'];
    /*
    var_dump($id1);
    var_dump($co);
    var_dump($resp);
    */
    if (strcmp ($co , $resp ) == 0) {
        echo "correcto!";
        $modi = "UPDATE exam SET color = 'success' WHERE id = $id1";
    }else {
        echo "no ess";
        $modi = "UPDATE exam SET color = 'danger' WHERE id = $id1";
    }
    $modifi = $conexion->query($modi);


    //$borrar = "DELETE FROM tareas WHERE id=$id";
    //$borra = $conexion->query($borrar);

}

header('Location: index.php');
/*
if ($borra) {
    die();
}else{
    echo 'no pudo elimnar';
}    
*/
?>