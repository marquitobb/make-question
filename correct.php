<?php

include('conexion.php');

extract($_GET);
if(!empty($id)){
$borrar = "DELETE FROM tareas WHERE id=$id";
$borra = $conexion->query($borrar);
}

if ($borra) {
    header('Location: index.php');
    die();
}else{
    echo 'no pudo elimnar';
}    

?>