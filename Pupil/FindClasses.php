your classes:
<?php
$UN = $_SESSION["username"];
$idClass = sqli_takefirst($conn->query("SELECT ID_class FROM ATENDS INNER JOIN USER on(atends.user=user.ID) where user.username ='$UN'"));

$classesSQLI = $conn->query("select distinct subjects.name as subjectname,subjects.id as gigachad from subjects inner join schedule on (true) inner join class on (class.id = schedule.class) inner join atends on (atends.ID_class = class.id) INNER JOIN USER on(atends.user=user.ID) inner join extra_subjects on ( extra_subjects.ID_user=user.ID or subjects.id = schedule.subject)  where user.username = '$UN'");
                             
unset($UN);
while ($classes = $classesSQLI->fetch_assoc()){
    $lul =$classes["subjectname"];
    $gigachad= $classes["gigachad"];
    echo"<a class='preety' href='http://localhost/school-project/Home1.php?subject=$gigachad'> $lul </a>";
    //echo"$UN";

}
?>

<br>
<hr style="background-color:#515b38;">

<?php
if(isset($_GET['subject']))
{
    $subject =  $_GET['subject'];
    $materialSQLI =$conn->query("select assignment.* , user.name as teachname from assignment inner join user on (user.id = assignment.teacher) inner join subjects on (subjects.ID =assignment.subject) where subjects.ID = $subject and(assignment.class=$idClass or  assignment.class=0 ) ");
    
    //echo" select assignment.* from assignment inner join user on (user.id = assignment.teacher) inner join subjects on (subjects.ID =assignment.subject) where subjects.ID = '$subject' ";
    //echo $subject;
    while ($material = $materialSQLI->fetch_assoc())
    {
        $title= $material["title"];
        $teacher = $material["teachname"] ;
        $due = $material["due"];//due date
        
        $idAss=$material["ID"];
        echo "
        
        $teacher assigned an assignment due by <b>$due  </b>
        
        <br> download the instructions: <a href='http://localhost/school-project/uploads/$title' download >$title</a>";
       
        //echo" Id$idAss ";
        include "turnin.php";

       echo "<hr style='background-color:#515b38;' >";
    }



}

?>