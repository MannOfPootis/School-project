<form moethod ="get" action="">I wish to gain acsses to:
<select name ="subject">
    <option></option>
    <?php
    $subsSQLI=$conn->query("select * from subjects");
    while ($subs= $subsSQLI->fetch_assoc() ){
        $name = $subs["name"];
        $id = $subs["ID"];
        echo "<option value ='$id'>$name</option>";

    }
    
    
    ?>
    
</select>
<input type="submit">   
</form>
<?php
if(isset($_GET["subject"]))
{
    $UN = $_SESSION["username"];
    $idUser = sqli_takefirst($conn->query("SELECT user.ID FROM USER where user.username ='$UN'"));
    unset($UN);
    $sub=$_GET["subject"];
    $conn->query("INSERT INTO EXTRA_SUBJECTS(ID_SUB, ID_USER) VALUES('$sub','$idUser')");
    //echo"INSERT INTO EXTRA_SUBJECTS(ID_SUB, ID_USER) VALUES('$sub','$idClass')";    
    //echo"sdasd";

}

?>