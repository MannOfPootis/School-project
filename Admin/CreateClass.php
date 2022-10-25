<link href='../theme_1.css' rel='stylesheet'>

<?php
include "../Header.php";
include "AdminConfig.php";?>
<?php

if(
    isset($_POST["className"])&&
    isset($_POST["homeroom"])
){
    echo ''.$_POST["className"].'';
    $homeroomUsername=$_POST["homeroom"];
    $className=$_POST["className"];
    $homeroomID=sqli_takefirst( $conn->query("select ID from user where username = '$homeroomUsername'"));
    echo"$homeroomUsername";
    echo"$homeroomID";
    $conn->query("insert into class(homeroom,schedule, name) values($homeroomID,0,'$className')");
}

?>
<form action="" method ="post" >
    cerate a class 
    <input type ="text" name ="className">
    <select name="homeroom">

<?php
//include "AdminConfig.php";

$teachers=$conn->query("SELECT username, name, surname from user  where permission =2 ");
while ($teachArray=$teachers->fetch_assoc()){
    $teachName=$teachArray["name"];
    $teachSurname=$teachArray["surname"];
    $teachUsername=$teachArray["username"];
   echo" <option value='$teachUsername' >$teachName $teachSurname </option>";
}


/*if(isset()){

}*/



?>
</select>
<input type="submit">
</form>
