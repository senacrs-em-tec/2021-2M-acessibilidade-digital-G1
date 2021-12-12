<?php

$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$db = 'cartilha';

$conexao = mysqli_connect($servidor , $usuario, $senha, $db);

if (mysqli_connect_error()) {
    echo "Failaed to connect to MySQL: " . mysqli_connect_error();
    exit();
}
?>