<form method="post" action = "">
    sade
<select name = "class">
    <option></option>
<?php
$teachers=$conn->query("SELECT * from class ");
while ($teachArray=$teachers->fetch_assoc()){
    $teachName=$teachArray["name"];
    //$teachSurname=$teachArray["surnam"];
    $teachUsername=$teachArray["id"];
   echo" <option value='$teachUsername' >$teachName</option>";
} 


?>
</select>
<input type= "submit" name = "delete" value = "delete">

</form>
<?php 
if (isset($_POST["delete"]))
{
    $clid= $_POST["class"];
    $conn->query("DELETE FROM class where ID = $clid");

} 
?>
