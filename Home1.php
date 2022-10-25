<?php include "Header.php";

 	

  ?>
<link href='theme_1.css' rel='stylesheet'>

<div class="main_box">

	<div class="home">
	
			<div class="home_left"> 
			<form action="functions.php" method="POST">
 			<div style="border-bottom-style: solid;"> This is you :    </div>
 			<?php
			$u = $_SESSION["username"]; 
			echo "$u";
			$userSQLI=$conn->query("SELECT * FROM USER  WHERE USER.NAME ='$u'");
			if($userArray =$userSQLI->fetch_assoc()){
				echo "K";
				$name=sqli_takefirst($conn->query("SELECT NAME FROM USER WHERE USERNAME = '$u'"));
				$surname=$userArray["surname"];
				$class=sqli_takefirst($conn->query("SELECT class.name FROM USER inner join atends on(atends.user = user.id) inner join class on(atends.ID_class = class.id) WHERE USERNAME = '$u'"));
				$classid=$userArray["id"];

			}

            echo"<div class='info'>    Name: $name   </div>";
            echo"<div class='info'>    Surname: $surname    </div>";
            echo"<div class='info'>    Class: $class   </div>";
            echo"<div class='info'>    ... : $classid   </div>";
            ?>
 			
			</form>


			</div>






		

 			<div class="home_right">

			<form action="functions.php" method="POST">
 			<div style="border-bottom-style: solid;"> YOUR TIMETABLE </div>
            <div class="info" style="text-align: center; width: 500px; height: 400px;">      
			<table>
				<tr><td>  </td><td>pon</td><td>tor</td><td>sre</td><td>čet</td><td>pet</td></tr>
			<?php
				for ($hour = 0; $hour <= 8; $hour++){
					echo"<tr>";
						for($day=0; $day <= 5;$day++ )
						{
				
							if($day>0){
							echo"<td><p id = '$day,$hour,subject'>h</p>";
							
				
							}
							else {
								echo"<td>$hour</td>";
							}
						}
				
					echo"</tr>";
				}
					$scheduleSqli=$conn->query("SELECT * FROM SCHEDULE WHERE CLASS ='$classid'");
					while($scheduleArray = $scheduleSqli->fetch_assoc())
					{
						$hour=$scheduleArray["HOUR"];
						$day = $scheduleArray["DAY"];
						$subject = $scheduleArray["SUBJECT"];
						$teacher = $scheduleArray["DAY"];
						/*$class = $scheduleArray["DAY"];*/
						echo"<script> document.getElementById('$day,$hour,subject').innerHTML='dasde';</script>";
						//$schedule array
					}
				?>	
				</table>
              

            </div>
			<script> document.getElementById('2,2,subject').innerHTML='dasde';</script>
			</form>

				</div>
			</div>


</div>





<?php include "footer.php"  ?>