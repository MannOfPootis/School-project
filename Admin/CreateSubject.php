<form method="post" action="">


add subject
name <input type ="text" name ="subject">
<input type="submit">
</form>
<?php
if( isset($_POST["subject"])){
    $SUS=$_POST["subject"];
    $conn->query("INSERT INTO subject(name) values('$SUS')");
}


?>