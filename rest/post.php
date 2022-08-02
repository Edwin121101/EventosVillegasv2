<?php
include "config.php";
include "utils.php";


$dbConn =  connect($db);

/*
  listar todas las categorias o solo una
 */
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['idcategoria']))
    {
      //Mostrar un post
      $sql = $dbConn->prepare("SELECT * FROM categoria where idcategoria=:idcategoria");
      $sql->bindValue(':idcategoria', $_GET['idcategoria']);
      $sql->execute();
      header("HTTP/1.1 200 OK");
      echo json_encode(  $sql->fetch(PDO::FETCH_ASSOC)  );
      exit();
	  }
    else {
      //Mostrar lista de post
      $sql = $dbConn->prepare("SELECT * FROM categoria");
      $sql->execute();
      $sql->setFetchMode(PDO::FETCH_ASSOC);
      header("HTTP/1.1 200 OK");
      echo json_encode( $sql->fetchAll()  );
      exit();
	}
}

// Crear un nuevo post
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $input = $_POST;
    $sql = "INSERT INTO categoria
          (nombre,descripcion,portada,ruta,status)
          VALUES
          (:nombre, :descripcion, :portada, :ruta, :status)";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    $postId = $dbConn->lastInsertId();
    if($postId)
    {
      $input['idcategoria'] = $postId;
      header("HTTP/1.1 200 OK");
      echo json_encode($input);
      exit();
	 }
}

//Borrar
if ($_SERVER['REQUEST_METHOD'] == 'DELETE')
{
	$id = $_GET['idcategoria'];
  $statement = $dbConn->prepare("DELETE FROM categoria where idcategoria=:idcategoria");
  $statement->bindValue(':idcategoria', $id);
  $statement->execute();
	header("HTTP/1.1 200 OK");
	exit();
}

//Actualizar
if ($_SERVER['REQUEST_METHOD'] == 'PUT')
{
    $input = $_GET;
    $postId = $input['idcategoria'];
    $fields = getParams($input);

    $sql = "
          UPDATE categoria
          SET $fields
          WHERE idcategoria='$postId'
           ";

    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);

    $statement->execute();
    header("HTTP/1.1 200 OK");
    exit();
}


//En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");

?>