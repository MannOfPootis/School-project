<?php

//there are lvl of permiusion ya cant have a nobody acssees student lvl permission
//ya cant have a student accses grades so on and so on so I will have differenmt database accouts for lvl of permission
/* 
Perm 0:
no account no nuthin
username : "noone"
password: "a/[kvpL_D[poo4J*"
dovoljen mu je samo select nič drugega kot select in insert


*/ 
$servername = "localhost";
$username = "noone";//ime računa
$password = "a/[kvpL_D[poo4J*";// geslo

$conn = new mysqli($servername, $username, $password,"šola");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>