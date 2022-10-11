
	<!DOCTYPE html>
	<?php 
		include "../config.php";
		include "../Methods.php";
	
	 ?>
	<html>

	<head>
	<link href='theme_1.css' rel='stylesheet'>


	<script src="/javashit.js">
    

	</script>
 		
	</head>

	<body>

       
		

		<div class ='nav'>
			<a class="title" >  EviLWeeb  </a><br>

			<?php
			
			if(isset($_SESISON["username"]))
			{
				$uN=$_SESISON["username"];
				$status =sqli_takefirst($conn->query("SELECT PERMISSION FROM USER WHERE USERNAME='$uN'"));
				unset($uN);
				echo"<a class='avi' href='".$status."MainPage.php'>Home</a> ";
			}?>
			<a class='avi' href='MainPage.php'>Home</a> 			
			| <a class="avi" href="login.php">Log in</a>
			| <a class="avi" href="Logout.php">Log out</a> 
			| <a class="avi" href="Register.php">Register</a>
			
			<hr class="main">
		
	</div>
	<center>
		