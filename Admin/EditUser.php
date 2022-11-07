
    sade

<?php
$teachers=$conn->query("SELECT * from user");
while ($teachArray=$teachers->fetch_assoc()){
    $username= $teachArray["username"];
    $teachName=$teachArray["name"];
    $surname= $teachArray["surname"];
    //$teachSurname=$teachArray["surnam"];
    $id=$teachArray["id"];
   echo"<form method='post' > <input type ='text' name='id' value='$id' ><> <input type ='text' name='username' value='$username' > <input type ='text' name='name' value='$teachName' > <input type ='text' name='surname' value='$surname' >  <input type= 'submit' name = 'edit' value = 'edit'> </form>";
} 



?>

<input type="text" name = "NAME">



<?php 

if (isset($_POST["edit"]))
{
    $clid= $_POST["id"];
    $name =$_POST["name"];
    $username =$_POST["username"];
    $surname =$_POST['surname']
    if($conn->query("UPDATE user set username = '$username' , name = '$name', surname = '$surname' where id = $clid")){

    }
    
    else 
    {
        echo "Error: " . $_GET["SQL"] . "<br>" . $conn->error;
    }
    

} 
?>