
    sade

<?php
$teachers=$conn->query("SELECT * from subjects ");
while ($teachArray=$teachers->fetch_assoc()){
    $teachName=$teachArray["name"];
    //$teachSurname=$teachArray["surnam"];
    $teachUsername=$teachArray["ID"];
   echo"<form method='post' > <input type ='text' name='id' value='$teachUsername' ><input type ='text' name='name' value='$teachName' > <input type= 'submit' name = 'edit' value = 'edit'> </form>";
} 



?>

<input type="text" name = "NAME">



<?php 

if (isset($_POST["edit"]))
{
    $clid= $_POST["id"];
    $name =$_POST["name"];
    if($conn->query("UPDATE subjects set name = '$name' where id = $clid")){

    }
    
    else 
    {
        echo "Error: " . $_GET["SQL"] . "<br>" . $conn->error;
    }
    

} 
?>