<?php
session_start();
if (!isset($_SESSION['qnum'])) {
    $_SESSION['qnum']=1;   
}



 $_SESSION['login_user']="";
$server_name = "localhost";
$database_name="database";
$DB_username="GOD";
$DB_password="GODSPASS";
$_SESSION['comms'] ="...";
$_SESSION['current_table_thingy']=false;
if ($_SESSION['current_table_thingy']==true) {
$_SESSION['current_table']="";    
 }  




//there are lvl of permiusion ya cant have a nobody acssees student lvl permission
//ya cant have a student accses grades so on and so on so I will have differenmt database accouts for lvl of permission
/* 
Perm 0:
no account no nuthin
username : "noone"
password: "a/[kvpL_D[poo4J*"
dovoljen mu je samo select nič drugega kot select in insert


 $db = mysqli_connect($server_name,$DB_username,$DB_password,$database_name );

if($db === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>