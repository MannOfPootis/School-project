<form method = "post">
<table>
<tr><td>  </td><td>pon</td><td>tor</td><td>sre</td><td>čet</td><td>pet</td></tr>
<?php
//include "ProfConfig.php";
$abtClass= $conn->query("select * from class where homeroom = '$profId'");
$row = $abtClass->fetch_assoc();
$classname =$row["name"];
$classID=$row["id"];
echo"$classname $classID DUK ";



if(
    isset($_POST["1,1,13"])||true
){
    $endArray;
    foreach($_POST as $val ){
        $thingArray=explode(",", $val,3);
        $thot=$thingArray['0'];
        echo "$val";
    }
    for ($hour = 0; $hour <= 8; $hour++)
    {
        for($day=0; $day <= 5;$day++ )
        {
            if(isset($_POST["$day,$hour,subject"])&&isset($_POST["$day,$hour,teach"]))
            {
                //$classname
                $teacher=$_POST["$day,$hour,teach"];
                $subject=$_POST["$day,$hour,subject"];
                $conn->query("DELETE FROM SCHEDULE WHERE class='$classID' and teacher='$teacher' and hour ='$hour' and day ='$day'");
                $sql="DELETE FROM SCHEDULE WHERE class='$classID' and teacher='$teacher' and hour ='$hour' and day ='$day'";
                if ($conn->query($sql))
                {
                    echo "<h1 style ='color: green;'>New record created successfully</h1>";
                } else 
                {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                }
                
                $conn->query("INSERT INTO schedule(class,teacher,subject,hour,day) values('$classID','$teacher','$subject','$hour','$day')");
            }

        }
    }
    //echo "$thot";

}

for ($hour = 0; $hour <= 8; $hour++){
    echo"<tr>";
        for($day=0; $day <= 5;$day++ )
        {

            if($day>0){
            echo"<td><select name = '$day,$hour,subject'>";
            $subjects= $conn->query("select * from subjects");
            while ($subArray=$subjects->fetch_assoc())
            {
                $subid=$subArray["ID"];
                $subName=$subArray["name"]." ".$subArray["surname"];
                echo"<option value ='$subid'> $subName </option>";
                
            }
            //echo"<option value ='$subid' >sdad</option>";//add this once im back on my pc
            echo"</select>";
            
            
            
            echo"<select name='$day,$hour,teach' >";
            $teachers = $conn->query("select * from user where permission = 2");
            while ($teachArray=$teachers->fetch_assoc())
            {
                $teachid=$teachArray["ID"];
                $teachName=$teachArray["name"]." ".$teachArray["surname"];
                echo"<option value ='$teachid'> $teachName </option>";
                
            }
            //add this too
            echo" </select></td>";

            }
            else {
                echo"<td>$hour</td>";
            }
        }

    echo"</tr>";
}

?>

</table>
</form>