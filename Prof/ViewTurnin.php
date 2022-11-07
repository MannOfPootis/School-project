<?php
$dir = "../uploads/";
$un = $_SESSION["username"];
$allAssSQLI=$conn->query("SELECT distinct ASSIGNMENT.* FROM ASSIGNMENT INNER join user on(assignment.teacher = user.id) WHERE user.username = '$un'");
while($allAss=$allAssSQLI->fetch_assoc())
{
    $title=$allAss["title"];
    $id = $allAss["ID"];
    $tempDir=$dir.$title."turnin";
    if(isset($_POST["remove$id"]))
    {
        unlink("../uploads/$title");
        echo"../uploads/$title";
        //unlink("../uploads/$title"."turnin");
        if($conn->query("DELETE FROM ASSIGNMENT WHERE ID = $id")){}else{
            echo "Error: " . "DELETE FROM ASSIGNMENT WHERE ID = $id" . "<br>" . $conn->error;
        }
    }else{
    echo"<h1>$title</h1> <br><ul>";
    echo "<form method ='post' ><input name = 'remove$id' type='submit' value ='remove'></form>";}
    
 
    if (is_dir($tempDir))
    {
        if ($dh = opendir($tempDir)){
            while (($file = readdir($dh)) !== false)
            {
                echo "<li>filename:<a href ='http://localhost/school-project/uploads/$title"."turnin"."/$file' download>" . $file . "<a><br></li>";
            }
        closedir($dh);
        }
    }
    echo "</ul>";

}
// Open a directory, and read its contents

?>