<?php

  include_once 'includes/_db.php';
  include_once 'includes/_head.php';
  include_once 'includes/_header.php';

$codcategoria = $_GET['cat'];

$sql = "SELECT * FROM categorias WHERE CategoriaID = {$codcategoria} " ;
$resultado = mysqli_query($conexao,$sqlCategoria);
?>

<main>
  <h3><?php echo $dadosCategoria['Nome'];?></h3>
  </main>


<?php

  include_once 'includes/_footer.php';

?>
