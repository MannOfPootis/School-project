your classes:
<?php
$UN = $_SESSION["username"];
$idClass = sqli_takefirst($conn->query("SELECT ID_class FROM ATENDS INNER JOIN USER on(atends.user=user.ID) where user.username ='$UN'"));

$classesSQLI = $conn->query("select distinct subjects.name as subjectname,subjects.id as gigachad
    from subjects inner join extra_subjects on (extra_subjects.ID_sub=subjects.id)
    inner join user on (user.id=extra_subjects.ID_user)
    inner join schedule on ((subjects.id = schedule.subject ) or   extra_subjects.ID_sub=subjects.id)
    
    
    where user.username = '$UN'");
                             
unset($UN);
while ($classes = $classesSQLI->fetch_assoc()){
    $lul =$classes["subjectname"];
    $gigachad= $classes["gigachad"];
    echo"<a class='preety' href='http://localhost/school-project/Home1.php?subject=$gigachad'> $lul </a>";
    //echo"$UN";
/*inner join class on (class.id = $idClass) 
 inner join atends on (atends.ID_class = class.id)
  INNER JOIN USER on(atends.user=user.ID) 
  inner join schedule on ( extra_subjects.ID_user=user.ID or subjects.id = schedule.subject)*/ 
}
?>

<br>
<hr style="background-color:#515b38;">

<?php

if(isset($_GET['subject']))
{

    $subject =  $_GET['subject'];
    if(isset($_POST["delete$subject"])){
        $username= $_SESSION["username"];
        $IDuser=sqli_takefirst($conn->query("select id from user where username = '$username'"));
        if($conn->query("delete from extra_subjects where ID_user ='$IDuser'and id_sub = '$subject'")){
            //echo "all goof";
        }else{
            echo "Error: " ."delete from extra_subjects where ID_user = $IDuser and id_sub = $subject" . "<br>" . $conn->error;
        }
    }
    //$subject =  $_GET['subject'];
    
    $materialSQLI =$conn->query("select assignment.* , user.name as teachname from assignment inner join user on (user.id = assignment.teacher) inner join subjects on (subjects.ID =assignment.subject) where subjects.ID = $subject and(assignment.class=$idClass or  assignment.class=0 ) ");
    //$subname= sqli_takefirst($conn->query("select name from subject where ID = '$subject'"));
    //echo"<form method ='post'><input type ='submit' name ='delete$subject' value = 'remove yourself fom $subname'></form>";
    
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