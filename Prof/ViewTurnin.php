<?php
$dir = "../uploads/";
$un = $_SESSION["username"];
$allAssSQLI=$conn->query("SELECT distinct * FROM ASSIGNMENT INNER join user on(assignment.teacher = user.id) WHERE user.username = '$un'");
while($allAss=$allAssSQLI->fetch_assoc())
{
    $title=$allAss["title"];
    $tempDir=$dir.$title."turnin";
    echo"$title";
    if (is_dir($tempDir))
    {
        if ($dh = opendir($tempDir)){
            while (($file = readdir($dh)) !== false)
            {
                echo "filename:<a href ='http://localhost/school-project/uploads/$title"."turnin"."/$file' download>" . $file . "<a><br>";
            }
        closedir($dh);
        }
    }

}
// Open a directory, and read its contents

?>