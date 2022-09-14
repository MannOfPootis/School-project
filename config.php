<?php
session_start();

$servername = "localhost";
$username = "noone";//ime računa
$password = "a/[kvpL_D[poo4J*";// geslo
$conn = new mysqli($servername, $username, $password,"šola");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>
