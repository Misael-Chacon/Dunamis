<?php
/* Credenciales de la base de datos Asumiendo que está ejecutando MySQL
servidor con configuración predeterminada (usuario 'root' sin contraseña) */

define('DB_SERVER', 'localhost:3306');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'Misael_0801198109176');
define('DB_NAME', 'Dunamis');
 
/* Intentar conectarse a la base de datos MySQL */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
$acentos = $link->query("SET NAMES 'utf8'");

// Verifica la conexión
//die — Equivalente a exit
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>