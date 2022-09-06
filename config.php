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






 $db = mysqli_connect($server_name,$DB_username,$DB_password,$database_name );

if($db === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>