
<?php
include "header.php";
?><form method ='post'>
    
<?php
$un=$_SESSION["username"];

if(isset($_POST["username"])&&isset($_POST["name"])&&isset($_POST["surname"]))
{
    $username = $_POST["username"];
    $name =$_POST["name"];
    $surname= $_POST["surname"];
    $id = sqli_takefirst($conn->query("select id from user where username = '$un'"));
    
    if($conn->query("update user set username = '$username',name ='$name',surname ='$surname' WHERE id=$id")){
        $_SESSION["username"] = $username;

    }
    else {
        echo "Error: " . $_GET["SQL"] . "<br>" . $conn->error;
    }
}
$un=$_SESSION["username"];
$accSQLI = $conn->query("select * from user where username = '$un'");
while($acc=$accSQLI->fetch_assoc())
{
    $id= $acc["ID"];
    $username = $acc["username"];
    $name =$acc["name"];
    $surname= $acc["surname"];
    echo"username: <input type ='text' name ='username' value ='$username'>";
    echo"name: <input type ='text' name ='name' value ='$name'>";
    echo"surname: <input type ='text' name ='surname' value= '$surname'> <input type ='submit'>";

   
}


?>
</form><?php

include "footer.php";
?>
