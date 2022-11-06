list of subjects you atend
<?php
$UN = $_SESSION["username"];
//$idClass = sqli_takefirst($conn->query("SELECT ID_class FROM ATENDS INNER JOIN USER on(atends.user=user.ID) where user.username ='$UN'"));

$classesSQLI = $conn->query("select distinct subjects.name as subjectname from subjects inner join schedule on (true) inner join class on (class.id = schedule.class) inner join atends on (atends.ID_class = class.id) INNER JOIN USER on(atends.user=user.ID) inner join extra_subjects on ( extra_subjects.ID_user=user.ID or subjects.id = schedule.subject)  where user.username = '$UN'");
                             
unset($UN);
while ($classes = $classesSQLI->fetch_assoc()){
    $lul =$classes["subjectname"];
    echo" $lul ";
    //echo"$UN";

}
unset($UN);
/*where atends.user = '$UN'*/
/*inner join extra_subjects on ( extra_subjects.ID_user=user.ID or subjects.id = schedule.subject)*/
/**/
/*"select distinct subjects.name as subjectname from subjects inner join schedule on (subjects.id = schedule.subject) inner join class on (class.id = schedule.class) inner join atends on (atends.ID_class = class.id) INNER JOIN USER on(atends.user=user.ID)  where user.username = '$UN'");*/
/*select* from user inner join extra_subjects on ( extra_subjects.ID_user=user.ID)*/
?>