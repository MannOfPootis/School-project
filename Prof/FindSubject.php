<?php
//this file find all the subject a teacher teaches
$un=$_SESSION["username"];
$SubjectSQLI=$conn->query("SELECT SUBJECTS.NAME as joe from schedule inner join user ON(schedule.TEACHER = USER.ID) INNER JOIN SUBJECT ON ( SCHEDULE.SUBJCET = SUBJECTS.NAME) ");
while($dod=$SubjectSQLI->fetch_assoc())
{
   $d $dod["joe"];
   echo "$d";
}


?>
