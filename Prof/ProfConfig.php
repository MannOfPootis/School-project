<?php
//adnin gas special
/*
username: "Prof"
password "RnvsX6q8AhwN_E!q"


*/
//session_start();
include "../config.php";
/*
$sesionUsername=$_SESSION["username"];
$both= $conn->query("SELECT username, password from USER where permission = 3 AND username = '$sesionUsername'");
while ($row = $both->fetch_assoc() )
{
  unset($conn);
  if($row["username"]==$sesionUsername&&password_verify($_SESSION["password"] ,$row["password"]))
  {
    $servername = "localhost";
    $username = "Prof";//ime računa
    $password = "RnvsX6q8AhwN_E!q";// geslo
    $conn = new mysqli($servername, $username, $password,"šola");
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
      header("location:localhost/School-Project/logout.php");
    }
    
    //break;
  }
 
}*/


/*if(sqli_takefirst("")){

}*/




?>