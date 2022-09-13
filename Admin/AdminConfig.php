<?php
//adnin gas special
/*
username: "admin"
password "9X/hjpuw[o..bjJ."


*/
session_start();

$servername = "localhost";
$username = "admin";//ime računa
$password = "9X/hjpuw[o..bjJ.";// geslo
$conn = new mysqli($servername, $username, $password,"šola");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}



?>
