<?php
$dir = "../uploads/";
$un = $_SESSION["username"];
$allAssSQLI=$conn->query("SELECT * FROM ASSIGNMENT INNER join user on(assignment.teacher = user.id) WHERE user.username = '$un'");
while($allAss=$allAssSQLI->fetch_assoc())
{
    $title=$allAss["title"];
    $tempDir=$dir.$title."turnin";
    echo"$tempDir";
    if (is_dir($tempDir))
    {
        if ($dh = opendir($dir)){
            while (($file = readdir($dh)) !== false){
                echo "filename:" . $file . "<br>";
            }
        closedir($dh);
        }
    }

}
// Open a directory, and read its contents

?>