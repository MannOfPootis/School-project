<?php
//adnin gas special
/*
username: "admin"
password "9X/hjpuw[o..bjJ."


*/
//session_start();
include "../Methods.php";
include "../Config.php";

$sesionUsername=$_SESSION["username"];
$both= $conn->query("SELECT username, password from USER where permission = 3 AND username = '$sesionUsername'");
while ($row = $both->fetch_assoc() )
{
  if($row["username"]==$sesionUsername&&password_verify($_SESSION["password"] ,$row["password"]))
  {
    $servername = "localhost";
    $username = "admin";//ime računa
    $password = "9X/hjpuw[o..bjJ.";// geslo
    $conn = new mysqli($servername, $username, $password,"šola");
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
      header("location:localhost/School-Project/logout.php");
    }
    else{

    }

    //break;
  }

}
*/

/*if(sqli_takefirst("")){

}*/




?>
