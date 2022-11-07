list of subjects you atend
<?php
$UN = $_SESSION["username"];
//$idClass = sqli_takefirst($conn->query("SELECT ID_class FROM ATENDS INNER JOIN USER on(atends.user=user.ID) where user.username ='$UN'"));

$classesSQLI = $conn->query("select distinct subjects.name as subjectname,subjects.id as gigachad from subjects inner join schedule on (true) inner join class on (class.id = schedule.class) inner join atends on (atends.ID_class = class.id) INNER JOIN USER on(atends.user=user.ID) inner join extra_subjects on ( extra_subjects.ID_user=user.ID or subjects.id = schedule.subject)  where user.username = '$UN'");
                             
unset($UN);
while ($classes = $classesSQLI->fetch_assoc()){
    $lul =$classes["subjectname"];
    $gigachad= $classes["gigachad"];
    echo"<a href='http://localhost/school-project/Home1.php?subject=$gigachad'> $lul </a>";
    //echo"$UN";

}
if(isset($_GET['subject']))
{
    $subject =  $_GET['subject'];
    $materialSQLI =$conn->query("select assignment.* from assignment inner join user on (user.id = assignment.teacher) inner join subjects on (subjects.ID =assignment.subject) where subjects.ID = $subject ");
    //echo" select assignment.* from assignment inner join user on (user.id = assignment.teacher) inner join subjects on (subjects.ID =assignment.subject) where subjects.ID = '$subject' ";
    echo $subject;
    while ($material = $materialSQLI.fetch_assoc())
    {
        
    }



}

?>