<?php
include 'AdminConfig.php';


$allDif = $conn->query("SELECT * FROM user  WHERE claim != permission AND claim =3");
while ($allDifArray=mysqli_fetch_array($allDif)){
    $name=$allDifArray["name"];
    $surname= $allDifArray["surname"];
    $claim=$allDifArray['Claim'];
    echo"$name claims to be ";
    switch ($claim)
    {
        case 1:
            echo "a pupil ";
            break;
        case 2:
            echo "a proffessor ";
            break;
        case 3:
            echo "an admin ";
            break;
    }
    echo"their surname is $surname";
}
?>
<h1>you are now the admin</h1>
