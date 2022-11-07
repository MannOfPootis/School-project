
    sade

<?php
$teachers=$conn->query("SELECT * from class");
while ($teachArray=$teachers->fetch_assoc()){
    $teachName=$teachArray["name"];
    $homeroom=$teachArray["homeroom"];
    //$teachSurname=$teachArray["surnam"];
    $id=$teachArray["id"];
   echo"<form method='post' > <input type ='text' name='id' value='$id' > <input type ='text' name='homeroom' value='$homeroom' > <input type ='text' name='name' value='$teachName' > <input type= 'submit' name = 'edit' value = 'edit'> </form>";
} 



?>

<input type="text" name = "NAME">



<?php 

if (isset($_POST["edit"]))
{
    $clid= $_POST["id"];
    $homeroom = $_POST["homeroom"];
    $name =$_POST["name"];
    if($conn->query("UPDATE class set name = '$name', homeroom =$homeroom where id = $clid")){

    }
    
    else 
    {
        echo "Error: " . $_GET["SQL"] . "<br>" . $conn->error;
    }
    

} 
?>