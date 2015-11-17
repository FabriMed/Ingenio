<?php

session_start();
require_once '../../admin/entities/BD.class.php';
$respuesta = array();
$estado = "";
$mensaje = "";
$campos = array();
$header = array();
$parametros = array();
$sql = "SELECT id_producto,pr_cantidad,pr_detalle,pr_esvigente,pr_fecha,pr_imgruta,pr_imgrutaoriginal,pr_precio,pr_usuario,productos.id_categoria,ca_categoria from productos inner join categorias on categorias.id_categoria = productos.id_categoria and ca_esvigente = 1";

if ($_REQUEST["accion"]) {
  $accion = $_REQUEST["accion"];
} else {
  $accion = "";
}

if ($accion == "listar") {

  try {
    $bd = new BD();
    $res = $bd->select($sql, $parametros);
   
    $cant = 1;
    while ($rs = $res->fetch()) {
      $estado = "ok";
   
      $campos[] = array(

            "id_producto" => $rs["id_producto"],
            "cantidad" => $rs["pr_cantidad"],
            "fecha" => $rs["pr_fecha"],
            "imagen" => $rs["pr_imgruta"],
            "imagenOriginal" => $rs["pr_imgrutaoriginal"],
            "precio" => $rs["pr_precio"],
            "usuario" => $rs["pr_usuario"],
            "id_categoria" => $rs["id_categoria"],
            "categoria" => $rs["ca_categoria"],
            "detalle" => $rs["pr_detalle"]
            
      );
      $cant = $cant + 1;
    }

  }
  catch (Exception $e) {
    $estado = "error";
    $mensaje = $e->getMensaje();
  }
  $respuesta[] = array("estado" => $estado, "mensaje" => $mensaje, "campos" => $campos,"res",$res,"cantidad",$cant);
}

$display_erros;
header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); // Fecha en el pasado
header("Content-type: application/json");
$respuesta = json_encode($respuesta);
echo $respuesta;
