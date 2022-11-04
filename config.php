<?php
$k= session_status();
if ($k == 1) 
{
  session_start();
}

//megaconfig

$userPerm;
$servername = "localhost";
$username = "noone";//ime računa
$password = "a/[kvpL_D[poo4J*";// geslo
$conn = new mysqli($servername, $username, $password,"šola");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


//this is da wonky zone
if(isset($_SESSION["username"])&&isset($_SESSION["password"]))
{
  $u=$_SESSION["username"];
  $userSqli= $conn->query("SELECT * FROM user where username = '$u'");
  unset($u);
  while($user= $userSqli->fetch_assoc())
  {

    if(password_verify($_SESSION["password"],$user["password"]))
    {
      
      $userPerm=$user["permission"];
      //echo"$userPerm";
      switch($userPerm)
      {
      case 1:
      {
        
      }
      case 2:
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
          
          break;
        }
      case 3:
        {

          {
            $servername = "localhost";
            $username = "admin";//ime računa
            $password = "9X/hjpuw[o..bjJ.";// geslo
            $conn = new mysqli($servername, $username, $password,"šola");
            if ($conn->connect_error)
            {
              die("Connection failed: " . $conn->connect_error);
              header("location:localhost/School-Project/logout.php");
            }
          }
        }
      }
    }
  }
}

?>
