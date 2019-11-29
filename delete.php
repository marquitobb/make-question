<?php
include('conexion.php');

extract($_GET);
if(!empty($id)){
$borrar = "DELETE FROM exam WHERE id=$id";
$borra = $conexion->query($borrar);
}

if ($borra) {
    $conexion->query("ALTER TABLE exam AUTO_INCREMENT = 1");
    header('Location: index.php');
    die();
}else{
    echo 'no pudo elimnar';
}


?>