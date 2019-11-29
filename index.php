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
    <script type="text/javascript" src="jquery-1.3.1.js"></script>
    <title>guia para estudiar</title>
</head>
<body>

<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link active" href="#">Contestar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add_question.php">añadir pregutas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    

    <?php
        $query2 = "SELECT * FROM exam"; 
        $res=$conexion->query($query2);
        foreach ($res as $key) {
            
    ?>

    <div class="card">
        <div class="card-header">
            <?php echo $key['id'];?>.-¿<?php echo $key['question']; ?>?
            <a href="delete.php?id=<?php echo $key['id']; ?>" class="btn btn-danger float-right">X</a>
        </div>
        <div class="card-body">
            
            <a href="correct.php?id=<?php echo $key['id']; ?>&correct=<?php echo $key['correct'];?>&res=1" class="btn btn-<?php echo $key['color']; ?>"><?php echo $key['una']; ?></a>
            <a href="correct.php?id=<?php echo $key['id']; ?>&correct=<?php echo $key['correct'];?>&res=2" class="btn btn-<?php echo $key['color']; ?>"><?php echo $key['dos']; ?></a>
            <a href="correct.php?id=<?php echo $key['id']; ?>&correct=<?php echo $key['correct'];?>&res=3" class="btn btn-<?php echo $key['color']; ?>"><?php echo $key['tres']; ?></a>

        </div>
    </div>
    <br>
    
    <?php
    }
    ?>
    
  </div>
</div>

</body>
</html>