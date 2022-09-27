<form>
<table>
<tr><td>  </td><td>pon</td><td>tor</td><td>sre</td><td>čet</td><td>pet</td></tr>
<?php

for ($hour = 0; $hour <= 8; $hour++){
    echo"<tr>sds";
        for($day=0; $day <= 5;$day++ )
        {

            if($day>0){
            echo"<td><select name = 'subject'>";
            echo"<option value ='$day,$hour,subjectid' >sdad</option>";
            echo"</select>";
            
            
            
            echo"<select name='teach' >";
            echo"<option value ='$day,$hour,teachtid'> sdsd </option>";
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