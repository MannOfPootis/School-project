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
GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO `noone`@`localhost` IDENTIFIED BY PASSWORD '*4DB1290B76247B8C494B87A5D94DB9F9A4B75259';