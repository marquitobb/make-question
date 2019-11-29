<?php
    include('conexion.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>add question</title>
</head>
<body>
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Contestar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">añadir pregutas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
  </div>
  <div class="card-body">

    <!--FORM-->
    <h1 class="text-center">Agrega preguntas y respuestas</h1>
    <div class="container">   
            <div class="card bg-light">
            <div class="card-body">
                <form action="add_question.php" method="post">
                    <div class="form-group">
                        <input type="text" name="question" class="form-control form-control-sm  my-4 py-4" placeholder="ingresa pregunta">
                    </div>
                    
                    <div class="form-group col-sm-10">
                        <input type="text" name="uno" class="form-control" placeholder="1.-respuesta">
                    </div>
                    <div class="form-group col-sm-10">
                        <input type="text" name="dos" class="form-control" placeholder="2.-respuesta">
                    </div>
                    <div class="form-group col-sm-10">
                        <input type="text" name="tres" class="form-control" placeholder="3.-respuesta">
                    </div>
                    <div class="form-group col-sm-10">
                        <label>Selcciona la pregunta que va a ser la correcta: </label>
                        <select name="valor">
                            <option value="1">opcion 1</option>
                            <option value="2">opcion 2</option>
                            <option value="3">opcion 3</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">
                        Confirmar
                    </button>
                </form>
            </div>
            </div>      
    </div>
  </div>
</div>

<?php
    if (isset($_POST['question']) && isset($_POST['uno'])&& isset($_POST['dos'])&& isset($_POST['tres'])&& isset($_POST['valor'])) {
        
        $preg = $_POST['question'];
        $asw1 = $_POST['uno'];
        $asw2 = $_POST['dos'];
        $asw3 = $_POST['tres'];
        $res = $_POST['valor'];
        //$res = $_POST['valor']
        var_dump($preg);
        var_dump($asw1);
        var_dump($asw2);
        var_dump($asw3);
        var_dump($res);
        //var_dump($res);

        $query = "INSERT INTO exam(id, question, una, dos, tres, correct)VALUES('null','$preg','$asw1','$asw2','$asw3','$res')";
        $resultado = $conexion->query($query);
  
        
    }

?>

</body>
</html>