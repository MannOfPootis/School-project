<link href='../theme_1.css' rel='stylesheet'>

<?php
include "../Header.php";
include "AdminConfig.php";?>
<?php

if(
    isset($_POST["className"])&&
    isset($_POST["homeroom"])
){
    echo '<div>'.$_POST["className"].'';
    $homeroomUsername=$_POST["homeroom"];
    $className=$_POST["className"];
    $homeroomID=sqli_takefirst( $conn->query("select ID from user where username = '$homeroomUsername'"));
    echo"$homeroomUsername";
    echo"$homeroomID";
    if($conn->query("select * from subjects where name = '$className'")->num_rows>0)
                {
                    echo "<h1 style ='color: red;'>Username already taken</h1>";
                    
                }
                $conn->query("insert into class(homeroom, name) values($homeroomID,'$className')");
    
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


if(isset($lul))
{

}



?>
</select>
<input type="submit">
</form>
<?php
include "DeleteClass.php";
include "../footer.php"
?>
