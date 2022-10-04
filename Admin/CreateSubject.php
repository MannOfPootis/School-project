<form method="post" action="">


add subject
name <input type ="text" name ="subject">
<input type="submit">
</form>
<?php
include "AdminConfig.php";
if( isset($_POST["subject"])){
    $SUS=$_POST["subject"];
    $sql="INSERT INTO subjects(name) values('$SUS')";
    if ($conn->query($sql))
                {
                    echo "<h1 style ='color: green;'>New record created successfully</h1>";
                  } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                  }
                }
                $conn->close();



?>