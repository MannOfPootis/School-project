
	<!DOCTYPE html>
	<?php 
		include "config.php";
		include "Methods.php";
	
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
			//echo"$userPerm";
			//session_start();
			//$k=$_SESISON["username"];
			//echo $k;
			if( isset($userPerm))
			{
				$uN=$_SESSION["username"];
				$status =sqli_takefirst($conn->query("SELECT PERMISSION FROM USER WHERE USERNAME='$uN'"));
				
				unset($uN);
				switch($userPerm){
				case 1:
					echo "<a class='avi' href='home1.php'>Home</a> ";
					break;
				case 2:
					echo "<a class='avi' href='http://localhost/School-project/Prof/ProfUI.php'>Home</a>" ;
					break;
				case 3:
					echo "<a class='avi' href='http://localhost/School-project/Admin/AdminUI.php'>Home</a>";
					break;
				}
				;
				
			}
			else {
				echo "<a class='avi' href='http://localhost/School-project/login.php'>Home</a> ";
			}
			?>
			
						
		
			
			
			| <a class="avi" href="http://localhost/School-project/Logout.php">Log out</a> 
			| <a class="avi" href="http://localhost/School-project/Register.php">Register</a>
			|   
			<?php
			if( isset($userPerm))
			{
				$uN=$_SESSION["username"];
				$status =sqli_takefirst($conn->query("SELECT PERMISSION FROM USER WHERE USERNAME='$uN'"));
				
				unset($uN);
				switch($userPerm){
				case 1:
					echo "<a class='avi' href='home1.php'>Hello pupil</a> ";
					break;
				case 2:
					echo "<a class='avi' href='http://localhost/School-project/Prof/ProfUI.php'>Hello teacher</a>" ;
					break;
				case 3:
					echo "<a class='avi' href='http://localhost/School-project/Admin/AdminUI.php'>WElcome home GOD</a>";
					break;
				}
				;
				
			}
			else {
				echo "<a class='avi' href='http://localhost/School-project/login.php'>Log in</a>";
			}
			?>
			
			
			<hr class="main">
		
	</div>
	<center>
		