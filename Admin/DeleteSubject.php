<form method="post" action = "">
    sade
<select name = "class">
    <option></option>
<?php
$teachers=$conn->query("SELECT * from subjects ");
while ($teachArray=$teachers->fetch_assoc()){
    $teachName=$teachArray["name"];
    //$teachSurname=$teachArray["surnam"];
    $teachUsername=$teachArray["ID"];
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
    $conn->query("DELETE FROM subjects where ID = $clid");

} 
include "EditSubject.php"
?>
