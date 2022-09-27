<html>
<style>
table, th, td {
  border:1px solid black;
}
</style>
<body>
<?php
include "ProfConfig.php";
//include "../Methods.php";
?>
you are the homeroom teacher of <?php

$profId =  sqli_takefirst($conn->query("SELECT ID FROM user WHERE username = '$sesionUsername'"));
$abtClass= $conn->query("select * from class where homeroom = '$profId'");
$row = $abtClass->fetch_assoc();
$classname =$row["name"];
echo"$classname";
include "MakeSchedule.php";
?>
<form method ="post" action="">


<input type ="file" name= "schedule">

	<form action="" method="post">
  <div class="drop">
    <span class="drop-zone__prompt">Drop file here or click to upload</span>
    <input type="file" name="myFile" class="drop_input">
  </div>
  <script src="drop.js"></script>

  <button type="submit" id="submit" name="submit" value="submit" default>Upload</button>
</form>
<?php?>
</body>
</html>
