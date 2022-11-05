<form>I wish to gain acsses to:
<select name ="subject">
    <?php
    $subsSQLI=$conn->query("select * from subjects")
    while ($subs $subsSQLI->fetch_assoc() ){
        $name = $subs["name"];
        $id = $subs["id"];
        echo "<option value ='$id'>$name</option>";

    }
    
    
    ?>
    <option></option>
</select>
<input type="submit">
</form>
<?php
if(isset($_POST["subject"]))
{
    $sub=$_POST["subject"];
    $conn->query("INSERT INTO SCHEDULE VALUES(CLASS TEACHER SUBJECT HOUR DAY) VALUES()")
}

?>