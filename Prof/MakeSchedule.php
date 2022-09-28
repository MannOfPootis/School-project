<form>
<table>
<tr><td>  </td><td>pon</td><td>tor</td><td>sre</td><td>čet</td><td>pet</td></tr>
<?php
if(
    isset($_POST["1,1,13"])||true
){
    $endArray;
    foreach($_POST as $val ){
        $thingArray=explode(",", $val,3);
        $thot=$thingArray['0'];
        echo "$thot";
    }
    echo "$thot";

}

for ($hour = 0; $hour <= 8; $hour++){
    echo"<tr>sds";
        for($day=0; $day <= 5;$day++ )
        {

            if($day>0){
            echo"<td><select name = '$day,$hour,subject'>";
            echo"<option value ='$subjectid' >sdad</option>";//add this once im back on my pc
            echo"</select>";
            
            
            
            echo"<select name='$day,$hour,teach' >";
            $teachers = $conn->query("select * from user where permission = 2");
            while ($teachArray=$teachers->fetch_assoc())
            {
                $teachid=$teachArray["ID"];
                $teachName=$teachArray["name"]." ".$teachArray["surname"];
                echo"<option value ='$teachtid'> $teachName </option>";
                
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
<input type ="submit">
</table>
</form>