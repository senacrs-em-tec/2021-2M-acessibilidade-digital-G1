<?php

  include_once 'includes/_db.php';
  include_once 'includes/_head.php';
  include_once 'includes/_header.php';
?>

    <main-body>
      <h1 class="titulo-noticia">Home</h1>
      <div>
        <?php

        $sql = "SELECT * FROM categorias WHERE imagem <> '' ";

        $resultado = mysqli_query($conexao,$sql);

        if($resultado){
      
          while ($dado = mysqli_fetch_array($resultado)) {
            ?>
    <div class='col-4' style="float: left; position: relative; margin-top: 10px;">
      <div class="card" style="width: 18rem;">
        <img src="img/<?php echo $dado['Imagem'];?>" class="card-img-top" alt="<?php echo $dado['Descricao'];?>">
        <div class="card-body">
          <h5 class="card-title"><?php echo $dado['Nome'];?></h5>
          <p class="card-text" style="color: black;"><?php echo $dado['Descricao'];?></p>
          <a href="categoria.php?cat=<?php echo $dado['CategoriaID'];?>" class="btn btn-primary">Leia mais sobre</a>
        </div>
      </div>
    </div>
      <?php
      }
      ?>   
      <?php
      }
      ?>
      </div>
    </main-body>

<?php
  include_once 'includes/_footer.php';
?>